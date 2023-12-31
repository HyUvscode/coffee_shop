﻿Create Database DBCoffeeShop
GO
USE [DBCoffeeShop]
GO
Create table categories(
	category_id varchar(10) primary key,
	category_name Nvarchar(100) Not Null
)

Create table products(
	product_id INT IDENTITY(1,1) primary key,
	product_name Nvarchar(100) Not Null,
	product_img Nvarchar(MAX) Null,
	price Decimal(10,2) Not Null,
	category_id varchar(10),
	product_description Nvarchar(MAX) Null,
	FOREIGN KEY (category_id) REFERENCES categories(category_id),
)

Create table roles(
	role_id varchar(10) primary key,
	role_name Nvarchar(20)
)

Create table accounts(
	username varchar(50) primary key,
	[password] varchar(50) Not Null,
	account_id INT IDENTITY(1,1),
	fullname Nvarchar(255) Not Null,
	age Int Not Null,
	email Nvarchar(50) Not Null,
	[address] Nvarchar(255),
	phone varchar(30) Not Null,
	role_id varchar(10),
	FOREIGN KEY (role_id) REFERENCES roles(role_id)
)

Create table orders(
	order_id INT IDENTITY(1,1) primary key,
	[Date] date,
	staff_id varchar(50) not Null,
	customer_id varchar(50) Not Null,
	FOREIGN KEY (customer_id) REFERENCES accounts(username)
)

Create table order_details(
	orderDetail_id INT IDENTITY(1,1) primary key,
	quantity int Not Null,
	total_price Decimal(10,2) Not Null,
	product_id INT Not Null,
	order_id INT Not Null,
	FOREIGN KEY (product_id) REFERENCES products(product_id),
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
)

Create table cart(
	cart_id INT IDENTITY(1,1) primary key,
	username varchar(50) not null,
	total_price Decimal(10,2) not null,
	FOREIGN KEY (username) REFERENCES accounts(username)
)

Create table cart_items(
	cart_id INT not null,
	product_id INT not null,
	quantity INT not null,
	price INT not null,
	FOREIGN KEY (cart_id) REFERENCES cart(cart_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id),
)

INSERT INTO roles([role_id], [role_name]) VALUES (N'Ad','Admin')
INSERT INTO roles([role_id], [role_name]) VALUES (N'St','Staff')
INSERT INTO roles([role_id], [role_name]) VALUES (N'Cus','Customer')

----------ADMIN 
INSERT INTO [dbo].[accounts] ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) 
	VALUES (N'khuy',N'b331621d980680d0acd7625a741ce944',N'Hứa Khánh Huy',20,N'khanhuy0915@gmail.com', N'Sóc Trăng','0899689599',N'Ad')

INSERT INTO [dbo].[accounts] ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) 
	VALUES (N'admin',N'a3175a452c7a8fea80c62a198a40f6c9', N'Admin', 99, N'khanhuy0915@gmail.com',N'Cần Thơ','0123456789',N'Ad')

----------Staff 

INSERT INTO [dbo].[accounts] ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) 
VALUES (N'huy',N'e10adc3949ba59abbe56e057f20f883e',N'Khánh Huy Hứa',20,N'khuy@gmail.com', N'Cần Thơ','0899689599',N'St')

INSERT INTO [dbo].[accounts] ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) 
VALUES (N'QT',N'e10adc3949ba59abbe56e057f20f883e',N'Quách Ngọc Quỳnh Trang',21,N'qyhtrr_@gmail.com', N'Rạch Giá','0378410755',N'St')

----------Custumer 

INSERT INTO [dbo].[accounts] ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) 
         VALUES (N'chicuong', N'e10adc3949ba59abbe56e057f20f883e', N'Bùi Chí Cường',20, N'chicuong@gmail.com', N'Cần Thơ', '0894444444', N'Cus')

INSERT INTO [dbo].[accounts] ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) 
        VALUES (N'tuanzy',N'e10adc3949ba59abbe56e057f20f883e',N'Tuấn Zỹ',20,N'tuanzy@gmail.com', N'Cần Thơ','0895555555',N'Cus')

