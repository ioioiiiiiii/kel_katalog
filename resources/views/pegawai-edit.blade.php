@include('navbar')

<div class="mt-5 ml-5 col-5 m-auto">
    <h1>Pegawai Edit</h1>
    <form action="/pegawai/{{$pegawai->id}}" method="POST" >
        @method('PUT')
        @csrf
        <div class="mb-3">
            <label for="nama">Nama</label>
            <input type="text" class="form-control" id="nama" name="nama" value="{{$pegawai->nama}}" required>
        </div>
        <div class="mb-3">
            <label for="alamat">Nama</label>
            <input type="text" class="form-control" id="alamat" name="alamat" value="{{$pegawai->alamat}}" required>
        </div>
        <div class="mb-3">
            <label for="tlpn">No Telpn</label>
            <input type="text" class="form-control" id="tlpn" name="tlpn" value="{{$pegawai->tlpn}}" required>
        </div>
        
        
        
        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>