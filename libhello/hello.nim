proc Hello() {.exportc, dynlib, cdecl.} =
    echo "Hello from Nim!"