INSERT INTO [dbo].[accounts] ([username], [password],[fullname], [age], [email], [address], [phone], [role_id]) 
        VALUES (N'quocanh',N'e10adc3949ba59abbe56e057f20f883e',N'Nguyễn Quốc Anh',21,N'quocanh@gmail.com', N'Cần Thơ','0896666666',N'Cus')

-------------------
INSERT INTO [dbo].[categories]([category_id],[category_name]) 
	VALUES (N'Cf',N'Coffee')
INSERT INTO [dbo].[categories]([category_id],[category_name]) 
	VALUES (N'DN',N'Drink')
INSERT INTO [dbo].[categories]([category_id],[category_name]) 
	VALUES (N'FD',N'Food')


------------------- Cafe
INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Bạc Sỉu',N'/Cf1.jpg',29000,N'Cf',N'Một món đồ uống truyền thống của Hà Nội, kết hợp giữa cà phê đậm đà và sữa đặc, tạo nên hương vị đặc biệt và thú vị.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Cà Phê Đen Đá',N'/Cf2.jpg',29000,N'Cf',N'Hương thơm đậm đà, cảm giác sảng khoái của cà phê nguyên chất trên đá, giúp bạn tỉnh táo và hứng khởi trong ngày mới.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Cà Phê Muối',N'/Cf3.jpg',49000,N'Cf',N'Sự kết hợp độc đáo giữa vị đắng của cà phê và một chút muối nhẹ nhàng, tạo nên một trải nghiệm độc đáo và thú vị cho vị giác.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Cà Phê Sữa Đá',N'/Cf4.jpg',39000,N'Cf',N'Sự hòa quyện hoàn hảo giữa cà phê đậm đà và sữa ngọt mát, khi được pha trên đá tạo nên một món đồ uống thơm ngon, mát lạnh và sảng khoái.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Cappuccino',N'/Cf5.jpg',49000,N'Cf',N'Một sự kết hợp độc đáo giữa đường đen thơm ngon và sữa tươi mát lạnh, khi được pha trên đá tạo nên một món đồ uống ngọt ngào, đậm đà và sảng khoái.')

-------------------Drinks
INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Trà Đào',N'/DN1.jpg',49000,N'DN',N'Một loại đồ uống trà trái cây phổ biến, có hương vị tươi mát của trà pha chế kết hợp với vị ngọt tự nhiên và mùi thơm của đào, tạo nên một món uống trái cây thơm ngon và sảng khoái.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Trà Đào Kombucha',N'/DN2.jpg',59000,N'DN',N'Sự kết hợp tuyệt vời giữa trà đào tươi mát và Kombucha tự nhiên lên men, kích thích sự cân bằng và sức khỏe tổng thể.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Trà Đen',N'/DN3.jpg',49000,N'DN',N'Loại trà được chế biến từ lá trà Camellia sinensis, có màu đen đặc trưng và hương vị đậm đà, thường được thưởng thức nóng hoặc đá, mang đến sự sảng khoái và thư giãn cho người uống.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Trà Lài Hạt Sen',N'/DN4.jpg',49000,N'DN',N'Một loại trà truyền thống của Việt Nam, kết hợp giữa lái (một loại lá trà) và hạt sen tươi, mang lại cảm giác thư thái và sảng khoái khi thưởng thức.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Trà Vải',N'/DN5.jpg',39000,N'DN',N'Một loại trà trái cây phổ biến, được làm từ lá trà kết hợp với vải tươi, mang đến cảm giác sảng khoái và thỏa mái khi thưởng thức.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Frosty Caramel',N'/DN6.jpg',59000,N'DN',N'Đồ uống đặc biệt và mát lạnh, kết hợp giữa kem, caramel và đá, kem mịn và hấp dẫn, mang lại cảm giác mát lạnh và sảng khoái trong ngày nóng.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Frosty Dâu',N'/DN7.jpg',59000,N'DN',N'Đồ uống mát lạnh và thú vị, kết hợp giữa dâu tươi, kem và đá, mang đến cảm giác sảng khoái và hứng khởi khi thưởng thức.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Frosty Macca Choco Chip',N'/DN8.jpg',59000,N'DN',N'Đồ uống thơm ngon và độc đáo, kết hợp giữa hạt macca, viên chocolate chip và đá, mang lại cảm giác thư giãn và ngọt ngào khi thưởng thức.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Frosty Phúc Bồn Tử',N'/DN9.jpg',59000,N'DN',N'Đồ uống độc đáo và bổ dưỡng, kết hợp giữa trái Phúc Bồn Tử tươi, kem và đá, mang đến cảm giác sảng khoái và hứng khởi khi thưởng thức.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Frosty Xoài Nhiệt Đới',N'/DN10.jpg',59000,N'DN',N'Đồ uống thú vị và mát lạnh, kết hợp giữa xoài tươi, kem và đá, mang đến cảm giác sảng khoái và hứng khởi trong những ngày nóng.')

