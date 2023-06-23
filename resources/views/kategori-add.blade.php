@include('navbar')

<h1>Add kategori</h1>

<div class="mt-5 ml-5 col-5">
    <form action="kategori" method="POSt">
        @csrf
        <div class="mb-3">
            <label for="kategori">nama</label>
            <input type="text" class="form-control" id="kategori" name="kategori" required>
        </div>

        

        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>