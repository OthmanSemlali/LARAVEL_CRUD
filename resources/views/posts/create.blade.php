@extends('layouts.app')

@section('content')

<div class="container">
<h2>Add Post</h2>
<!-- @if ($errors->any())
<div style="background-color: brown;color:white">
    <strong>Error!</strong>
    <ul >
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif -->
@if (session('success'))
<div>
    {{ session('success') }}
</div>
@endif

<form action="{{ route('posts.store') }}" method="POST">
    @csrf

    <input type="hidden" name="user_id" value="{{ Auth::user()->id }}" />
    <label for="title">Title</label>
    <input class="form-control" type="text" name="title" id="title" value="{{ old('title') }}" />
    @error('title')
    <div style="color:red">
        {{ $message }}
    </div>
    @enderror
    <br />
    <br />


    <label for="description">Description</label>
    <textarea class="form-control" name="description" id="description">{{ old('description') }}</textarea>
    @error('description')
    <div style="color:red">
        {{ $message }}
    </div>
    @enderror

    <br />
    <br />


    <input type="submit" value="Add Post" />

</form>
</div>
@endsection