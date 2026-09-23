-- ========================================================
-- FLASHMART REPORTS - FIXED
-- ========================================================
CREATE DATABASE IF NOT EXISTS flashmart_db;
USE flashmart_db;

-- Tạo bảng
CREATE TABLE Customers (customer_id INT PRIMARY KEY, name VARCHAR(50));
CREATE TABLE Products (product_id INT PRIMARY KEY, product_name VARCHAR(50));
CREATE TABLE Orders (order_id INT PRIMARY KEY, customer_id INT, product_id INT);

-- Chèn dữ liệu
INSERT INTO Customers VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie');
INSERT INTO Products VALUES (101, 'Laptop'), (102, 'Mouse'), (103, 'Keyboard');
INSERT INTO Orders VALUES (1001, 1, 101), (1002, 1, 102), (1003, 2, 101);

-- ========================================================
-- BÁO CÁO 1: Marketing - Tất cả khách hàng + số đơn
-- ========================================================
SELECT 
    c.customer_id, 
    c.name, 
    COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- ========================================================
-- BÁO CÁO 2: Kho vận - Sản phẩm chưa từng bán
-- ========================================================
SELECT 
    p.product_id, 
    p.product_name
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;
# Phân tích: COUNT(o.order_id) vs COUNT(*)

Trong truy vấn LEFT JOIN, việc chọn COUNT(o.order_id) thay vì COUNT(*) 
là cực kỳ quan trọng để có kết quả chính xác.

Lý do: COUNT(*) đếm TẤT CẢ các hàng, kể cả hàng có giá trị NULL. 
Khi LEFT JOIN, khách hàng Charlie (chưa mua hàng) vẫn xuất hiện 
1 hàng với o.order_id = NULL. COUNT(*) sẽ đếm hàng này → trả về 1, 
SAI vì Charlie có 0 đơn hàng.

Ngược lại, COUNT(o.order_id) chỉ đếm các giá trị KHÁC NULL. 
Với Charlie, o.order_id = NULL → không được đếm → trả về 0, ĐÚNG.

Nguyên tắc: Khi LEFT JOIN và muốn đếm bản ghi ở bảng phải, 
luôn dùng COUNT(tên_cột_của_bảng_phải), không dùng COUNT(*).
  # Nhật ký hỏi đáp AI

## Prompt 1: Phân biệt JOIN mặc định
**Hỏi:** Trong MySQL, JOIN mặc định hoạt động như thế nào?
**Đáp:** JOIN = INNER JOIN, chỉ giữ bản ghi khớp ở cả 2 bảng.

## Prompt 2: COUNT với LEFT JOIN
**Hỏi:** COUNT(*) và COUNT(cột) khác nhau thế nào khi LEFT JOIN?
**Đáp:** COUNT(*) đếm cả NULL → sai. COUNT(cột) bỏ NULL → đúng.

## Prompt 3: Anti-Join
**Hỏi:** Tại sao WHERE o.id IS NULL phải đi kèm LEFT JOIN?
**Đáp:** INNER JOIN không bao giờ cho NULL ở bảng phải → WHERE vô nghĩa.

## Prompt 4: Hiệu năng
**Hỏi:** LEFT JOIN + IS NULL vs NOT IN subquery, cái nào nhanh hơn?
**Đáp:** LEFT JOIN thường nhanh hơn với index tốt. NOT IN chậm 
và nguy hiểm nếu có NULL trong subquery.
