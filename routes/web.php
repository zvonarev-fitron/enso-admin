<?php

//Route::view('/{any}', 'laravel-enso/core::index')
//    ->where('any', '.*');



Route::view('/admin{any}', 'laravel-enso/core::index')
    ->where('any', '.*');
