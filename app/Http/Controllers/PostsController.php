<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $posts = Post::all();
        return view('posts.index', compact('posts'));
    }
    public function dashboard()

    {
        $posts = Post::where('user_id', auth()->user()->id)->paginate(5);
        return view('posts.dash', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('posts.create');
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'description' => 'required',
            'user_id' => 'required|exists:users,id',

        ]);



        Post::create($validatedData);

        return redirect('/dashboard')->with('success', 'Post is successfully added');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {

        $post = Post::findOrFail($id);
        if (auth()->user()->id !== $post->user_id) {
            return redirect('/dashboard')->with('error', 'You are not authorized to see this post');
        }
        $post = Post::findOrFail($id);
        return view('posts.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = Post::findOrFail($id);
        if (auth()->user()->id !== $post->user_id) {
            return redirect('/dashboard')->with('error', 'You are not authorized to update this post');
        }
        return view('posts.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $post = Post::findOrFail($id);
        if (auth()->user()->id !== $post->user_id) {
            return redirect('/dashboard')->with('error', 'You are not authorized to update this post');
        }
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'description' => 'required',

        ]);


        Post::whereId($id)->update($validatedData);

        return redirect('/dashboard')->with('success', 'Post is successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //only posts owner can delete their own posts
        $post = Post::findOrFail($id);
        if (auth()->user()->id !== $post->user_id) {
            return redirect('/dashboard')->with('error', 'You are not authorized to delete this post');
        }
        $post->delete();

        return redirect('/dashboard')->with('success', 'Post is successfully deleted');
    }

    public function like(string $id)
    {
        $post = Post::findOrFail($id);
        $user = auth()->user();


        if ($user->likedPosts()->where('post_id', $post->id)->exists()) {
            return redirect('/posts')->with('error', 'You have already liked this post');
        }

        // If the user hasn't liked the post yet, record the like
        $user->likedPosts()->attach($post);

        // Update the post's like count
        $post->likes++;
        $post->save();

        return redirect('/posts')->with('success', 'Post is successfully liked');
    }
}
