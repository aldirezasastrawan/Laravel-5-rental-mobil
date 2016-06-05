
<?php
Route::get('/', function () {
    return view('welcome');
});
# Halaman muka, untuk menampilkan semua data biodata yang ada. [localhost:8000/customer]
Route::get('customer', array('as' => 'beranda', 'uses' => 'CustomerController@index'));

# Halaman yang berisi Form inputan Customer baru [localhost:8000/buat]
Route::get('buat', array('as' => 'baru', 'uses' => 'CustomerController@baru'));

# Memproses Form lalu mengirimnya kedalam database [localhost:8000/buat]
Route::post('buat', array('as' => 'buat', 'uses' => 'CustomerController@buat'));

# Menampilkan Customer perorangan [localhost:8000/lihat/{id}]
Route::get('lihat/{id}', array('as' => 'lihat', 'uses' => 'CustomerController@lihat'));

# Form untuk mengubah isi Customer dalam database [localhost:8000/ubah/{id}]
Route::get('ubah/{id}', array('as' => 'ubah', 'uses' => 'CustomerController@ubah'));

# Memproses Form lalu mengirim yang baru kedalam database [localhost:8000/ubah/{id}]
Route::put('ubah/{id}', array('as' => 'ganti', 'uses' => 'CustomerController@ganti'));

# Tindakan untuk menghapus Customer [localhost:8000/{id}/hapus]
Route::get('hapus/{id}', array('as' => 'hapus', 'uses' => 'CustomerController@hapus'));

?>