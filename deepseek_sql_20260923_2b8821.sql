-- ========================================================
-- BÀI TẬP CSDL QUẢN LÝ BÁN HÀNG
-- ========================================================
CREATE DATABASE IF NOT EXISTS QuanLyBanHang;
USE QuanLyBanHang;

-- Tạo bảng
CREATE TABLE Customer (
    cID   INT PRIMARY KEY,
    Name  VARCHAR(25),
    cAge  TINYINT
);

CREATE TABLE Product (
    pID     INT PRIMARY KEY,
    pName   VARCHAR(25),
    pPrice  INT
);

CREATE TABLE `Order` (
    oID         INT PRIMARY KEY,
    cID         INT,
    oDate       DATETIME,
    oTotalPrice INT,
    FOREIGN KEY (cID) REFERENCES Customer(cID)
);

CREATE TABLE OrderDetail (
    oID    INT,
    pID    INT,
    odQTY  INT,
    PRIMARY KEY (oID, pID),
    FOREIGN KEY (oID) REFERENCES `Order`(oID),
    FOREIGN KEY (pID) REFERENCES Product(pID)
);

-- Chèn dữ liệu
INSERT INTO Customer VALUES
(1, 'Minh Quan', 10), (2, 'Ngoc Oanh', 20), (3, 'Hong Ha', 50);

INSERT INTO Product VALUES
(1, 'May Giat', 3), (2, 'Tu Lanh', 5), (3, 'Dieu Hoa', 7),
(4, 'Quat', 1), (5, 'Bep Dien', 2);

INSERT INTO `Order` VALUES
(1, 1, '2006-03-21', NULL),
(2, 2, '2006-03-23', NULL),
(3, 1, '2006-03-16', NULL);

INSERT INTO OrderDetail VALUES
(1, 1, 3), (1, 3, 7), (1, 4, 2),
(2, 1, 1), (3, 1, 8), (2, 5, 4), (2, 3, 3);

-- ========================================================
-- CÁC CÂU TRUY VẤN
-- ========================================================

-- Câu 1: Tất cả hóa đơn
SELECT oID, oDate, oTotalPrice FROM `Order`;

-- Câu 2: Khách đã mua hàng + sản phẩm
SELECT C.cID, C.Name AS CustomerName, P.pName AS ProductName
FROM Customer C
JOIN `Order` O ON C.cID = O.cID
JOIN OrderDetail OD ON O.oID = OD.oID
JOIN Product P ON OD.pID = P.pID
ORDER BY C.cID;

-- Câu 3: Khách chưa mua hàng
SELECT C.cID, C.Name
FROM Customer C
LEFT JOIN `Order` O ON C.cID = O.cID
WHERE O.oID IS NULL;

-- Câu 4: Tổng tiền từng hóa đơn
SELECT O.oID, O.oDate, SUM(OD.odQTY * P.pPrice) AS TotalPrice
FROM `Order` O
JOIN OrderDetail OD ON O.oID = OD.oID
JOIN Product P ON OD.pID = P.pID
GROUP BY O.oID, O.oDate
ORDER BY O.oID;