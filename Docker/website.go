package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hi there, I Really Really love %s!", r.URL.Path[1:])
}

func main() {
	http.Handle("/", http.FileServer(http.Dir("./static/")))
	fmt.Print("Server is running: Port is 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))

}
