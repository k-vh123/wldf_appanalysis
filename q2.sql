-- Insert Users
INSERT INTO Users (Username, Email, RegistrationDate, LastLoginDate, TotalPoints)
VALUES 
('JohnDoe', 'john.doe@email.com', '2023-01-01', '2024-09-05', 1500),
('JaneSmith', 'jane.smith@email.com', '2023-02-15', '2024-09-06', 2200),
('MikeJohnson', 'mike.johnson@email.com', '2023-03-10', '2024-09-04', 1800),
('EmilyBrown', 'emily.brown@email.com', '2023-04-22', '2024-09-05', 3000),
('ChrisWilson', 'chris.wilson@email.com', '2023-05-30', '2024-09-06', 2500),
('SarahDavis', 'sarah.davis@email.com', '2023-06-14', '2024-09-03', 1000),
('DavidLee', 'david.lee@email.com', '2023-07-19', '2024-09-05', 3500),
('LisaAnderson', 'lisa.anderson@email.com', '2023-08-25', '2024-09-06', 2800),
('RobertTaylor', 'robert.taylor@email.com', '2023-09-30', '2024-09-04', 1900),
('AmandaClark', 'amanda.clark@email.com', '2023-10-12', '2024-09-05', 2100);

-- Insert Species
INSERT INTO Species (ScientificName, CommonName, ConservationStatus)
VALUES 
('Panthera tigris', 'Tiger', 'Endangered'),
('Loxodonta africana', 'African Elephant', 'Vulnerable'),
('Gorilla beringei', 'Mountain Gorilla', 'Endangered'),
('Ailuropoda melanoleuca', 'Giant Panda', 'Vulnerable'),
('Chelonia mydas', 'Green Sea Turtle', 'Endangered'),
('Pongo abelii', 'Sumatran Orangutan', 'Critically Endangered'),
('Diceros bicornis', 'Black Rhinoceros', 'Critically Endangered'),
('Balaenoptera musculus', 'Blue Whale', 'Endangered'),
('Panthera onca', 'Jaguar', 'Near Threatened'),
('Ursus maritimus', 'Polar Bear', 'Vulnerable');

-- Insert Sightings
INSERT INTO Sightings (UserID, SpeciesID, Location, SightingDate, PhotoUploaded, Description)
VALUES 
(1, 1, geography::Point(28.6139, 77.2090, 4326), '2024-08-15 10:30:00', 1, 'Spotted a tiger in Ranthambore National Park'),
(2, 2, geography::Point(-3.0674, 37.3556, 4326), '2024-08-20 14:45:00', 1, 'Herd of elephants near Mount Kilimanjaro'),
(3, 3, geography::Point(-1.4688, 29.5230, 4326), '2024-08-25 09:15:00', 1, 'Mountain gorilla family in Virunga National Park'),
(4, 4, geography::Point(30.7348, 104.1419, 4326), '2024-08-30 11:00:00', 1, 'Giant panda eating bamboo in Chengdu'),
(5, 5, geography::Point(21.2866, -157.8480, 4326), '2024-09-01 16:30:00', 1, 'Green sea turtle nesting on Oahu beach'),
(6, 6, geography::Point(3.5952, 98.6722, 4326), '2024-09-02 08:45:00', 1, 'Orangutan swinging through trees in Sumatra'),
(7, 7, geography::Point(-23.9884, 31.5547, 4326), '2024-09-03 12:00:00', 1, 'Black rhino at waterhole in Kruger National Park'),
(8, 8, geography::Point(-42.8821, 147.3272, 4326), '2024-09-04 07:30:00', 1, 'Blue whale breaching off the coast of Tasmania'),
(9, 9, geography::Point(-3.4653, -62.2159, 4326), '2024-09-05 15:15:00', 1, 'Jaguar prowling in the Amazon rainforest'),
(10, 10, geography::Point(78.2232, 15.6267, 4326), '2024-09-06 10:00:00', 1, 'Polar bear on ice floe in Svalbard');

-- Insert App Features
INSERT INTO AppFeatures (FeatureName, Description)
VALUES 
('Species Identification', 'Tool to help users identify wildlife species'),
('Sighting Log', 'Feature to log and track wildlife sightings'),
('Photo Upload', 'Ability to upload and share wildlife photos'),
('Conservation Quiz', 'Interactive quizzes on wildlife conservation'),
('News Feed', 'Latest updates on conservation efforts'),
('Community Forum', 'Platform for users to discuss wildlife topics'),
('Personal Journal', 'Private space for users to record their observations'),
('Achievement System', 'Gamified system to earn badges and points'),
('Rare Species Alert', 'Notifications for rare species sightings in the area'),
('Offline Mode', 'Access key features without internet connection');

