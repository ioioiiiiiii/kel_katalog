@include('navbar')


<div class="mt-5 ml-5 col-5 mx-auto" >
<h1>Add kategori</h1>

    <form action="kategori" method="POSt">
        @csrf
        <div class="mb-3">
            <label for="kategori"> <b>Nama</b></label>
            <input type="text" class="form-control" id="kategori" name="kategori" required>
        </div>
        <div class="mb-3"> <label ><b>Barang</b></label><br>
            @foreach ($barang as $index => $barang)
            <input type="checkbox" name="barang_id[]" value="{{ $barang->id }}">{{ $barang->nama }}<br> 
            @endforeach
        </div>
        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>