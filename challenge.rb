require 'sqlite3'

db = SQlite3::Database.new 'school.db'

db.execute <<-SQL--HEREDOC
INSERT INTO students
(first_name, last_name, gender, birthday, email, phone)
VALUES
('jane', 'smith', 'female', '1997-7-20', 'abc@hi.com', '123.321.2323');
SQL
https://github.com/rbenv/rbenv
