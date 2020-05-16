mkdir build
cd build
cmake ^
  -G "Ninja" ^
  -DBUILD_SHARED_LIBS=ON ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_INSTALL_LIBDIR=%LIBRARY_PREFIX%\lib ^
  ..
ninja install
