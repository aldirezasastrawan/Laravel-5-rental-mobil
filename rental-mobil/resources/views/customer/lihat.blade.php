<html>
	<head>
		<title>Customer {{ $customer->nama }}</title>
	</head>
	<body>
		<h2>Informasi Customer</h2>
		<p>Nama : {{ $customer->nama }}</p>
		<p>Usia : {{ $customer->usia }}</p>
		<p>Alamat : {{ $customer->alamat }}</p>
		<p>Jenis Kelamin : {{ $customer->jenis_kelamin }}</p>
		<p>Telepon : {{ $customer->telepon }}</p>
		<p>Email : {{ $customer->email }}</p>
		<br/>
		<a href="{{ route('beranda') }}" style="border: 2px solid #ccc; border-radius: 5px; padding: 5px; background: #eaebec;text-decoration:none; ">Kembali ke Customer</a>
	</body>
</html>