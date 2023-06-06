create schema hotel_management;
use  hotel_management;

INSERT INTO room_class VALUES (1, 'Single');
INSERT INTO room_class VALUES (2, 'Double');
INSERT INTO room_class VALUES (3, 'Triple');
INSERT INTO room_class VALUES (4, 'Executive Suite');
INSERT INTO room_class VALUES (5, 'Junior Suite');
INSERT INTO room_class VALUES (6, 'President Suite');
INSERT INTO room_class VALUES (7, 'Connecting Room');

INSERT INTO room VALUES (1, 'A room assigned to one person. May have one or more beds. The room size or area of Single Rooms are generally between 37 m² to 45 m².', '350',1);
INSERT INTO room VALUES (2, 'A room assigned to two people. May have one or more beds. The room size or area of Double Rooms are generally between 40 m² to 45 m².', '550',2);
INSERT INTO room VALUES (3, 'A room that can accommodate three persons and has been fitted with three twin beds, one double bed and one twin bed or two double beds.', '700',3);
INSERT INTO room VALUES (4, 'A parlour or living room connected with to one or more bedrooms. A room with one or more bedrooms and a separate living space.', '800',4);
INSERT INTO room VALUES (5, 'A single room with a bed and sitting area. Sometimes the sleeping area is in a bedroom separate from the parlour or living room.', '750',5);
INSERT INTO room
 VALUES (6, 'The most expensive room. Similar to the normal suites, a president suite always has one or more bedrooms and a living space with a strong emphasis on grand in-room decoration, high-quality amenities and supplies, and tailor-made services', '900',6);
INSERT INTO room VALUES (7, 'Rooms with individual entrance doors from the outside and a connecting door between. Guests can move between rooms without going through the hallway.', '600',7);

INSERT INTO user VALUES (1, 'Ha Noi', 'swp@gmail.com', 'FPT SWP391', '1234', '0965571872', 1, 'admin');
INSERT INTO user VALUES (2, 'Ha Noi','honganh@gmail.com','Đoàn Hồng An', 'honganstaff', '09234354343',2,'honganh123');



