@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <h2>Posts</h2>

            @if($posts->isEmpty())
            <div>
                No posts yet
            </div>
            @endif

            @if (session('success'))
            <div style="background-color: green;color:white; margin-bottom:5px ">
                {{ session('success') }}
            </div>
            @endif

            @if (session('error'))
            <div style="background-color: red;color:white; margin-bottom:5px">
                {{ session('error') }}
            </div>

            @endif



            @foreach($posts as $post)
            <div class="card">
                <div class="card-header">{{ $post->title }}
                    <span style="font-weight: bold;">@ {{ $post->user->name }}</span>
                </div>
                <div class="card-body">
                    {{ $post->description }}

                    <div style="display: flex; justify-content:space-between; margin-top:10px">
                    <form action="{{Route('posts.like',$post->id)}}" method="POST">
                        @method('put')
                        @csrf
                        <input type="submit" value="like" />

                    </form>

                    <span>Likes: {{ $post->likes }}</span>
                    </div>

                   
                
                  
                </div>




            </div>
            <br>
            @endforeach
        </div>
    </div>
    @endsection