-- Insert User Activity
INSERT INTO UserActivity (UserID, FeatureID, ActivityDate, Duration)
VALUES 
(1, 1, '2024-09-05 09:30:00', 300),
(2, 2, '2024-09-05 10:15:00', 450),
(3, 3, '2024-09-05 11:00:00', 200),
(4, 4, '2024-09-05 13:30:00', 600),
(5, 5, '2024-09-05 14:45:00', 350),
(6, 6, '2024-09-05 16:00:00', 500),
(7, 7, '2024-09-05 17:30:00', 250),
(8, 8, '2024-09-05 18:45:00', 400),
(9, 9, '2024-09-05 20:00:00', 150),
(10, 10, '2024-09-05 21:15:00', 550);

-- Insert Conservation Quizzes
INSERT INTO ConservationQuizzes (QuizName, DateCreated, Difficulty)
VALUES 
('Endangered Species 101', '2024-01-15', 'Beginner'),
('Marine Life Conservation', '2024-02-01', 'Intermediate'),
('Rainforest Ecology', '2024-02-15', 'Advanced'),
('Climate Change Impact', '2024-03-01', 'Intermediate'),
('Wildlife Photography Ethics', '2024-03-15', 'Beginner'),
('Sustainable Ecotourism', '2024-04-01', 'Intermediate'),
('Invasive Species Challenge', '2024-04-15', 'Advanced'),
('Animal Tracking Basics', '2024-05-01', 'Beginner'),
('Conservation Technology', '2024-05-15', 'Intermediate'),
('Wildlife Rescue and Rehabilitation', '2024-06-01', 'Advanced');

-- Insert User Quiz Results
INSERT INTO UserQuizResults (UserID, QuizID, Score, DateTaken)
VALUES 
(1, 1, 80, '2024-09-01'),
(2, 2, 75, '2024-09-02'),
(3, 3, 90, '2024-09-03'),
(4, 4, 85, '2024-09-04'),
(5, 5, 95, '2024-09-05'),
(6, 6, 70, '2024-09-01'),
(7, 7, 88, '2024-09-02'),
(8, 8, 92, '2024-09-03'),
(9, 9, 78, '2024-09-04'),
(10, 10, 87, '2024-09-05');

-- Insert Badges
INSERT INTO Badges (BadgeName, Description, PointsRequired)
VALUES 
('Novice Explorer', 'Complete your first sighting', 100),
('Shutterbug', 'Upload 10 wildlife photos', 500),
('Quiz Master', 'Score 90% or higher on 5 quizzes', 1000),
('Citizen Scientist', 'Log 50 unique species', 2000),
('Conservation Champion', 'Participate in a local conservation event', 3000),
('Forum Sage', 'Reach 100 helpful posts in the community forum', 4000),
('Rare Sight Spotter', 'Log a sighting of a critically endangered species', 5000),
('Globe Trotter', 'Log sightings from 5 different countries', 6000),
('Wildlife Whisperer', 'Achieve 1000 total sightings', 7000),
('Eco Warrior', 'Earn all other badges', 10000);

-- Insert User Badges
INSERT INTO UserBadges (UserID, BadgeID, DateEarned)
VALUES 
(1, 1, '2024-02-01'),
(2, 2, '2024-03-15'),
(3, 3, '2024-04-30'),
(4, 4, '2024-06-10'),
(5, 5, '2024-07-22'),
(6, 1, '2024-02-05'),
(7, 2, '2024-03-20'),
(8, 3, '2024-05-05'),
(9, 4, '2024-06-15'),
(10, 5, '2024-07-25');


-- View Users table
SELECT * FROM Users;

-- View Species table
SELECT * FROM Species;

-- View Sightings table
SELECT * FROM Sightings;

-- View App Features table
SELECT * FROM AppFeatures;

-- View User Activity table
SELECT * FROM UserActivity;

-- View Conservation Quizzes table
SELECT * FROM ConservationQuizzes;

-- View User Quiz Results table
SELECT * FROM UserQuizResults;

-- View Badges table
SELECT * FROM Badges;

-- View User Badges table
SELECT * FROM UserBadges;
