@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('success'))
                    <div class="alert alert-success" role="alert">
                        {{ session('success') }}
                    </div>
                    @endif

                    @if (session('error'))
                    <div class="alert alert-danger" role="alert">
                        {{ session('error') }}

                    </div>
                    @endif






                    @if($posts->isEmpty())
                    <div>
                        No posts yet
                    </div>

                    @else

                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Title</th>
                                <th scope="col">Description</th>
                                <th scope="col">Likes</th>
                                <th scope="col">Admin</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($posts as $post)
                            <tr>
                                <th scope="row">{{$post->id}} </th>
                                <td>{{$post->title}}</td>
                                <td>
                                    @if(strlen($post->description)>100)
                                    {{substr($post->description,0,100)}}...
                                    @else
                                    {{$post->description}}
                                    @endif

                                </td>
                                <td>{{$post->likes}}</td>
                                <td>{{$post->user->name}}</td>
                                <td style="display: flex; justify-content:space-between">
                                    <form action="{{Route('posts.destroy',$post->id)}}" method="POST">
                                        @method('delete')
                                        @csrf
                                        <input type="submit" value="delete" />

                                    </form>


                                    <a href="{{Route('posts.show',$post->id)}}">Details</a>
                                    <a href="{{Route('posts.edit',$post->id)}}">Update</a>

                                </td>
                            </tr>
                            @endforeach


                        </tbody>

                    </table>


                    <div>
                        {{ $posts->links()}}

                    </div>

                    @endif
                </div>
            </div>
        </div>
    </div>
</div>


@endsection