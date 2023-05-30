create database hotel_management_system;
use hotel_management_system;
CREATE table Admin(
    AccountId int NOT NULL PRIMARY KEY,
	Username nvarchar(50) NOT NULL,
	Password nvarchar(50) NOT NULL,
	Status bit NOT NULL
);

create table Staff(
	StaffId int NOT NULL PRIMARY KEY,
    StaffName nvarchar(50) NOT NULL,
    Username nvarchar(50) NOT NULL,
    Password nvarchar(50) NOT NULL
);

create table RoomClass(
    RoomClassId int NOT NULL PRIMARY KEY,
	RoomClassName nvarchar(100) NOT NULL
);

create table Room(
    RoomId int NOT NULL PRIMARY KEY,
	RoomClassId int NOT NULL,
	Description text NOT NULL,
	Price nvarchar(50) NOT NULL
);

create table Customer(
    CustomerId int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    CustomerName nvarchar(50) NOT NULL,
    Address text NOT NULL,
    Phone varchar(15) NOT NULL,
    Email text NOT NULL,
    username text NOT NULL, 
    password nvarchar(30) NOT NULL
);

create table Reservation(
     ReservationId int NOT NULL PRIMARY KEY,
	 CustomerId int NOT NULL,
	 RoomId int NOT NULL,
	 ReservationDate date NOT NULL,
	 DateCheckIn date NOT NULL,
	 DateCheckOut date NOT NULL
);

create table Feedback(
    FeedbackId int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	CustomerId int NOT NULL,
	Title nvarchar(50) NOT NULL,
	Content text NOT NULL
);

create table Payment(
    PaymentId int NOT NULL PRIMARY KEY,
    ReservationId int NOT NULL,
    PaymentDate date NOT NULL,
    PaymentDetail text NOT NULL,
    Amount float(10,2) NOT NULL,
    Status varchar(10) NOT NULL
);

ALTER TABLE Feedback ADD CONSTRAINT FK_Feedback FOREIGN KEY(CustomerId)
REFERENCES Customer (CustomerId);

ALTER TABLE Room ADD CONSTRAINT FK_Room FOREIGN KEY(RoomClassId)
REFERENCES RoomClass (RoomClassId);

ALTER TABLE Reservation ADD CONSTRAINT FK_Reservation FOREIGN KEY(CustomerId)
REFERENCES Customer(CustomerId);

ALTER TABLE Reservation ADD CONSTRAINT FK_Reservation_2 FOREIGN KEY(RoomId)
REFERENCES Room (RoomId);

ALTER TABLE Payment ADD CONSTRAINT FK_Payment FOREIGN KEY(ReservationId)
REFERENCES Reservation (ReservationId);

INSERT INTO RoomClass VALUES (1, 'Single');
INSERT INTO RoomClass VALUES (2, 'Double');
INSERT INTO RoomClass VALUES (3, 'Triple');
INSERT INTO RoomClass VALUES (4, 'Executive Suite');
INSERT INTO RoomClass VALUES (5, 'Junior Suite');
INSERT INTO RoomClass VALUES (6, 'President Suite');
INSERT INTO RoomClass VALUES (7, 'Connecting Room');

INSERT INTO Room
VALUES (1, 1, 'A room assigned to one person. May have one or more beds. The room size or area of Single Rooms are generally between 37 m² to 45 m².', '350');
INSERT INTO Room
VALUES (2, 2, 'A room assigned to two people. May have one or more beds. The room size or area of Double Rooms are generally between 40 m² to 45 m².', '550');
INSERT INTO Room
VALUES (3, 3, 'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.', '700');
INSERT INTO Room
VALUES (4, 4, 'A parlour or living room connected with to one or more bedrooms. A room with one or more bedrooms and a separate living space.', '800');
INSERT INTO Room
VALUES (5, 5, 'A single room with a bed and sitting area. Sometimes the sleeping area is in a bedroom separate from the parlour or living room.', '750');
INSERT INTO Room
VALUES (6, 6, 'The most expensive room provided by a hotel. Usually, only one president suite is available in one single hotel property. Similar to the normal suites, a president suite always has one or more bedrooms and a living space with a strong emphasis on grand in-room decoration, high-quality amenities and supplies, and tailor-made services', '900');
INSERT INTO Room
VALUES (7, 7, 'ooms with individual entrance doors from the outside and a connecting door between. Guests can move between rooms without going through the hallway.', '600');

INSERT INTO Customer(CustomerName, Address, Phone, Email, username, password) VALUES ('Jennie Nichols', 'Valwood Pkwy United States', '0985795912', 'jennie.nichols@example.com', 'jennie', 'adison');
INSERT INTO Customer(CustomerName, Address, Phone, Email, username, password) VALUES ('Hồ Sĩ Hòa', 'Khánh Hòa Việt Nam', '0782961437', 'HoSiHoa@gmail.com', 'hoa', 'hoahoa');
INSERT INTO Customer(CustomerName, Address, Phone, Email, username, password) VALUES ('Vũ Thị Như Ngọc', 'Bắc Ninh Việt Nam', '0910713299', 'VuThiNhuNgoc@gmail.com', 'nhungoc', 'nhungoc');
INSERT INTO Customer(CustomerName, Address, Phone, Email, username, password) VALUES ('Ngô Đông Tưởng', 'Hà Nội Việt Nam', '0806675554', 'NgoDongTuong@gmail.com', 'ngodong', 'dong');

INSERT INTO Staff VALUES (1, 'Đoàn Hồng An', 'honganstaff', 'hongan');
INSERT INTO Staff VALUES (2, 'Trần Thị Hoàng Lam', 'hoanglamstaff', 'hoanglam');

INSERT INTO Admin VALUES (1, 'admin1', 'admin1', 1);
INSERT INTO Admin VALUES (2, 'admin2', 'admin2', 1);







