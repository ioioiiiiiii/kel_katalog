@include('navbar')

<div class="mt-5 ml-5 col-5 m-auto">
    <form action="/user/{{$user->id}}" method="POST" >
        @method('PUT')
        @csrf
        <div class="mb-3">
            <label for="name">name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{$user->name}}" required>
        </div>
        <div class="mb-3">
            <label for="email">email</label>
            <input type="text" class="form-control" id="email" name="email" value="{{$user->email}}" required>
        </div>
        <div class="mb-3">
            <label for="password">password</label>
            <input type="text" class="form-control" id="password" name="password" value="{{$user->password}}" required>
        </div>
        
        
        
        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>