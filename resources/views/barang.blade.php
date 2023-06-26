@include('navbar')
<div class="my-1">
    <a href="addbarang" class= "btn btn-dark ml-5"> Add Barang</a>
</div>


@if(Session::has('status'))
    <div class="alert alert-success" role="alert">
        {{Session::get('message')}}
    </div>
@endif
        <table class="table" >
            <thead>
                <tr>
                    <th>no</th>
                    <th>id</th>
                    <th>nama</th>
                    <th>stok</th>
                    <th>harga_pokok</th>
                    <th>merek</th>
                    <th>harga_jual</th>
                    <th>pegawai_id</th>
                    <th>kategori</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($barang as $index => $data)
                <tr>
                    <td>{{$loop->iteration}}</td>
                    <td>{{ $index + 1 }}</td>
                    <td>{{ $data -> nama }}</td>
                    <td>{{ $data -> stok }}</td>
                    <td>{{ $data -> harga_pokok }}</td>
                    <td>{{ $data -> merek -> merek }}</td>
                    <td>{{ $data -> harga_jual }}</td>
                    <td>{{ $data -> pegawai -> nama }}</td>
                    <td>
                        @foreach ($data->kategori as $item)
                            -{{$item->kategori}} <br>
                        @endforeach
                    </td>
                    
                    <td>
                    <a href="edit/{{$data->id}}"class="btn btn-info"> Edit</a>
                    <form class="d-inline" action="/barang/{{$data->id}}" method="post">
                    @csrf
                    @method('delete')
                    <button type="submit" name="submit" class="btn btn-danger" onclick= "return confirm('Apakah anda yakin ingin menghapus?')">Delete</button>
                    </form>
                    </td>

                </tr>
                @endforeach
            </tbody>
        </table>
        
