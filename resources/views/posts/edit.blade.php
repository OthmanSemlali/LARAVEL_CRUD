@extends('layouts.app')

@section('content')


<div class="container">

<h1>Update Post</h1>
@if (session('success'))
<div>
    {{ session('success') }}
</div>
@endif

<form action="{{ route('posts.update',$post->id) }}" method="POST">
    @method('put')
    @csrf
    <input type="hidden" name="user_id" value="{{ Auth::user()->id }}" />
    <label for="title">Title</label>
    <input class="form-control" type="text" name="title" id="title" value="{{ $post->title }}" />
    @error('title')
    <div style="color:red">
        {{ $message }}
    </div>
    @enderror
    <br />
    <label for="description">Description</label>
    <textarea class="form-control" name="description" id="description">{{ $post->description }}</textarea>
    @error('description')
    <div style="color:red">
        {{ $message }}
    </div>
    @enderror
    <br />
    <input type="submit" value="Update Post" />
</form>

</div>
@endsection