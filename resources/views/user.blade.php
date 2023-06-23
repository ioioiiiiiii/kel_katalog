@include('navbar')
<div class="btn btn-dark ml-5">add</div>
        <table class="table">
            <thead>
                <tr>
                    <th>id</th>
                    <th>username</th>
                    <th>password</th>
                    <th>pegawai_id</th>
                </tr>
            </thead>
            <tbody>
                @foreach($user as $index => $user)
                <tr>
                    <td>{{ $user -> id }}</td>
                    <td>{{ $user -> username }}</td>
                    <td>{{ $user -> password }}</td>
                    <td>{{ $user -> pegawai_id }}</td>
                </tr>
                @endforeach
            </tbody>
</table>