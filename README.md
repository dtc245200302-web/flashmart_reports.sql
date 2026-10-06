html
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facebook - Giao diện giản lược</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- ============ FIXED HEADER ============ -->
    <header class="header">
        <!-- Bên trái: Logo + Search -->
        <div class="header-left">
            <div class="logo">f</div>
            <input type="text" class="search-box" placeholder="🔍 Tìm kiếm trên Facebook">
        </div>

        <!-- Giữa: Menu điều hướng -->
        <nav class="header-center">
            <a href="#" class="nav-icon active" title="Trang chủ">🏠</a>
            <a href="#" class="nav-icon" title="Video">📺</a>
            <a href="#" class="nav-icon" title="Marketplace">🛒</a>
            <a href="#" class="nav-icon" title="Nhóm">👥</a>
            <a href="#" class="nav-icon" title="Trò chơi">🎮</a>
        </nav>

        <!-- Bên phải: Icon + Avatar -->
        <div class="header-right">
            <a href="#" class="icon-btn">☰</a>
            <a href="#" class="icon-btn">💬</a>
            <a href="#" class="icon-btn">🔔</a>
            <a href="#" class="avatar-link">
                <img src="https://i.pravatar.cc/40?img=12" alt="Avatar">
            </a>
        </div>
    </header>

    <!-- ============ MAIN CONTAINER ============ -->
    <div class="main-container">

        <!-- ============ SIDEBAR TRÁI ============ -->
        <aside class="sidebar sidebar-left">
            <ul class="menu-list">
                <li>
                    <img src="https://i.pravatar.cc/36?img=12" alt="">
                    <span>Nguyễn Văn A</span>
                </li>
                <li>
                    <span class="icon">👥</span>
                    <span>Bạn bè</span>
                </li>
                <li>
                    <span class="icon">📚</span>
                    <span>Nhóm</span>
                </li>
                <li>
                    <span class="icon">🛒</span>
                    <span>Marketplace</span>
                </li>
                <li>
                    <span class="icon">📺</span>
                    <span>Video</span>
                </li>
                <li>
                    <span class="icon">💾</span>
                    <span>Đã lưu</span>
                </li>
                <li>
                    <span class="icon">📅</span>
                    <span>Sự kiện</span>
                </li>
                <li>
                    <span class="icon">🎮</span>
                    <span>Trò chơi</span>
                </li>
            </ul>

            <div class="divider"></div>

            <h3 class="sidebar-title">Lối tắt của bạn</h3>
            <ul class="menu-list">
                <li>
                    <span class="icon shortcut">💻</span>
                    <span>Lập trình Web</span>
                </li>
                <li>
                    <span class="icon shortcut">🎨</span>
                    <span>Nhóm Thiết kế</span>
                </li>
                <li>
                    <span class="icon shortcut">📷</span>
                    <span>Nhiếp ảnh</span>
                </li>
            </ul>
        </aside>

        <!-- ============ NỘI DUNG CHÍNH ============ -->
        <main class="content">

            <!-- Stories -->
            <div class="stories">
                <div class="story-card">
                    <img src="https://picsum.photos/120/200?random=1" alt="Story">
                    <span class="story-name">Tin của bạn</span>
                </div>
                <div class="story-card">
                    <img src="https://picsum.photos/120/200?random=2" alt="Story">
                    <span class="story-name">Trần Thị B</span>
                </div>
                <div class="story-card">
                    <img src="https://picsum.photos/120/200?random=3" alt="Story">
                    <span class="story-name">Lê Văn C</span>
                </div>
                <div class="story-card">
                    <img src="https://picsum.photos/120/200?random=4" alt="Story">
                    <span class="story-name">Phạm D</span>
                </div>
            </div>

            <!-- Tạo bài viết -->
            <div class="create-post">
                <img src="https://i.pravatar.cc/40?img=12" alt="Avatar">
                <input type="text" placeholder="Bạn đang nghĩ gì thế, A?">
            </div>
            <div class="create-actions">
                <button>📷 Ảnh/Video</button>
                <button>😊 Cảm xúc</button>
                <button>📍 Check in</button>
            </div>

            <!-- Bài viết 1 -->
            <article class="post">
                <div class="post-header">
                    <img src="https://i.pravatar.cc/40?img=5" alt="Avatar">
                    <div>
                        <h4>Trần Thị B</h4>
                        <span class="time">2 giờ trước · 🌏</span>
                    </div>
                </div>
                <p class="post-content">
                    Hôm nay trời đẹp quá mọi người ơi! ☀️🌸
                </p>
                <img src="https://picsum.photos/600/350?random=10" alt="Post" class="post-image">
                <div class="post-actions">
                    <button>👍 Thích</button>
                    <button>💬 Bình luận</button>
                    <button>↗️ Chia sẻ</button>
                </div>
            </article>

            <!-- Bài viết 2 -->
            <article class="post">
                <div class="post-header">
                    <img src="https://i.pravatar.cc/40?img=8" alt="Avatar">
                    <div>
                        <h4>Lê Văn C</h4>
                        <span class="time">5 giờ trước · 🌏</span>
                    </div>
                </div>
                <p class="post-content">
                    Vừa hoàn thành xong project HTML5 + CSS. Cảm giác thật tuyệt! 💪
                </p>
                <div class="post-actions">
                    <button>👍 Thích</button>
                    <button>💬 Bình luận</button>
                    <button>↗️ Chia sẻ</button>
                </div>
            </article>

        </main>

        <!-- ============ SIDEBAR PHẢI ============ -->
        <aside class="sidebar sidebar-right">
            <h3 class="sidebar-title">Người liên hệ</h3>
            <ul class="contact-list">
                <li>
                    <img src="https://i.pravatar.cc/36?img=1" alt="">
                    <span>Nguyễn Văn A</span>
                </li>
                <li>
                    <img src="https://i.pravatar.cc/36?img=2" alt="">
                    <span>Trần Thị B</span>
                </li>
                <li>
                    <img src="https://i.pravatar.cc/36?img=3" alt="">
                    <span>Lê Văn C</span>
                </li>
                <li>
                    <img src="https://i.pravatar.cc/36?img=4" alt="">
                    <span>Phạm Thị D</span>
                </li>
                <li>
                    <img src="https://i.pravatar.cc/36?img=5" alt="">
                    <span>Hoàng Văn E</span>
                </li>
                <li>
                    <img src="https://i.pravatar.cc/36?img=6" alt="">
                    <span>Vũ Thị F</span>
                </li>
            </ul>

            <div class="divider"></div>

            <h3 class="sidebar-title">Nhóm của bạn</h3>
            <ul class="contact-list">
                <li>
                    <span class="icon shortcut">💻</span>
                    <span>Lập trình Web VN</span>
                </li>
                <li>
                    <span class="icon shortcut">🎨</span>
                    <span>Designers Group</span>
                </li>
            </ul>
        </aside>

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
    font-family: 'Segoe UI', Helvetica, Arial, sans-serif;
    background-color: #f0f2f5;
    color: #050505;
    padding-top: 56px; /* chừa chỗ cho fixed header */
}

