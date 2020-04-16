package main

import (
	"fmt"

	"github.com/ryanuber/go-glob"
)

func main() {
	fmt.Printf("%t\n", glob.Glob("*World!", "Hello, World!"))                 // true
	fmt.Printf("%t\n", glob.Glob("Hello,*", "Hello, World!"))                 // true
	fmt.Printf("%t\n", glob.Glob("*ello,*", "Hello, World!"))                 // true
	fmt.Printf("%t\n", glob.Glob("World!", "Hello, World!"))                  // false
	fmt.Printf("%t\n", glob.Glob("/home/System*.log", "/home/SystemErr.log")) // true
	fmt.Printf("%t\n", glob.Glob("/home/System*.log", "/home/SystemOut.log")) // true
}
