<html>
	<head>
		<title>Tambah Customer</title>
	</head>
	<body>
		<center>
		<h2>Tambah Customer Baru</h2>
		<div class="container">
		<!-- Buka form inutan lalu ruju ke identitas route "buat" -->
		{{ Form::open(array('route' => 'buat')) }}
		<div class="form-group">
			{{ Form::label('nama', 'Nama') }}
			{{ Form::text('nama') }}
			<!-- Bila ada errors validasi letakkan disini 
			variabel errors ($errors) berasal dari Controller ['withErrors'] -->
			@if($errors->has('nama'))
				{{ $errors->first('nama') }}
			@endif
		</div>	
			<br>
		<div class="form-group">
			{{ Form::label('usia', 'Usia') }}
			{{ Form::text('usia') }}
			<!-- Penjelasan sama seperti diatas -->
			@if($errors->has('usia'))
				{{ $errors->first('usia') }}
			@endif
		</div>
			<br>
		<div class="form-group">
			{{ Form::label('alamat', 'Alamat') }}
			{{ Form::textarea('alamat') }}
			<!-- Penjelasan sama seperti diatas -->
			@if($errors->has('alamat'))
				{{ $errors->first('alamat') }}
			@endif
		</div>
			<br>
		<div class="form-group">
			{{ Form::label('jenis_kelamin', 'Jenis Kelamin') }}
			{{ Form::select('jenis_kelamin', $jenis_kelamin) }}
			@if($errors->has('jenis_kelamin'))
				{{ $errors->first('jenis_kelamin') }}
			@endif
		</div>	
			<br>
		<div class="form-group">	
			{{ Form::label('telepon', 'Telepon') }}
			{{ Form::text('telepon') }}
			@if($errors->has('telepon'))
				{{ $errors->first('telepon') }}
			@endif
		</div>	
			<br>
		<div class="form-group">	
			{{ Form::label('email', 'Email') }}
			{{ Form::text('email') }}
			@if($errors->has('email'))
				{{ $errors->first('email') }}
			@endif
		</div>	
			<br>
		<div class="form-group">
			{{ Form::submit('Buat') }}
			{!! Form::reset('Reset', ['class' => 'btn btn-primary']) !!}
			{{ Form::close() }}
		</div>
		<a href="{{ route('beranda') }}" style="border: 2px solid #ccc; border-radius: 5px; padding: 5px; background: #eaebec;text-decoration:none; ">Kembali ke Customer</a>
	</body>
	</center>
</html>