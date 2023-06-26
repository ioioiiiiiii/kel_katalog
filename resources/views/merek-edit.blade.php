@include('navbar')

<div class="mt-5 ml-5 col-5 m-auto">
    <form action="/merek/{{$merek->id}}" method="POST" >
        @method('PUT')
        @csrf
        <div class="mb-3">
            <label for="merek">merek</label>
            <input type="text" class="form-control" id="merek" name="merek" value="{{$merek->merek}}" required>
        </div>
        
        
        
        <div class="mb-3">
            <button class="btn btn-success" type="submit">Simpan</button>
        </div>
    </form>
</div>