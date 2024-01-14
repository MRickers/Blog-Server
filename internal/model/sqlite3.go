package model

import (
	"database/sql"

	_ "github.com/mattn/go-sqlite3"
)

type SqlPersister struct {
	Db *sql.DB
}

func (db *SqlPersister) Create(user User) error {
	return nil
}
func (db *SqlPersister) Read(id int) (User, error) {
	return User{Id: 0}, nil
}
func (db *SqlPersister) Update(user User) error {
	return nil
}
func (db *SqlPersister) Delete(user User) error {
	return nil
}
