@include('navbar')
<div class="my-3">
        <a href="kategori-add" class= "btn btn-dark ml-5"> Add </a>
</div>

        <table class="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>kategori</th>
                    <th>nama_barang</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($kategori as $index => $kategori)
                <tr>
                    <td>{{ $kategori -> id }}</td>
                    <td>{{ $kategori -> kategori }}</td>
                    <td>
                        @foreach($kategori->barang as $barang)
                            -{{$barang->nama}} <br>
                        @endforeach
                    </td>
                    <td>
                        <a href="kategori-edit/{{$kategori->id}}"class="btn btn-info"> Edit</a>
                        <form class="d-inline" action="/kategori/{{$kategori->id}}" method="post">
                        @csrf
                        @method('delete')
                            <button type="submit" name="submit" class="btn btn-danger" onclick= "return confirm('Apakah anda yakin ingin menghapus?')">Delete</button>
                        </form>
                        </td>
                </tr>
                @endforeach
            </tbody>
        </table>