/* ==================== FIXED HEADER ==================== */
.header {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    height: 56px;
    background-color: #ffffff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 16px;
    z-index: 1000;
}

/* --- Header bên trái --- */
.header-left {
    display: flex;
    align-items: center;
    gap: 10px;
    flex: 1;
    min-width: 0;
}

.logo {
    width: 40px;
    height: 40px;
    background-color: #1877f2;
    color: #fff;
    font-size: 28px;
    font-weight: bold;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    flex-shrink: 0;
}

.search-box {
    width: 240px;
    height: 40px;
    border: none;
    background-color: #f0f2f5;
    border-radius: 20px;
    padding: 0 16px;
    font-size: 14px;
    outline: none;
}

/* --- Header ở giữa --- */
.header-center {
    display: flex;
    justify-content: center;
    gap: 8px;
    flex: 1;
}

.nav-icon {
    width: 100px;
    height: 48px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 24px;
    text-decoration: none;
    border-radius: 8px;
    transition: background-color 0.2s;
}

.nav-icon:hover {
    background-color: #f0f2f5;
}

.nav-icon.active {
    border-bottom: 3px solid #1877f2;
    border-radius: 0;
    color: #1877f2;
}

/* --- Header bên phải --- */
.header-right {
    display: flex;
    align-items: center;
    justify-content: flex-end;
    gap: 8px;
    flex: 1;
}

.icon-btn {
    width: 40px;
    height: 40px;
    background-color: #e4e6eb;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    text-decoration: none;
    color: #050505;
    cursor: pointer;
    transition: background-color 0.2s;
}

.icon-btn:hover {
    background-color: #d8dadf;
}

.avatar-link img {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
    cursor: pointer;
}

/* ==================== MAIN CONTAINER (3 cột) ==================== */
.main-container {
    display: flex;
    max-width: 1400px;
    margin: 0 auto;
    padding: 16px 8px;
    gap: 16px;
}

/* ==================== SIDEBAR (dùng chung) ==================== */
.sidebar {
    width: 300px;
    flex-shrink: 0;
    position: sticky;
    top: 72px;
    align-self: flex-start;
    max-height: calc(100vh - 72px);
    overflow-y: auto;
    padding-right: 4px;
}

.sidebar-title {
    font-size: 16px;
    color: #65676b;
    margin: 8px 0;
    padding: 0 8px;
}

/* Scrollbar mảnh cho sidebar */
.sidebar::-webkit-scrollbar {
    width: 6px;
}
.sidebar::-webkit-scrollbar-thumb {
    background: #ccd0d5;
    border-radius: 3px;
}

/* ==================== MENU LIST (sidebar trái) ==================== */
.menu-list {
    list-style: none;
}

.menu-list li {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 8px;
    border-radius: 8px;
    cursor: pointer;
    font-size: 15px;
    font-weight: 500;
    transition: background-color 0.2s;
}

.menu-list li:hover {
    background-color: #e4e6eb;
}

.menu-list li img {
    width: 36px;
    height: 36px;
    border-radius: 50%;
    object-fit: cover;
}

