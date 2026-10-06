. Cấu trúc thư mục
text
rwd-layout/
├── index.html
└── style.css
2. Mã nguồn HTML (index.html)
html
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Layout với RWD</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- ============ HEADER ============ -->
    <div class="header">
        <h1>HEADER</h1>
    </div>

    <!-- ============ MAIN CONTAINER ============ -->
    <div class="main-container">

        <!-- Sidebar trái -->
        <div class="sidebar">
            <h2>SIDEBAR</h2>
            <p>Đây là cột sidebar bên trái.</p>
            <p>Trên mobile, sidebar sẽ chuyển thành full width và xếp trên nội dung chính.</p>
        </div>

        <!-- Nội dung chính -->
        <div class="content">
            <h2>CONTENT</h2>
            <p>
                Đây là phần nội dung chính của trang web. Trên desktop, 
                content nằm giữa bên cạnh sidebar. Trên mobile, content 
                sẽ chiếm toàn bộ chiều rộng màn hình.
            </p>
            <p>
                Responsive Web Design (RWD) giúp trang web hiển thị đẹp 
                trên mọi kích thước màn hình: desktop, tablet và mobile.
            </p>

            <!-- Grid các box con -->
            <div class="grid-boxes">
                <div class="box">Box 1</div>
                <div class="box">Box 2</div>
                <div class="box">Box 3</div>
                <div class="box">Box 4</div>
            </div>
        </div>

        <!-- Sidebar phải -->
        <div class="sidebar">
            <h2>SIDEBAR</h2>
            <p>Đây là cột sidebar bên phải.</p>
            <p>Trên tablet, sidebar phải có thể ẩn hoặc chuyển xuống dưới.</p>
        </div>

    </div>

    <!-- ============ FOOTER ============ -->
    <div class="footer">
        <h3>FOOTER</h3>
    </div>

</body>
</html>
3. Mã nguồn CSS (style.css)
css
/* ==================== RESET ==================== */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: #f4f4f4;
    color: #333;
    line-height: 1.6;
    padding: 10px;
}

/* ==================== HEADER ==================== */
.header {
    background-color: #2c3e50;
    color: #fff;
    padding: 30px;
    text-align: center;
    border-radius: 5px;
    margin-bottom: 10px;
}

.header h1 {
    font-size: 28px;
    letter-spacing: 3px;
}

/* ==================== MAIN CONTAINER (3 cột) ==================== */
.main-container {
    display: flex;
    gap: 10px;
    margin-bottom: 10px;
}

/* --- Sidebar --- */
.sidebar {
    flex: 1;
    background-color: #3498db;
    color: #fff;
    padding: 20px;
    border-radius: 5px;
    min-height: 400px;
}

.sidebar h2 {
    border-bottom: 2px solid rgba(255, 255, 255, 0.4);
    padding-bottom: 8px;
    margin-bottom: 12px;
    font-size: 20px;
}

.sidebar p {
    margin-bottom: 10px;
    font-size: 14px;
}

/* --- Content --- */
.content {
    flex: 2;
    background-color: #ecf0f1;
    padding: 20px;
    border-radius: 5px;
    min-height: 400px;
}

.content h2 {
    color: #2c3e50;
    border-bottom: 2px solid #1abc9c;
    padding-bottom: 8px;
    margin-bottom: 12px;
    font-size: 22px;
}

.content p {
    margin-bottom: 12px;
}

/* ==================== GRID BOXES ==================== */
.grid-boxes {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 10px;
    margin-top: 20px;
}

.box {
    background-color: #1abc9c;
    color: #fff;
    padding: 25px 10px;
    text-align: center;
    border-radius: 5px;
    font-weight: bold;
    transition: background-color 0.3s;
}

.box:hover {
    background-color: #16a085;
}

/* ==================== FOOTER ==================== */
.footer {
    background-color: #2c3e50;
    color: #fff;
    padding: 25px;
    text-align: center;
    border-radius: 5px;
}

.footer h3 {
    letter-spacing: 3px;
}

/* ==================== RESPONSIVE ==================== */

/* --- Tablet (<= 900px): Ẩn sidebar phải, còn 2 cột --- */
@media (max-width: 900px) {
    .main-container {
        flex-wrap: wrap;
    }

    .sidebar {
        flex: 1 1 30%;
        min-height: auto;
        padding: 15px;
    }

    .content {
        flex: 1 1 65%;
        min-height: auto;
    }

    /* Ẩn sidebar phải (cột thứ 3) */
    .sidebar:last-child {
        display: none;
    }

    .grid-boxes {
        grid-template-columns: repeat(2, 1fr);
    }
}

/* --- Mobile (<= 600px): Xếp chồng tất cả --- */
@media (max-width: 600px) {
    .main-container {
        flex-direction: column;
    }

    .sidebar,
    .content {
        flex: 1 1 100%;
        width: 100%;
    }

    /* Hiện lại sidebar phải, xếp dưới content */
    .sidebar:last-child {
        display: block;
    }

    .header h1 {
        font-size: 20px;
    }

    .grid-boxes {
        grid-template-columns: 1fr;
    }

    .sidebar h2,
    .content h2 {
        font-size: 18px;
    }
}
4. Giải thích cách hoạt động của RWD
🔹 Breakpoint (điểm ngắt)
RWD hoạt động dựa trên media queries – các điểm ngắt để thay đổi layout theo kích thước màn hình:

Kích thước	Thiết bị	Layout
> 900px	Desktop	3 cột: Sidebar – Content – Sidebar
≤ 900px	Tablet	2 cột: Sidebar – Content (ẩn sidebar phải)
≤ 600px	Mobile	1 cột: xếp chồng dọc
🔹 Flexbox cho layout chính
css
.main-container {
    display: flex;
    gap: 10px;
}

.sidebar { flex: 1; }   /* Cột phụ: 1 phần */
.content { flex: 2; }   /* Cột chính: 2 phần */
→ Tỉ lệ 1:2:1 giữa 3 cột.

🔹 Grid cho các box con
css
.grid-boxes {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 10px;
}
→ 4 cột đều nhau. Khi responsive, đổi thành 2 cột hoặc 1 cột.

🔹 Media Queries
css
@media (max-width: 900px) { ... }   /* Tablet */
@media (max-width: 600px) { ... }   /* Mobile */
→ CSS bên trong chỉ áp dụng khi màn hình ≤ kích thước chỉ định.

🔹 Meta Viewport (BẮT BUỘC cho RWD)
html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
