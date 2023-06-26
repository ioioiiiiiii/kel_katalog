@include('navbar')

<div class="mt-5 ml-5 col-5 m-auto">
    <h1>Kategori Edit</h1>
    <form action="/kategori/{{$kategori->id}}" method="POST" >
        @method('PUT')
        @csrf
        <div class="mb-3">
            <label for="kategori">kategori</label>
            <input type="text" class="form-control" id="kategori" name="kategori" value="{{$kategori->kategori}}" required>
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