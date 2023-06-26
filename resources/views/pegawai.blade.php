@include('navbar')


<div class="my-3">
    <a href="pegawai-add" class= "btn btn-dark ml-5"> Add Pegawai</a>
</div>

@if(Session::has('status'))
    <div class="alert alert-success" role="alert">
        {{Session::get('message')}}
    </div>
@endif
        <table class="table">
            <thead>
                <tr>
                    <th>no</th>
                    <th>id</th>
                    <th>nama</th>
                    <th>alamat</th>
                    <th>tlpn</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($pegawai as $data)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{ $data -> id }}</td>
                    <td>{{ $data -> nama }}</td>
                    <td>{{ $data -> alamat }}</td>
                    <td>{{ $data -> tlpn }}</td>
                    <td>
                        <a href="pegawai-edit/{{$data->id}}"class="btn btn-info"> Edit</a>
                        <form class="d-inline" action="/pegawai/{{$data->id}}" method="post">
                            @csrf
                            @method('delete')
                            <button type="submit" name="submit" class="btn btn-danger" onclick= "return confirm('Apakah anda yakin ingin menghapus?')">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
</table>