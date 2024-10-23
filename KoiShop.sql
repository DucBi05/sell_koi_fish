Create database KoiShop;
use koishop;

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY auto_increment,
    CustomerName VARCHAR(100) not null,
    Password VARCHAR(255) not null,
    Phone varchar(12) not null,
    Address VARCHAR(255) not null
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY auto_increment,
    StaffName VARCHAR(100) not null,
    password VARCHAR(100) not null
);

create table KoiFishCategory (
	id int primary key auto_increment,
    name nvarchar(20) not null
);

CREATE TABLE Fish (
    KoiID INT PRIMARY KEY auto_increment,
    idCategory int not null,
    name nvarchar(50) not null,
    Origin VARCHAR(100) not null,
    Gender VARCHAR(10) not null,
    Age float not null,
    Size FLOAT not null,
    Breed VARCHAR(50) not null,
    FoodAmountPerDay FLOAT not null,
    Image varchar(500),
    Price float not null default 0,
    
    foreign key (idCategory) references KoiFishCategory(id)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY not null,
    CustomerID INT not null,
    StaffID INT not null,
    OrderDate DATE,
    Status VARCHAR(50),
    PaymentMethod VARCHAR(50) not null,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

CREATE TABLE OrderDetail (
    OrderDetailID INT PRIMARY KEY not null,
    OrderID INT not null,
    KoiID INT not null,
    PromotionID INT not null,
    Quantity INT,
    SalePrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (KoiID) REFERENCES Fish(KoiID)
);

CREATE TABLE Consignment (
    ConsignmentID INT PRIMARY KEY not null,
    CustomerID INT not null,
    KoiID INT not null,
    StartDate DATE not null,
    EndDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (KoiID) REFERENCES Fish(KoiID)
);

CREATE TABLE Promotion (
    PromotionID INT PRIMARY KEY not null,
    DiscountPercent INT not null,
    Description VARCHAR(255)
);

CREATE TABLE RatingFeedback (
    FeedbackID INT PRIMARY KEY,
    CustomerID INT,
    KoiID INT,
    Rating INT,
    Comment TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (KoiID) REFERENCES Fish(KoiID)
);

CREATE TABLE BlogPosts (
    BlogID INT PRIMARY KEY,
    CustomerID INT,
    Title VARCHAR(255),
    Content TEXT,
    AuthorID INT,
    PostDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Staff(StaffID)
);

CREATE TABLE News (
    NewsID INT PRIMARY KEY,
    CustomerID INT,
    Title VARCHAR(255),
    Content TEXT,
    AuthorID INT,
    PublishDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Staff(StaffID)
);

CREATE TABLE FAQ (
    FAQID INT PRIMARY KEY,
    Question TEXT,
    Answer TEXT
);

insert into KoiFishCategory(name) value('Kohaku');
insert into KoiFishCategory(name) value('Ogon');
insert into KoiFishCategory(name) value('Showa');
insert into KoiFishCategory(name) value('Tancho');
insert into KoiFishCategory(name) value('Shusui');
insert into KoiFishCategory(name) value('Sanke');
insert into KoiFishCategory(name) value('Chagoi');
insert into KoiFishCategory(name) value('Utsuri');
insert into KoiFishCategory(name) value('Kumonryu');
insert into KoiFishCategory(name) value('Asagi');
insert into KoiFishCategory(name) value('Karashi');
insert into KoiFishCategory(name) value('Bekko');

insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Tancho Kohaku',
'Dainichi Koi Farm', 'Cái', 4, 84, 'Tancho Kohaku', 15000, 80000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 6, 94, 'Kohaku', 24000, 93000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 7, 91, 'Kohaku', 22000, 860000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 5, 93, 'Kohaku', 23000, 880000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 3, 85, 'Kohaku', 17000, 810000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Maruten Kohaku',
'Dainichi Koi Farm', 'Cái', 7, 80, 'Kohaku', 13000, 740000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 3, 90, 'Kohaku', 19000, 890000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 2, 65, 'Kohaku', 5000, 570000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 5, 101, 'Kohaku', 30000, 100000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 3, 70, 'Kohaku', 9000, 64000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 2, 60, 'Kohaku', 3000, 50000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 4, 87, 'Kohaku', 16000, 82000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(1, 'Kohaku',
'Dainichi Koi Farm', 'Cái', 3, 77, 'Kohaku', 10000, 70000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Yamabuki Ogon',
'Dainichi Koi Farm', 'Cái', 3, 75, 'Ogon', 8000, 66000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Yamabuki Ogon',
'Dainichi Koi Farm', 'Cái', 4, 85, 'Ogon', 15000, 78000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Yamabuki Ogon',
'Dainichi Koi Farm', 'Cái', 3, 80, 'Ogon', 11000, 70000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Yamabuki Ogon',
'Dainichi Koi Farm', 'Cái', 3, 67, 'Ogon', 6000, 59000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Platinum Ogon',
'Dainichi Koi Farm', 'Cái', 4, 82, 'Ogon', 14000, 74000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Platinum Ogon',
'Dainichi Koi Farm', 'Cái', 4, 85, 'Ogon', 16000, 80000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Yamabuki Ogon',
'Dainichi Koi Farm', 'Cái', 2, 70, 'Ogon', 9000, 68000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Ogon',
'Dainichi Koi Farm', 'Cái', 3, 75, 'Ogon', 12000, 73000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Platinum Ogon',
'Dainichi Koi Farm', 'Cái', 2, 60, 'Ogon', 3000, 51000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(2, 'Murasei Mizuho Ogon',
'Dainichi Koi Farm', 'Cái', 2, 61, 'Ogon', 3500, 60000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 5, 97, 'Showa', 24000, 99000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 3, 78, 'Showa', 13500, 76000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 6, 100, 'Showa', 26000, 106000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 4, 80, 'Showa', 15000, 80000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 5, 100, 'Showa', 26000, 103000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 3, 76, 'Showa', 12000, 77000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 3, 70, 'Showa', 10000, 69000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Showa',
'Dainichi Koi Farm', 'Cái', 3, 72, 'Showa', 11000, 73000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Tancho Showa',
'Dainichi Koi Farm', 'Cái', 2.5, 68, 'Tancho Showa', 9300, 69000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(3, 'Doitsu Showa',
'Dainichi Koi Farm', 'Cái', 5, 87, 'Showa', 17000, 83000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 4, 87, 'Tancho', 17000, 84000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 4, 80, 'Tancho', 11000, 75000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 3, 82, 'Tancho', 14000, 79000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Couple Tancho',
'Dainichi Koi Farm', 'Cái', 3, 70, 'Tancho', 10000, 72000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 1, 35, 'Tancho', 600, 36000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 2, 55, 'Tancho', 2800, 52000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 2, 53, 'Tancho', 2000, 49000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 2, 54, 'Tancho', 2200, 39000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 2, 48, 'Tancho', 1700, 43000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(4, 'Tancho',
'Dainichi Koi Farm', 'Cái', 4, 70, 'Tancho', 10000, 71000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 2, 58, 'Shusui', 3200, 59000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 2, 65, 'Shusui', 5000, 67000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 4, 80, 'Shusui', 7000, 82000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 3, 70, 'Shusui', 6400, 70000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 3, 75, 'Shusui', 6600, 77000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 2, 60, 'Shusui', 3500, 63000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 2.5, 75, 'Shusui', 11000, 78000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 2, 50, 'Shusui', 2000, 51000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 2, 60, 'Shusui', 3500, 60000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(5, 'Shusui',
'Dainichi Koi Farm', 'Cái', 1.5, 45, 'Shusui', 1200, 42000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Trại Ogata', 'Cái', 2.5, 75, 'Sanke', 11000, 70000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Trại Oyaji', 'Cái', 3, 80, 'Sanke', 12000, 75000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Dainichi Koi Farm', 'Cái', 4, 90, 'Sanke', 17000, 150000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Dainichi Koi Farm', 'Cái', 3, 70, 'Sanke', 9000, 71000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Dainichi Koi Farm', 'Cái', 4, 78, 'Sanke', 11100, 79000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Couple Sanke',
'Dainichi Koi Farm', 'Đực', 4, 85, 'Sanke', 14000, 88000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Dainichi Koi Farm', 'Cái', 3, 76, 'Sanke', 10600, 74000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Dainichi Koi Farm', 'Cái', 4, 87, 'Sanke', 15000, 90000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Dainichi Koi Farm', 'Cái', 5, 90, 'Sanke', 20000, 94000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(6, 'Sanke',
'Dainichi Koi Farm', 'Cái', 5, 93, 'Sanke', 22000, 105000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 4, 80, 'Chagoi', 11000, 82000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 5, 90, 'Chagoi', 20000, 93000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 3, 78, 'Chagoi', 10500, 80000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Supper jumbo Chagoi',
'Dainichi Koi Farm', 'Cái', 5, 99, 'Chagoi', 26000, 120000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 4, 85, 'Chagoi', 13000, 88000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 4, 87, 'Chagoi', 15000, 85000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 2, 58, 'Chagoi', 3000, 60000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 4, 75, 'Chagoi', 8500, 78000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 3, 80, 'Chagoi', 11000, 83000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Doitsu Chagoi',
'Dainichi Koi Farm', 'Cái', 2, 49, 'Doitsu Chagoi', 1700, 52000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Doitsu Chagoi',
'Dainichi Koi Farm', 'Cái', 2, 57, 'Doitsu Chagoi', 2900, 60000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(7, 'Chagoi',
'Dainichi Koi Farm', 'Cái', 2, 67, 'Chagoi', 5300, 69000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Hi Utsuri',
'Dainichi Koi Farm', 'Cái', 3, 80, 'Utsuri', 10000, 83000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Hi Utsuri',
'Dainichi Koi Farm', 'Cái', 1.5, 45, 'Utsuri', 1200, 50000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Ki Utsuri',
'Dainichi Koi Farm', 'Cái', 2, 70, 'Utsuri', 7000, 72000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Ki Utsuri',
'Dainichi Koi Farm', 'Cái', 3, 85, 'Utsuri', 15000, 90000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Hikari Utsuri',
'Dainichi Koi Farm', 'Cái', 2.5, 60, 'Utsuri', 3500, 64000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Hikari Utsuri',
'Dainichi Koi Farm', 'Cái', 5, 98, 'Utsuri', 24000, 130000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Shiro Utsuri',
'Dainichi Koi Farm', 'Cái', 3, 84, 'Utsuri', 14000, 90000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(8, 'Shiro Utsuri',
'Dainichi Koi Farm', 'Cái', 2, 74, 'Utsuri', 8300, 74000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 3, 84, 'Kumonryu', 14000, 88000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 3, 80, 'Kumonryu', 12000, 85000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 5, 101, 'Kumonryu', 28000, 115000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 2, 68, 'Kumonryu', 6800, 70000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 3, 79, 'Kumonryu', 9500, 82000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 1, 37, 'Kumonryu', 600, 40000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 3, 90, 'Kumonryu', 14000, 93000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 2, 70, 'Kumonryu', 7000, 71000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(9, 'Kumonryu',
'Dainichi Koi Farm', 'Cái', 4, 93, 'Kumonryu', 23000, 96000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 2, 60, 'Asagi', 3500, 63000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 3, 70, 'Asagi', 7000, 72000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 4, 80, 'Asagi', 10000, 82000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 3, 75, 'Asagi', 8500, 78000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 2, 55, 'Asagi', 2800, 57000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Trại Izumiya', 'Cái', 1, 47, 'Tanaka Asagi', 1400, 50000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Trại Hirashin', 'Cái', 2, 55, 'Yamaju Asagi', 2800, 58000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 2, 53, 'Asagi', 2500, 52000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 1, 52, 'Asagi', 2500, 52000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 3, 81, 'Asagi', 10000, 84000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(10, 'Asagi',
'Dainichi Koi Farm', 'Cái', 2, 45, 'Asagi', 1200, 47000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 3, 72, 'Karashi', 7100, 74000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 4, 88, 'Karashi', 17000, 90000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 4, 92, 'Karashi', 21000, 95000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 3, 63, 'Karashi', 4000, 65000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 1, 38, 'Karashi', 700, 40000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 4, 85, 'Karashi', 15000, 89000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 2, 70, 'Karashi', 7000, 71000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 3, 79, 'Karashi', 9000, 80000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 3, 81, 'Karashi', 10600, 80000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 1, 45, 'Karashi', 1200, 42000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(11, 'Karashi',
'Dainichi Koi Farm', 'Cái', 4, 83, 'Karashi', 13000, 85000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(12, 'Shiro Bekko',
'Dainichi Koi Farm', 'Cái', 3, 86, 'Shiro Bekko', 15000, 90000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(12, 'Bekko',
'Dainichi Koi Farm', 'Cái', 3, 80, 'Bekko', 10000, 81000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(12, 'Bekko',
'Dainichi Koi Farm', 'Cái', 3, 79, 'Bekko', 9600, 79000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(12, 'Bekko',
'Dainichi Koi Farm', 'Cái', 3, 75, 'Bekko', 8500, 77000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(12, 'Bekko',
'Trại Maruhiro', 'Cái', 2, 65, 'Bekko', 5000, 66000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(12, 'Bekko',
'Trại Maruhiro', 'Cái', 3, 80, 'Bekko', 10000, 81000000);
insert into fish(idCategory, name, Origin, Gender, Age, Size, Breed, FoodAmountPerDay, Price) value(12, 'Bekko',
'Trại Oyaji', 'Cái', 2, 62, 'Bekko', 4000, 63000000);