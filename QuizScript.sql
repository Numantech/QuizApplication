-- database create
CREATE DATABASE QuizApplication;

USE  QuizApplication

CREATE TABLE Users (
    Username NVARCHAR(50) PRIMARY KEY,
    First_name NVARCHAR(50),
    Last_name NVARCHAR(50),
    Three_digit_number INT,
    Wins INT,
    Losses INT
);


CREATE TABLE Content (
    question_id INT PRIMARY KEY,
    Question NVARCHAR(MAX),
    Answer_a NVARCHAR(200),
    Answer_b NVARCHAR(200),
    Answer_c NVARCHAR(200),
    Answer_d NVARCHAR(200),
    Correct_answer NVARCHAR(200),
    Image VARBINARY(MAX),
    FirstAnsweredUsername NVARCHAR(MAX),
	FOREIGN KEY (FirstAnsweredUsername) REFERENCES Users(Username)
);


CREATE TABLE NetworkCodes (
    Code_id INT PRIMARY KEY,
    Code NVARCHAR(50),
    Network_name NVARCHAR(100)
);


-- Insert data into Users table
INSERT INTO Users (Username, First_name, Last_name, Three_digit_number, Wins, Losses)
VALUES
    ('user1', 'John', 'Doe', 123, 5, 2),
    ('user2', 'Alice', 'Smith', 456, 8, 3),
    ('user3', 'Bob', 'Johnson', 789, 3, 6),
    ('user4', 'Eva', 'Williams', 234, 10, 1),
    ('user5', 'Charlie', 'Brown', 567, 7, 4),
    ('user6', 'Grace', 'Taylor', 890, 4, 5),
    ('user7', 'David', 'Lee', 321, 6, 3),
    ('user8', 'Sophia', 'Miller', 654, 9, 2),
    ('user9', 'Oliver', 'Jones', 987, 2, 7),
    ('user10', 'Emma', 'Davis', 432, 5, 4);
	
	
	-- Insert data into Content table
INSERT INTO Content (Question_id, Question, Answer_a, Answer_b, Answer_c, Answer_d, Correct_answer, Image, FirstAnsweredUsername)
VALUES
    (1, 'What is the capital of France?', 'Berlin', 'Paris', 'Madrid', 'Rome', 'B', 0x255041..., 'user1'),
    (2, 'Which planet is known as the Red Planet?', 'Venus', 'Earth', 'Mars', 'Jupiter', 'C', 0x255041..., 'user2'),
    (3, 'What is the largest mammal in the world?', 'Elephant', 'Giraffe', 'Blue Whale', 'Dolphin', 'C', 0x255041..., 'user3'),
    (4, 'Who wrote the play "Romeo and Juliet"?', 'William Shakespeare', 'Jane Austen', 'Charles Dickens', 'Mark Twain', 'A', 0x255041..., 'user6'),
    (5, 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Fe', 'Cu', 'A', 0x255041..., 'user2'),
    (6, 'Which programming language is known for its simplicity and readability?', 'C++', 'Java', 'Python', 'Ruby', 'C', 0x255041..., 'user6'),
    (7, 'In what year did the Titanic sink?', '1905', '1912', '1920', '1935', 'B', 0x255041..., 'user1'),
    (8, 'What is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Southern Ocean', 'Pacific Ocean', 'D', 0x255041..., 'user1'),
    (9, 'Who is known as the "Father of Computer Science"?', 'Alan Turing', 'Bill Gates', 'Steve Jobs', 'Tim Berners-Lee', 'A', 0x255041..., 'user3'),
    (10, 'What is the main ingredient in guacamole?', 'Tomato', 'Onion', 'Avocado', 'Cucumber', 'C', 0x255041..., 'user3');
	
	
-- Insert data into NetworkCodes table
INSERT INTO NetworkCodes (Code_id, Code, Network_name)
VALUES
    (1, '4F6I', 'Library_Network_4G'),
    (2, '2H8J', 'Office_Network_WiFi'),
    (3, '7K3L', 'Home_Network_Fiber'),
    (4, '5M9N', 'Public_Network_Guest'),
    (5, '1P0Q', 'Company_Network_VPN'),
    (6, '9R2S', 'Cafe_Network_FreeWiFi'),
    (7, '3T4U', 'School_Network_EduNet'),
    (8, '6V5W', 'Hospital_Network_MedicalNet'),
    (9, '8X7Y', 'Airport_Network_SkyNet'),
    (10, '0Z1A', 'Gym_Network_FitConnect');
	
	--Write SQL code that lists all the users by the number of wins, from highest to lowest.
	
	SELECT * FROM Users ORDER BY wins DESC;