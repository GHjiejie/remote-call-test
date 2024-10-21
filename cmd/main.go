package main

import (
	"fmt"
	"net/http"
)

func handleHello(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("我收到了你的请求，你的请求路径是：" + r.URL.Path))
}

func main() {
	http.HandleFunc("/v1/hello", handleHello)
	err := http.ListenAndServe(":9900", nil)
	if err != nil {
		fmt.Println("Error starting server:", err)
		return
	} else {
		fmt.Println("Server started on port 9900") // 修正了这里
	}
}
