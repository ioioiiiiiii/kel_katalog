@include('navbar')


<div class="my-3">
    <a href="user-add" class= "btn btn-dark ml-5"> Add User</a>
</div>

@if(Session::has('status'))
    <div class="alert alert-success" role="alert">
        {{Session::get('message')}}
    </div>
@endif

        <table class="table">
        
            <thead>
                <tr>
                    <th>id</th>
                    <th>email</th>
                    <th>password</th>
                    <th>action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($user as $index => $user)
                <tr>
                    <td>{{ $user -> id }}</td>
                    <td>{{ $user -> email }}</td>
                    <td>{{ $user -> password }}</td>

                    <td>
                        <a href="user-edit/{{$user->id}}"class="btn btn-info"> Edit</a>
                        <form class="d-inline" action="/user/{{$user->id}}" method="post">
                            @csrf
                            @method('delete')
                            <button type="submit" name="submit" class="btn btn-danger" onclick= "return confirm('Apakah anda yakin ingin menghapus?')">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
</table>