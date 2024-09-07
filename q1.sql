-- Users table
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    RegistrationDate DATE NOT NULL,
    LastLoginDate DATE,
    TotalPoints INT DEFAULT 0
);

-- Species table
CREATE TABLE Species (
    SpeciesID INT PRIMARY KEY IDENTITY(1,1),
    ScientificName NVARCHAR(100) NOT NULL,
    CommonName NVARCHAR(100) NOT NULL,
    ConservationStatus NVARCHAR(50)
);

-- Sightings table
CREATE TABLE Sightings (
    SightingID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    SpeciesID INT FOREIGN KEY REFERENCES Species(SpeciesID),
    Location GEOGRAPHY,
    SightingDate DATETIME NOT NULL,
    PhotoUploaded BIT NOT NULL,
    Description NVARCHAR(MAX)
);

-- App Features table
CREATE TABLE AppFeatures (
    FeatureID INT PRIMARY KEY IDENTITY(1,1),
    FeatureName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX)
);

-- User Activity table
CREATE TABLE UserActivity (
    ActivityID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    FeatureID INT FOREIGN KEY REFERENCES AppFeatures(FeatureID),
    ActivityDate DATETIME NOT NULL,
    Duration INT -- in seconds
);

-- Conservation Quizzes
CREATE TABLE ConservationQuizzes (
    QuizID INT PRIMARY KEY IDENTITY(1,1),
    QuizName NVARCHAR(100) NOT NULL,
    DateCreated DATE NOT NULL,
    Difficulty NVARCHAR(20)
);

-- User Quiz Results
CREATE TABLE UserQuizResults (
    ResultID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    QuizID INT FOREIGN KEY REFERENCES ConservationQuizzes(QuizID),
    Score INT NOT NULL,
    DateTaken DATE NOT NULL
);

-- Badges
CREATE TABLE Badges (
    BadgeID INT PRIMARY KEY IDENTITY(1,1),
    BadgeName NVARCHAR(50) NOT NULL,
    Description NVARCHAR(MAX),
    PointsRequired INT
);

-- User Badges
CREATE TABLE UserBadges (
    UserBadgeID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT FOREIGN KEY REFERENCES Users(UserID),
    BadgeID INT FOREIGN KEY REFERENCES Badges(BadgeID),
    DateEarned DATE NOT NULL
);



