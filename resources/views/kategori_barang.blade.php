@include('navbar')
<div class="btn btn-dark ml-5">add</div>
        <table class="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>kategori_id</th>
                    <th>barang_id</th>
                </tr>
            </thead>
            <tbody>
                @foreach($kategori_barang as $index => $kategori_barang)
                <tr>
                    <td>{{ $kategori_barang -> id }}</td>
                    <td>{{ $kategori_barang -> kategori_id }}</td>
                    <td>{{ $kategori_barang -> barang_id }}</td>
                </tr>
                @endforeach
            </tbody>
</table>