@include('navbar')

<h1>Add User</h1>

<div class="mt-5 ml-5 col-5">
    <form action="user" method="POSt">
        @csrf
        <div class="mb-3">
            <label for="name">name</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="mb-3">
            <label for="email">email</label>
            <input type="text" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="password">password</label>
            <input type="text" class="form-control" id="password" name="password" required>
        </div>

        

        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>