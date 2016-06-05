<html>
	<head>
		<title>CUSTOMER - INDOJAYA MULTI RENTAL</title>
		<link rel="stylesheet" type="text/css" href="/css/table.css">
	</head>
	<body>
		<center>
		<h1>Daftar Customer</h1>
		<!-- Siapkan variabel pesan untuk menampilkan nilai variabel yang diterima dari controller -->
		@if(Session::has('pesan'))
			{{ Session::get('pesan') }}
		@endif
		<!-- Jika tabel customer memiliki isi, tampilkan isi berikut -->
		@if($customer->count())
		<!-- Siapkan tombol untuk membuat customer baru -->
		<p><a href="{{ route('baru') }}" style="border: 2px solid #ccc; border-radius: 5px; padding: 5px; background: #eaebec;text-decoration:none; ">Tambah</a></p>
		<table>
			<thead>
				<tr>
					<th>Nama</th>
					<th>Usia</th>
					<th>Alamat</th>
					<th>Jenis Kelamin</th>
					<th>Telepon</th>
					<th>Email</th>
					<th>Aksi</th>
				</tr>
			</thead>
			<tbody>
				<!-- Lakukan Perulangan untuk menampilkan seluruh isi tabel -->
				@foreach($customer as $data)
				<tr>					
					<td>{{ $data->nama }}</td>
					<td>{{ $data->usia }}</td>
					<td>{{ $data->alamat }}</td>
					<td>{{ $data->jenis_kelamin }}</td>
					<td>{{ $data->telepon }}</td>
					<td>{{ $data->email }}</td>
					<!-- Siapkan tombol untuk edit dan hapus item tertentu -->
					<td>
						<a href="{{ route('lihat', $data->id) }}">Lihat</a>||
						<a href="{{ route('ubah', $data->id) }}">Edit</a>||
						<a href="{{ route('hapus', $data->id) }}">Hapus</a>
					</td>
				</tr>
				@endforeach
			</tbody>
		</table>
		<p><a href="{{ ('../') }}" style="border: 2px solid #ccc; border-radius: 5px; padding: 5px; background: #eaebec;text-decoration:none; ">Kembali ke index</a></p>
		<!-- Sedangkan, bila tidak ada isinya, tampilkan isi berikut -->
		@else
		<p>Anda belum memiliki isi pada tabel customer.</p>
		<p><a href="{{ route('baru') }}" style="border: 2px solid #ccc; border-radius: 5px; padding: 5px; background: #eaebec;text-decoration:none; ">Tambah</a></p>
		<p><a href="{{ ('../') }}" style="border: 2px solid #ccc; border-radius: 5px; padding: 5px; background: #eaebec;text-decoration:none; ">Kembali ke index</a></p>
		@endif
		</center>
	</body>
</html>