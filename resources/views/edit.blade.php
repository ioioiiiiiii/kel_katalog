@include('navbar')

<h1>Edit</h1>

<div class="mt-5 ml-5 col-5">
    <form action="/barang/{{$barang->id}}" method="post">
    @method('PUT')    
    @csrf
        <div class="mb-3">
            <label for="nama">nama</label>
            <input type="text" class="form-control" id="nama" name="nama" value="{{$barang->nama}}" required>
        </div>

        <div class="mb-3">
            <label for="stok">stok</label>
            <input type="text" class="form-control" id="stok" name="stok" value="{{$barang->stok}}" required>
        </div>

        <div class="mb-3">
            <label for="alamat">harga pokok</label>
            <input type="text" class="form-control" id="harga_pokok" name="harga_pokok" value="{{$barang->harga_pokok}}"required>
        </div>

        <div class="mb-3">
            <label for="harga_jual">harga jual</label>
            <input type="text" class="form-control" id="harga_jual" name="harga_jual" value="{{$barang->harga_jual}}"required>
        </div>
        <div class="mb-3">
            <label for="pegawai">pegawai id</label>
            <select name = "pegawai_id" id="pegawai" class="form-control"  required>
                <option value= "{{$barang->pegawai->id}}">{{$barang->pegawai->nama}}</option>
                @foreach ($pegawai as $pegawai)
                <option value="{{$pegawai->id}}">{{$pegawai->nama}}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>