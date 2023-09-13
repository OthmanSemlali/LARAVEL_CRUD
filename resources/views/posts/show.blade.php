@extends('layouts.app')

@section('content')
<div class="container">

    <h2>Post Details</h2>

    <div>
        <h3>Title: {{ $post->title }}</h3>
        <p>Description: {{ $post->description }}</p>
        <p>Likes: {{ $post->likes }}</p>
        <p>Owner: {{ $post->user->name }}</p>
    </div>
</div>
@endsection