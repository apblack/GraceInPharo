I'm a visitor that accumulates Grace code equivalent to the current Smalltalk method.

The code is written to the variable outStream, which should be written using the methods << and newline only.  This is so that the methods indent and outdent work correctly.  If the visitor methods write directly to outStream, the indentation will not be respected.

