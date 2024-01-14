-- create User table
CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    username TEXT NOT NULL, 
    password TEXT NOT NULL, 
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP, 
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS blog_entries(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP, 
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- create dummy users
INSERT INTO users VALUES (1, "Sammy", "abcd", CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO users VALUES (2, "Alyoshka", "Great White Shark", '2024-01-14 15:30:00', '2024-01-14 16:30:00');

-- create dummy blog entries
INSERT INTO blog_entries VALUES(
    1, 
    "First Blog Entry", 
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur, odio vel ultricies ultricies, elit tellus posuere turpis, vel laoreet eros lacus id libero. Proin nec mauris vel felis suscipit hendrerit.",
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP  
);

INSERT INTO blog_entries VALUES(
    2, 
    "Second Blog Entry", 
    "Sed tincidunt nunc ut metus sollicitudin, ut scelerisque elit cursus. In hac habitasse platea dictumst. Vestibulum efficitur tellus vel risus interdum, eu auctor augue malesuada.",
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP  
);