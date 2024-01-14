package main

import (
	"blogserver/internal/model"
	"database/sql"
	"fmt"
	"log"
	"time"
)

func main() {
	const file string = "development.db"
	const persister = "sqlite3"

	db, err := sql.Open(persister, file)
	if err != nil {
		log.Fatalf("could not open %s %s: %v", persister, file, err)
	}

	persistance := model.SqlPersister{Db: db}

	user := model.User{
		Id:        0,
		Username:  "Test",
		Password:  "abcd",
		CreatedAt: time.Time{},
		UpdatedAt: time.Time{},
	}
	if persistance.Create(user) != nil {
		log.Printf("could not create user: %v", user)
	}
	fmt.Println("hello there")
}
