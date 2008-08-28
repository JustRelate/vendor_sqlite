Compilierungsanleitung
----------------------

Tar von http://www.sqlite.org/ runterladen, auspacken.

** Unter Solaris unbedingt sicherstellen, dass GCC 3.4 verwendet      **
** wird (sonst gibt's später beim Start vom CM "_eprintf undefined"): **
**                                                                    **
**  export PATH=/usr/local/gcc-3.4.1/bin:$PATH                        **

Dann
./configure --disable-tcl --enable-debug --prefix=/tmp/sqlite-3 --enable-tempstore=on
make
make install

Dann den Inhalt von /tmp/sqlite-3 einchecken (unterhalb von lib nur
das *.a und *.so.0).

Die Windows-Version schon kompiliert runtergeladen.

