@include('navbar')


<div class="my-3">
    <a href="merek-add" class= "btn btn-dark ml-5"> Add Merek</a>
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
                    <th>Merek</th>
                    <th>Barang</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($merek as $data)
                <tr>
                    <td>{{ $data -> id }}</td>
                    <td>{{ $data -> merek }}</td>
                    <td>
                        @foreach ($data->barang as $barang)
                            {{$barang->nama}} <br>
                        @endforeach
                    </td>                    
                    <td>
                        <a href="merek-edit/{{$data->id}}"class="btn btn-info"> Edit</a>
                        <form class="d-inline" action="/merek/{{$data->id}}" method="post">
                            @csrf
                            @method('delete')
                            <button type="submit" name="submit" class="btn btn-danger" onclick= "return confirm('Apakah anda yakin ingin menghapus?')">Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
</table>