-- ========================================================
-- BÀI TẬP TRUY VẤN CSDL QUẢN LÝ SINH VIÊN
-- ========================================================
USE QuanLySinhVien;

-- Câu 1: Sinh viên có tên bắt đầu bằng 'h'
SELECT *
FROM Student
WHERE StudentName LIKE 'h%';

-- Câu 2: Lớp học bắt đầu vào tháng 12
SELECT *
FROM Class
WHERE MONTH(StartDate) = 12;

-- Câu 3: Môn học có credit từ 3 đến 5
SELECT *
FROM Subject
WHERE Credit BETWEEN 3 AND 5;

-- Câu 4: Đổi mã lớp của Hung thành 2
UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';

-- Câu 5: Hiển thị điểm, sắp xếp giảm dần theo điểm, tăng dần theo tên
SELECT S.StudentName, Sub.SubName, M.Mark
FROM Student S
JOIN Mark M ON S.StudentID = M.StudentID
JOIN Subject Sub ON M.SubID = Sub.SubID
ORDER BY M.Mark DESC, S.StudentName ASC;