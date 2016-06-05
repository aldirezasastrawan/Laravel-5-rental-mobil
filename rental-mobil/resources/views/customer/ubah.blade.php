<html>
	<head>
		<title>Ubah Customer {{ $customer->nama }}</title>
	</head>
	<body>
	<center>
		<h2>Ubah Informasi Customer</h2>
		<div class="container">
		<!-- Kita gunaka model karena kita akan mengubah data yang telah ada -->
		{{ Form::model($customer, array('route' => array('ganti', $customer->id), 'method' => 'PUT')) }}
		<div class="form-group">
			{{ Form::label('nama', 'Nama') }}
			<!-- Parameter kedua merupakan value, jadi terlihat terisi dengan data nama sebelumnya -->
			{{ Form::text('nama', $customer->nama) }}
			<!-- Bila ada errors validasi letakkan disini 
			variabel errors ($errors) berasal dari Controller ['withErrors'] -->
			@if($errors->has('nama'))
				{{ $errors->first('nama') }}
			@endif
		</div>
			<br>
		<div class="form-group">
			{{ Form::label('usia', 'Usia') }}
			{{ Form::text('usia', $customer->usia) }}
			<!-- Penjelasan sama seperti diatas -->
			@if($errors->has('usia'))
				{{ $errors->first('usia') }}
			@endif
		</div>
			<br>
		<div class="form-group">
			{{ Form::label('alamat', 'Alamat') }}
			{{ Form::textarea('alamat', $customer->alamat) }}
			<!-- Penjelasan sama seperti diatas -->
			@if($errors->has('alamat'))
				{{ $errors->first('alamat') }}
			@endif
		</div>
			<br>
		<div class="form-group">	
			{{ Form::label('jenis_kelamin', 'Jenis Kelamin') }}
			<!-- Untuk select, parameter 1 = id, parameter 2 = option, parameter 3 = value -->
			{{ Form::select('jenis_kelamin', $jenis_kelamin, $customer->jenis_kelamin) }}
			@if($errors->has('jenis_kelamin'))
				{{ $errors->first('jenis_kelamin') }}
			@endif
		</div>
			<br>
		<div class="form-group">	
			{{ Form::label('telepon', 'Telepon') }}
			{{ Form::text('telepon', $customer->telepon) }}
			@if($errors->has('telepon'))
				{{ $errors->first('telepon') }}
			@endif
		</div>	
			<br>
		<div class="form-group">
			{{ Form::label('email', 'Email') }}
			{{ Form::text('email', $customer->email) }}
			@if($errors->has('email'))
				{{ $errors->first('email') }}
			@endif
		</div>	
			<br>
		<div class="form-group">	
			{{ Form::submit('Ubah') }}
			{!! Form::reset('Reset', ['class' => 'btn btn-primary']) !!}
			{{ Form::close() }}
		</div>
		<a href="{{ route('beranda') }}" style="border: 2px solid #ccc; border-radius: 5px; padding: 5px; background: #eaebec;text-decoration:none; ">Kembali ke Customer</a>
		</center>
	</body>
</html>