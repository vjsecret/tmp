//https://openhome.cc/Gossip/Go/Package.html
//建立一個 src/cc/openhome 目錄，然後將方才的 hello.go 與 hi.go 移至該目錄之中
//go install cc/openhome/goexample
//在 pkg 目錄的 $GOOS_$GOARCH 目錄中，會產生對應的 cc/openhome 目錄，其中放置著 goexample.a 檔案，想要使用這個套件的話，可以撰寫個 main.go：
package main

import "goexample"

func main() {
        goexample.Hi()
        goexample.Hello()
}
