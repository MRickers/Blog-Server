# Blog Server

## Dependencies
Description of all needed dependencies and how to install them.
### sqlite3
#### Debian
```
sudo apt update
sudo apt install sqlite3
```

## Setup
To setup development.db run following instruction
```
sqlite3 cmd/development.db < create_blog_database.sql
```