.menu-list .icon {
    width: 36px;
    height: 36px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    background-color: #e4e6eb;
    border-radius: 50%;
}

.menu-list .icon.shortcut {
    background-color: #fff;
}

.divider {
    height: 1px;
    background-color: #ced0d4;
    margin: 8px 4px;
}

/* ==================== NỘI DUNG CHÍNH ==================== */
.content {
    flex: 1;
    min-width: 0;
    max-width: 680px;
    margin: 0 auto;
}

/* --- Stories --- */
.stories {
    display: flex;
    gap: 8px;
    margin-bottom: 16px;
    overflow-x: auto;
    padding-bottom: 4px;
}

.story-card {
    position: relative;
    width: 120px;
    height: 200px;
    flex-shrink: 0;
    border-radius: 10px;
    overflow: hidden;
    cursor: pointer;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s;
}

.story-card:hover {
    transform: scale(1.02);
}

.story-card img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.story-name {
    position: absolute;
    bottom: 8px;
    left: 8px;
    color: #fff;
    font-size: 13px;
    font-weight: 600;
    text-shadow: 0 1px 3px rgba(0, 0, 0, 0.7);
}

/* --- Create post --- */
.create-post {
    background-color: #fff;
    border-radius: 8px;
    padding: 12px 16px;
    display: flex;
    align-items: center;
    gap: 12px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
}

.create-post img {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
}

.create-post input {
    flex: 1;
    height: 40px;
    border: none;
    background-color: #f0f2f5;
    border-radius: 20px;
    padding: 0 16px;
    font-size: 15px;
    outline: none;
    cursor: pointer;
}

.create-post input:hover {
    background-color: #e4e6eb;
}

.create-actions {
    background-color: #fff;
    border-radius: 8px;
    padding: 8px;
    display: flex;
    justify-content: space-around;
    margin: 4px 0 16px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
}

.create-actions button {
    background: transparent;
    border: none;
    padding: 8px 16px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    color: #65676b;
    cursor: pointer;
    transition: background-color 0.2s;
}

.create-actions button:hover {
    background-color: #f0f2f5;
}

/* --- Post --- */
.post {
    background-color: #fff;
    border-radius: 8px;
    margin-bottom: 16px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
    overflow: hidden;
}

.post-header {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 12px 16px;
}

.post-header img {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
}

.post-header h4 {
    font-size: 15px;
    font-weight: 600;
}

.post-header .time {
    font-size: 13px;
    color: #65676b;
}

.post-content {
    padding: 0 16px 12px;
    font-size: 15px;
    line-height: 1.5;
}

.post-image {
    width: 100%;
    max-height: 500px;
    object-fit: cover;
}

.post-actions {
    display: flex;
    justify-content: space-around;
    border-top: 1px solid #e4e6eb;
    padding: 8px;
}

.post-actions button {
    flex: 1;
    background: transparent;
    border: none;
    padding: 8px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: 600;
    color: #65676b;
    cursor: pointer;
    transition: background-color 0.2s;
}

.post-actions button:hover {
    background-color: #f0f2f5;
}

/* ==================== CONTACT LIST (sidebar phải) ==================== */
.contact-list {
    list-style: none;
}

.contact-list li {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 8px;
    border-radius: 8px;
    cursor: pointer;
    font-size: 15px;
    font-weight: 500;
    transition: background-color 0.2s;
}

.contact-list li:hover {
    background-color: #e4e6eb;
}

.contact-list li img {
    width: 36px;
    height: 36px;
    border-radius: 50%;
    object-fit: cover;
}

.contact-list .icon {
    width: 36px;
    height: 36px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
    background-color: #e4e6eb;
    border-radius: 50%;
}

/* ==================== RESPONSIVE ==================== */
@media (max-width: 1100px) {
    .sidebar-right {
        display: none;
    }
}

@media (max-width: 900px) {
    .sidebar-left {
        width: 80px;
        overflow: hidden;
    }
    .sidebar-left .menu-list li span:not(.icon),
    .sidebar-left .sidebar-title {
        display: none;
    }
}

@media (max-width: 700px) {
    .sidebar-left {
        display: none;
    }
    .search-box {
        width: 150px;
    }
    .header-center {
        display: none;
    }
}
4. Giải thích các kỹ thuật chính
🔹 Fixed Header
css
.header {
    position: fixed;
    top: 0; left: 0; right: 0;
    z-index: 1000;
}
body { padding-top: 56px; }
→ Header luôn dính trên cùng khi cuộn. body cần padding-top để nội dung không bị header che.

🔹 Sticky Sidebar
css
.sidebar {
    position: sticky;
    top: 72px;
    max-height: calc(100vh - 72px);
    overflow-y: auto;
}
→ Sidebar dính khi cuộn, có scroll riêng nếu nội dung dài. 72px = 56px header + 16px margin.

🔹 Layout 3 cột với Flexbox
css
.main-container { display: flex; gap: 16px; }
.sidebar { width: 300px; flex-shrink: 0; }
.content { flex: 1; max-width: 680px; }
→ Sidebar cố định 300px, content co giãn theo màn hình.