-------------------Foods (Banh Man)
INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Bánh Mì Chà Bông Phô Mai',N'/FD1.jpg',29000,N'FD',N'Món ăn độc đáo và ngon miệng, với lớp bánh mì giòn tan, kết hợp hài hòa giữa chà bông thơm ngon và lớp phô mai béo ngậy, mang đến trải nghiệm ẩm thực đặc biệt và hấp dẫn.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Bánh Mì Gậy Cá Ngừ Mayo',N'/FD2.jpg',29000,N'FD',N'Món ăn độc đáo và ngon lành, với lớp bánh mì mềm mịn, kết hợp với miếng cá ngừ thơm ngon, được phủ lớp mayo kem mịn và các loại rau sống tươi ngon, mang đến trải nghiệm ẩm thực ngon miệng và bổ dưỡng.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Bánh Mì Que Pate',N'/FD3.jpg',19000,N'FD',N'Món ăn truyền thống và phổ biến, với lớp bánh mì giòn tan, bên trong là phần nhân pate thơm ngon, tạo nên hương vị độc đáo và sự kết hợp hấp dẫn của các thành phần, mang đến trải nghiệm ẩm thực đặc biệt và ngon miệng.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Bánh Mì Việt Nam Thịt Nguội',N'/FD4.jpg',29000,N'FD',N'Món ăn truyền thống và phổ biến, với lớp bánh mì giòn tan, kết hợp với thịt nguội thơm ngon, pho mát, rau sống và gia vị truyền thống như hành, ngò, mang đến trải nghiệm ẩm thực đặc trưng và ngon miệng.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Croissant Trứng Muối',N'/FD5.jpg',29000,N'FD',N'Món ăn sáng ngon lành và độc đáo, với lớp bánh croissant giòn tan, bên trong là trứng muối mềm mịn và hấp dẫn, mang đến trải nghiệm ẩm thực đặc biệt và ngon miệng.')

-------------------Foods (Banh Ngot)
INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Mochi Kem Matcha',N'/FD6.jpg',19000,N'FD',N'Bánh mochi truyền thống của Nhật Bản, có nhân kem matcha thơm ngon và mịn màng, được bọc bởi lớp vỏ mochi mềm dai, mang đến trải nghiệm ẩm thực ngon lành và đặc biệt.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Mochi Kem Việt Quất',N'/FD7.jpg',19000,N'FD',N'Bánh mochi truyền thống có nguồn gốc từ Nhật Bản, với nhân kem việt quất mềm mịn và hương vị ngọt thanh, được bọc trong lớp vỏ mochi mềm dai, mang lại trải nghiệm ẩm thực đặc biệt và ngon miệng.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Mochi Kem Xoài',N'/FD8.jpg',19000,N'FD',N'Bánh mochi truyền thống, có nhân kem xoài thơm ngon và mịn màng, được bọc trong lớp vỏ mochi mềm dai, mang đến trải nghiệm ẩm thực ngon lành và thú vị với hương vị trái cây đặc trưng của xoài.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Mousse Gấu Chocolate',N'/FD9.jpg',19000,N'FD',N'Món tráng miệng ngọt ngào và đáng yêu, với lớp kem mousse chocolate nhẹ nhàng và mịn màng, hình dáng như một chú gấu đáng yêu, mang đến trải nghiệm ẩm thực ngon miệng và thú vị.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Mousse Red Velvet',N'/FD10.jpg',19000,N'FD',N'Món tráng miệng đặc biệt và hấp dẫn, với lớp kem mousse màu đỏ đặc trưng của bánh Red Velvet, mềm mịn và thơm ngon, mang đến trải nghiệm ẩm thực ngọt ngào và thú vị cho người thưởng thức.')

