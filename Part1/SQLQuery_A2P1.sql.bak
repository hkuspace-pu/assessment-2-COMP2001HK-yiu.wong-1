CREATE TABLE A2P1.Programmes (
    Code INT NOT NULL IDENTITY(201,1),
    Title VARCHAR (50) NOT NULL,
    PRIMARY KEY (Code)
)

INSERT INTO A2P1.Programmes (Title) VALUES
('Data Science'),
('Artificial Intelligence'),
('Database Management'),
('Cybersecurity'),
('Software Engineering'),
('Cryptography');

CREATE TABLE A2P1.Projects (
    ProjectId INT NOT NULL IDENTITY(301,1),
    Title VARCHAR (20) NOT NULL,
    Description VARCHAR (100),
    Year CHAR (4),
    Thumbnail VARCHAR (255),
    Poster VARCHAR (255),
    PRIMARY KEY (ProjectId)
)

INSERT INTO A2P1.Projects (Title, Description, Year, Thumbnail, Poster) VALUES
('Programming', 'Java Programming' , 2022, 'tn001.jpg' , 'p001.jpg'),
('Database Design', 'MySQL System Design' , 2022, 'tn002.jpg' , 'p002.jpg'),
('Cryptography', 'Encryption and Decryption' , 2022, 'tn003.jpg' , 'p003.jpg'),
('Integrity', 'Hashing' , 2022, NULL , NULL),
('Big Data', 'Data Mining' , 2022, NULL , NULL),
('Security', 'Risk Analysis and Management' , 2022, 'tn004.jpg' , 'p004.jpg');

CREATE TABLE A2P1.Students (
    StudentId INT NOT NULL IDENTITY(101,1),
    Name VARCHAR (50) NOT NULL,
    Code INT,
    ProjectId INT,
    PRIMARY KEY (StudentId),
    FOREIGN KEY (Code) REFERENCES A2P1.Programmes (Code),
    FOREIGN KEY (ProjectId) REFERENCES A2P1.Projects (ProjectId)
)

INSERT INTO A2P1.Students (Name, Code, ProjectId) VALUES
('Adam Smith', 201, 305),
('Philip Writghts', 202, 301),
('Emma Lee', 203, 302),
('Ashley Cheung', 204, 306),
('Michael Brown', 205, 301),
('Gordan Johnson', 206, 303),
('William Miller', 204, 304);