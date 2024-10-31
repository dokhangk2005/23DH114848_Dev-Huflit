use Animals
-- Bảng Animals (Động vật)
CREATE TABLE Animals (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Habitat VARCHAR(255),
    Conservation_Status INT,
    Diet INT,
    Lifespan VARCHAR(50),
    Size VARCHAR(50),
    Image_URL VARCHAR(255),
    Region INT,
    FOREIGN KEY (Conservation_Status) REFERENCES ConservationStatus(Status_ID),
    FOREIGN KEY (Diet) REFERENCES Diet(Diet_ID),
    FOREIGN KEY (Region) REFERENCES Regions(Region_ID)
);

-- Bảng Regions (Khu vực)
CREATE TABLE Regions (
    Region_ID INT PRIMARY KEY,
    Region_Name VARCHAR(255),
    Description TEXT,
    Climate VARCHAR(255)
);

-- Bảng ConservationStatus (Tình trạng bảo tồn)
CREATE TABLE ConservationStatus (
    Status_ID INT PRIMARY KEY,
    Status_Name VARCHAR(255),
    Description TEXT
);

-- Bảng Habitat (Môi trường sống)\

CREATE TABLE Habitat (
    Habitat_ID INT PRIMARY KEY,
    Habitat_Type VARCHAR(255),
    Description TEXT
);

-- Bảng Diet (Chế độ ăn)
CREATE TABLE Diet (
    Diet_ID INT PRIMARY KEY,
    Diet_Type VARCHAR(255),
    Description TEXT
);


-- Bảng Comments (Bình luận)
CREATE TABLE Comment (
    Comment_ID INT PRIMARY KEY,
    User_ID INT,
    Animal_ID INT,
    Comment_Text TEXT,
    Date_Posted DATETIME,
    FOREIGN KEY (Animal_ID) REFERENCES Animals(ID)
);

-- Bảng Media (Hình ảnh/Video)
CREATE TABLE Media (
    Media_ID INT PRIMARY KEY,
    Animal_ID INT,
    Media_Type VARCHAR(50),
    URL VARCHAR(255),
    FOREIGN KEY (Animal_ID) REFERENCES Animals(ID)
);

-- Bảng Articles (Bài viết)
CREATE TABLE Articles (
    Article_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Content TEXT,
    Author VARCHAR(255),
    Date_Published DATETIME
);
-- Bảng Users (Người dùng)
CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    Username VARCHAR(255) UNIQUE,
    Password VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Date_Joined DATETIME,
    Role VARCHAR(50) -- Ví dụ: "user", "admin", v.v.
);


alter table Articles
add  FOREIGN KEY (Animals_ID) REFERENCES Animals (ID);

alter table  Habitat
add  FOREIGN KEY (Animals_ID) REFERENCES Animals (ID);

ALTER TABLE Comment
ADD FOREIGN KEY (User_ID) REFERENCES Users(User_ID);

ALTER TABLE Media
ADD User_ID INT;

ALTER TABLE Media
ADD FOREIGN KEY (User_ID) REFERENCES Users(User_ID);
     
