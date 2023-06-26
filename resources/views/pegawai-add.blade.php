@include('navbar')


<div class="mt-5 ml-5 col-5 mx-auto">
<h1>Add pegawai</h1>

    <form action="pegawai" method="POSt">
        @csrf
        <div class="mb-3">
            <label for="nama">nama</label>
            <input type="text" class="form-control" id="nama" name="nama" required>
        </div>
        <div class="mb-3">
            <label for="alamat">alamat</label>
            <input type="text" class="form-control" id="alamat" name="alamat" required>
        </div>
        <div class="mb-3">
            <label for="tlpn">tlpn</label>
            <input type="text" class="form-control" id="tlpn" name="tlpn" required>
        </div>

        

        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>