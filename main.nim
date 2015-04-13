import dynlib, os

const libName = "./libhello.so"

proc main() =
    var 
        hello {.global.}: LibHandle
        runProc {.global.}: proc() {.stdcall.}

    if hello != nil:
        hello.unloadLib
    hello = loadLib(libName)
    runProc = cast[proc () {.stdcall.}](symAddr(hello, "Hello"))
    runProc()

while true:
    main()
    sleep 500
    
