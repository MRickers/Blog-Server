package model

import "time"

type User struct {
	Id        int
	Username  string
	Password  string
	CreatedAt time.Time
	UpdatedAt time.Time
}

type BlogEntry struct {
	Id        int
	Title     string
	Content   string
	CreatedAt time.Time
	UpdatedAt time.Time
}

type UserPersister interface {
	Create(user User) error
	Read(id int) (User, error)
	Update(user User) error
	Delete(user User) error
}