-------------------Foods (Banh Kem)

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'CloudBurst',N'/FD11.jpg',69000,N'FD',N'Sự kết hợp tuyệt vời giữa lớp kem mịn và hương vị trái cây đa dạng, tạo nên một trải nghiệm ngọt ngào và mát lạnh như những đám mây tràn đầy hương vị.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Manjari',N'/FD12.jpg',69000,N'FD',N'Sự hòa quyện tuyệt vời giữa kem sô-cô-la cao cấp Manjari và lớp kem mịn, tạo nên một trải nghiệm độc đáo và ngọt ngào cho những tín đồ sô-cô-la.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Versaille',N'/FD13.jpg',69000,N'FD',N'Sự kết hợp tinh tế giữa kem hạt tiêu và lớp kem mousse nhẹ nhàng, tạo nên một trải nghiệm thượng lưu và sang trọng cho những người yêu thích hương vị độc đáo.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Meraki',N'/FD14.jpg',69000,N'FD',N'Tác phẩm nghệ thuật bằng kem, kết hợp giữa hương vị tinh tế và thiết kế độc đáo, tạo nên một trải nghiệm trực quan và ngọt ngào cho thực khách.')

INSERT INTO [dbo].[products]([product_name],[product_img],[price],[category_id],[product_description])
	VALUES(N'Elfie',N'/FD15.jpg',69000,N'FD',N'Món tráng miệng đáng yêu và phá cách, với lớp kem mousse nhẹ và lớp vỏ bánh mềm mịn, được trang trí với hình ảnh và họa tiết đáng yêu của các nhân vật huyền thoại, mang đến trải nghiệm thần tiên và ngọt ngào.')

-------------------

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2023-11-01' AS Date),N'huy',N'quocanh')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-11-01' AS Date),N'huy',N'quocanh')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-05-08' AS Date),N'QT',N'chicuong')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-05-08' AS Date),N'QT',N'tuanzy')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-12-20' AS Date),N'huy',N'chicuong')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-01-05' AS Date),N'huy',N'tuanzy')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-01-05' AS Date),N'QT',N'quocanh')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-01-05' AS Date),N'QT',N'tuanzy')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-08-09' AS Date),N'huy',N'chicuong')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-08-09' AS Date),N'QT',N'chicuong')

INSERT INTO [dbo].[orders]([Date],[staff_id],[customer_id])
	VALUES(CAST(N'2022-07-20' AS Date),N'minhthu',N'trungthanh')

-------------------

INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(1,1,2,(29*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(1,16,1,(29))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(2,20,3,(29*3))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(2,22,2,(19*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(3,10,5,(39*5))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(3,13,10,(59*10))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(4,28,3,(69*3))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(4,8,5,(49*5))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(5,17,2,(29*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(5,6,6,(49*6))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(5,23,3,(19*3))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(6,30,2,(69*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(7,23,3,(19*3))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(7,30,2,(69*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(7,17,7,(29*7))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(8,10,2,(39*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(8,13,3,(59*3))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(8,28,6,(69*6))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(8,8,3,(49*3))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(9,23,6,(19*6))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(9,30,2,(69*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(10,15,6,(59*6))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(10,20,2,(29*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(10,16,1,(29))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(10,20,8,(29*8))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(10,22,2,(19*2))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(11,30,5,(69*5))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(11,23,3,(19*3))
INSERT INTO [dbo].[order_details](order_id,product_id,quantity,total_price)
	VALUES(11,30,8,(69*8))



