package main
//https://ithelp.ithome.com.tw/articles/10187141
//go get -u github.com/TroyCode/GoIn30Days/day6/alien
//go get -u github.com/TroyCode/GoIn30Days/day6/person
//go build testpackage.go

//go install github.com/TroyCode/GoIn30Days/day6/alien
//go install github.com/TroyCode/GoIn30Days/day6/person

import (
	"fmt"
	"github.com/TroyCode/GoIn30Days/day6/person"
	"github.com/TroyCode/GoIn30Days/day6/alien"
	//"github.com/TroyCode/GoIn30Days/day6"

)
func main() {
	fmt.Println(person.SayHelloTo("George"))
	fmt.Println(person.MyName)
	fmt.Println(alien.AlienName)
}

