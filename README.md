1. Cấu trúc thư mục
text
cartoon-website/
├── index.html
├── style.css
└── script.js
2. Mã nguồn HTML (index.html)
html
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoạt Hình Việt - Xem phim hoạt hình trực tuyến</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <!-- ============ HEADER ============ -->
    <header class="header">
        <div class="logo">
            <span class="logo-icon">🎬</span>
            <span class="logo-text">HoạtHình<span class="highlight">Việt</span></span>
        </div>
        <div class="search-box">
            <input type="text" id="searchInput" placeholder="🔍 Tìm kiếm phim hoạt hình...">
        </div>
    </header>

    <!-- ============ HEAD-LINK (Menu điều hướng) ============ -->
    <nav class="head-link">
        <ul>
            <li><a href="#" class="active">Trang chủ</a></li>
            <li><a href="#">Phim mới</a></li>
            <li><a href="#">Phim lẻ</a></li>
            <li><a href="#">Phim bộ</a></li>
            <li><a href="#">Thiếu nhi</a></li>
            <li><a href="#">Giáo dục</a></li>
            <li><a href="#">Liên hệ</a></li>
        </ul>
    </nav>

    <!-- ============ MAIN CONTAINER ============ -->
    <div class="main-container">

        <!-- ============ LEFT CONTENT: Danh sách video ============ -->
        <aside class="left-content">
            <h2 class="section-title">📺 Danh sách phim</h2>
            <ul class="video-list" id="videoList">
                <!-- Video items sẽ được render bằng JavaScript -->
            </ul>
        </aside>

        <!-- ============ RIGHT CONTENT: Trình phát video ============ -->
        <main class="right-content">
            <div class="video-player">
                <div class="video-wrapper" id="videoWrapper">
                    <!-- Video/iframe sẽ được chèn bằng JavaScript -->
                </div>

                <div class="video-info">
                    <h1 id="videoTitle">Tên phim</h1>
                    <div class="video-meta">
                        <span class="badge">HD 1080p</span>
                        <span class="badge audio">Audio Việt</span>
                        <span class="badge">👁️ <span id="viewCount">0</span> lượt xem</span>
                    </div>
                    <p class="video-desc" id="videoDesc">
                        Mô tả phim...
                    </p>
                </div>
            </div>

            <!-- Danh sách phim đề xuất -->
            <div class="related-section">
                <h3 class="section-title">🎯 Có thể bạn thích</h3>
                <div class="related-grid" id="relatedGrid">
                    <!-- Render bằng JavaScript -->
                </div>
            </div>
        </main>

    </div>

    <!-- ============ FOOTER ============ -->
    <footer class="footer">
        <div class="footer-content">
            <div class="footer-col">
                <h3>🎬 HoạtHìnhViệt</h3>
                <p>Website xem phim hoạt hình trực tuyến dành cho trẻ em Việt Nam.</p>
                <p>Tất cả phim đều có Audio Việt - Thuyết minh, chất lượng HD đến FullHD.</p>
            </div>
            <div class="footer-col">
                <h3>Liên kết</h3>
                <ul>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="#">Chính sách bảo mật</a></li>
                    <li><a href="#">Điều khoản sử dụng</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h3>Liên hệ</h3>
                <p>📧 contact@hoathinhviet.vn</p>
                <p>📞 0123 456 789</p>
                <p>📍 Hà Nội, Việt Nam</p>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 HoạtHìnhViệt. Bản quyền thuộc về HoạtHìnhViệt. Không quảng cáo - Không nội dung bạo lực.</p>
        </div>
    </footer>

    <script src="script.js"></script>
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
    font-family: 'Segoe UI', Tahoma, Arial, sans-serif;
    background-color: #f0f2f5;
    color: #333;
    line-height: 1.6;
    padding-top: 60px; /* chừa chỗ cho fixed header */
}

a {
    text-decoration: none; /* Mức trung bình: bỏ gạch chân */
    color: inherit;
}

/* ==================== FIXED HEADER (Mức trung bình) ==================== */
.header {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    height: 60px;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 25px;
    z-index: 1000;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
}

.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 22px;
    font-weight: bold;
    cursor: pointer;
}

.logo-icon {
    font-size: 28px;
}

.logo-text .highlight {
    color: #ffd700;
}

.search-box input {
    width: 280px;
    height: 38px;
    border: none;
    border-radius: 20px;
    padding: 0 18px;
    font-size: 14px;
    outline: none;
    background-color: rgba(255, 255, 255, 0.95);
    transition: box-shadow 0.3s;
}

.search-box input:focus {
    box-shadow: 0 0 0 3px rgba(255, 215, 0, 0.5);
}

/* ==================== HEAD-LINK ==================== */
.head-link {
    background-color: #fff;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
}

.head-link ul {
    list-style: none;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    max-width: 1400px;
    margin: 0 auto;
    padding: 0 20px;
}

.head-link ul li a {
    display: block;
    padding: 14px 22px;
    font-size: 15px;
    font-weight: 500;
    color: #555;
    transition: all 0.3s;
    border-bottom: 3px solid transparent;
}

/* Mức trung bình: hover đậm + đổi màu */
.head-link ul li a:hover,
.head-link ul li a.active {
    color: #764ba2;
    font-weight: bold;
    border-bottom-color: #764ba2;
    background-color: #f8f6ff;
}

/* ==================== MAIN CONTAINER ==================== */
.main-container {
    display: flex;
    gap: 20px;
    max-width: 1400px;
    margin: 0 auto;
    padding: 0 20px 30px;
    align-items: flex-start;
}

/* ==================== LEFT CONTENT (Menu video) ==================== */
.left-content {
    width: 320px;
    flex-shrink: 0;
    background-color: #fff;
    border-radius: 10px;
    padding: 15px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    position: sticky;
    top: 80px;
    max-height: calc(100vh - 100px);
    overflow-y: auto;
}

.section-title {
    font-size: 16px;
    color: #2c3e50;
    margin-bottom: 12px;
    padding-bottom: 8px;
    border-bottom: 2px solid #764ba2;
}

.video-list {
    list-style: none;
}

.video-item {
    display: flex;
    gap: 12px;
    padding: 10px;
    border-radius: 8px;
    cursor: pointer;
    transition: all 0.3s;
    margin-bottom: 8px;
    border-left: 3px solid transparent;
}

.video-item:hover {
    background-color: #f8f6ff;
    border-left-color: #764ba2;
}

.video-item.active {
    background-color: #f0ebff;
    border-left-color: #764ba2;
}

.video-item img {
    width: 80px;
    height: 55px;
    border-radius: 6px;
    object-fit: cover;
    flex-shrink: 0;
}

.video-item-info {
    flex: 1;
    min-width: 0;
}

.video-item-info h4 {
    font-size: 14px;
    color: #2c3e50;
    margin-bottom: 4px;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
}

.video-item-info span {
    font-size: 12px;
    color: #888;
}

/* ==================== RIGHT CONTENT ==================== */
.right-content {
    flex: 1;
    min-width: 0;
}

.video-player {
    background-color: #fff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    margin-bottom: 20px;
}

.video-wrapper {
    position: relative;
    width: 100%;
    aspect-ratio: 16 / 9;
    background-color: #000;
}

.video-wrapper video,
.video-wrapper iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
}

.video-info {
    padding: 18px 20px;
}

.video-info h1 {
    font-size: 22px;
    color: #2c3e50;
    margin-bottom: 10px;
}

.video-meta {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin-bottom: 12px;
}

.badge {
    background-color: #e8eaf6;
    color: #3f51b5;
    padding: 4px 12px;
    border-radius: 15px;
    font-size: 12px;
    font-weight: 600;
}

.badge.audio {
    background-color: #e8f5e9;
    color: #2e7d32;
}

.video-desc {
    color: #666;
    font-size: 14px;
    line-height: 1.7;
}

/* ==================== RELATED SECTION ==================== */
.related-section {
    background-color: #fff;
    border-radius: 10px;
    padding: 18px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
}

.related-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 12px;
}

.related-card {
    border-radius: 8px;
    overflow: hidden;
    cursor: pointer;
    transition: transform 0.3s, box-shadow 0.3s;
    background-color: #f8f9fa;
}

.related-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
}

.related-card img {
    width: 100%;
    aspect-ratio: 16 / 9;
    object-fit: cover;
}

.related-card h4 {
    padding: 8px 10px;
    font-size: 13px;
    color: #333;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
}

/* ==================== FOOTER ==================== */
.footer {
    background-color: #2c3e50;
    color: #ecf0f1;
    margin-top: 30px;
}

.footer-content {
    display: flex;
    gap: 30px;
    max-width: 1400px;
    margin: 0 auto;
    padding: 35px 20px;
    flex-wrap: wrap;
}

.footer-col {
    flex: 1;
    min-width: 220px;
}

.footer-col h3 {
    color: #ffd700;
    margin-bottom: 12px;
    font-size: 16px;
}

.footer-col p {
    font-size: 14px;
    margin-bottom: 8px;
    color: #bdc3c7;
}

.footer-col ul {
    list-style: none;
}

.footer-col ul li {
    margin-bottom: 6px;
}

.footer-col ul li a {
    color: #bdc3c7;
    font-size: 14px;
    transition: color 0.3s;
}

.footer-col ul li a:hover {
    color: #ffd700;
    padding-left: 5px;
}

.footer-bottom {
    border-top: 1px solid #34495e;
    padding: 15px 20px;
    text-align: center;
    font-size: 13px;
    color: #95a5a6;
}

/* ==================== RESPONSIVE (Mức nâng cao) ==================== */

/* Tablet (<= 1024px): Thu gọn sidebar */
@media (max-width: 1024px) {
    .left-content {
        width: 260px;
    }

    .related-grid {
        grid-template-columns: repeat(3, 1fr);
    }
}

/* Tablet dọc (<= 768px): Xếp dọc, sidebar lên trên */
@media (max-width: 768px) {
    .main-container {
        flex-direction: column;
    }

    .left-content {
        width: 100%;
        position: static;
        max-height: none;
    }

    .video-list {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 8px;
    }

    .video-item {
        margin-bottom: 0;
    }

    .related-grid {
        grid-template-columns: repeat(2, 1fr);
    }

    .search-box input {
        width: 180px;
    }

    .footer-content {
        flex-direction: column;
        gap: 20px;
    }
}

/* Mobile (<= 480px) */
@media (max-width: 480px) {
    .header {
        padding: 0 12px;
    }

    .logo-text {
        font-size: 18px;
    }

    .search-box input {
        width: 130px;
        font-size: 12px;
        padding: 0 12px;
    }

    .head-link ul {
        overflow-x: auto;
        flex-wrap: nowrap;
        justify-content: flex-start;
    }

    .head-link ul li a {
        padding: 12px 15px;
        font-size: 13px;
        white-space: nowrap;
    }

    .video-list {
        grid-template-columns: 1fr;
    }

    .video-info h1 {
        font-size: 18px;
    }

    .related-grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 8px;
    }

    .related-card h4 {
        font-size: 12px;
    }
}
4. Mã nguồn JavaScript (script.js)
javascript
// ==================== DỮ LIỆU VIDEO ====================
// Sử dụng video mẫu từ Internet Archive và YouTube
const videos = [
    {
        id: 1,
        title: "Doraemon - Nobita và Chuyến Phiêu Lưu",
        desc: "Chú mèo máy Doraemon đến từ tương lai cùng cậu bạn Nobita trải qua những chuyến phiêu lưu kỳ thú. Phim có Audio Việt, chất lượng Full HD, phù hợp cho trẻ em mọi lứa tuổi.",
        thumbnail: "https://picsum.photos/320/180?random=1",
        // Video mẫu từ Internet Archive (miễn phí, công khai)
        src: "https://www.w3schools.com/html/mov_bbb.mp4",
        type: "video",
        views: 12500,
        quality: "Full HD 1080p"
    },
    {
        id: 2,
        title: "Conan - Thám Tử Nhí Tài Ba",
        desc: "Thám tử nhí Conan cùng những vụ án ly kỳ, hấp dẫn, giúp trẻ em rèn luyện tư duy logic và khả năng quan sát.",
        thumbnail: "https://picsum.photos/320/180?random=2",
        src: "https://www.w3schools.com/html/movie.mp4",
        type: "video",
        views: 9800,
        quality: "HD 720p"
    },
    {
        id: 3,
        title: "Tom và Jerry - Những Trò Đùa Vui Nhộn",
        desc: "Bộ phim hoạt hình kinh điển về mèo Tom và chuột Jerry với những trò đùa vui nhộn, hài hước, không có nội dung bạo lực.",
        thumbnail: "https://picsum.photos/320/180?random=3",
        src: "https://www.w3schools.com/html/mov_bbb.mp4",
        type: "video",
        views: 15200,
        quality: "Full HD 1080p"
    },
    {
        id: 4,
        title: "Vua Sư Tử - Câu Chuyện Về Lòng Dũng Cảm",
        desc: "Câu chuyện về chú sư tử Simba dũng cảm, bài học về tình bạn, trách nhiệm và lòng dũng cảm dành cho các bé.",
        thumbnail: "https://picsum.photos/320/180?random=4",
        src: "https://www.w3schools.com/html/movie.mp4",
        type: "video",
        views: 7300,
        quality: "HD 720p"
    },
    {
        id: 5,
        title: "Nàng Bạch Tuyết và Bảy Chú Lùn",
        desc: "Câu chuyện cổ tích kinh điển về nàng Bạch Tuyết xinh đẹp và bảy chú lùn tốt bụng, mang tính giáo dục cao.",
        thumbnail: "https://picsum.photos/320/180?random=5",
        src: "https://www.w3schools.com/html/mov_bbb.mp4",
        type: "video",
        views: 6100,
        quality: "Full HD 1080p"
    },
    {
        id: 6,
        title: "Công Chúa Elsa - Frozen",
        desc: "Câu chuyện về tình chị em, lòng dũng cảm và sức mạnh của tình yêu thương. Phim có Audio Việt.",
        thumbnail: "https://picsum.photos/320/180?random=6",
        src: "https://www.w3schools.com/html/movie.mp4",
        type: "video",
        views: 18900,
        quality: "Full HD 1080p"
    },
    {
        id: 7,
        title: "Pokemon - Hành Trình Của Ash",
        desc: "Hành trình của cậu bé Ash và chú Pikachu, bài học về tình bạn và sự kiên trì.",
        thumbnail: "https://picsum.photos/320/180?random=7",
        src: "https://www.w3schools.com/html/mov_bbb.mp4",
        type: "video",
        views: 8400,
        quality: "HD 720p"
    },
    {
        id: 8,
        title: "Naruto - Ninja Nhí",
        desc: "Câu chuyện về cậu bé Naruto với ước mơ trở thành Hokage, bài học về nỗ lực và không bỏ cuộc.",
        thumbnail: "https://picsum.photos/320/180?random=8",
        src: "https://www.w3schools.com/html/movie.mp4",
        type: "video",
        views: 11200,
        quality: "HD 720p"
    }
];

// ==================== HÀM TIỆN ÍCH ====================
function formatViews(views) {
    if (views >= 1000) {
        return (views / 1000).toFixed(1) + 'K';
    }
    return views;
}

// ==================== RENDER DANH SÁCH VIDEO (LEFT) ====================
function renderVideoList(filteredVideos = videos) {
    const videoList = document.getElementById('videoList');
    videoList.innerHTML = '';

    if (filteredVideos.length === 0) {
        videoList.innerHTML = '<li style="padding: 20px; text-align: center; color: #888;">Không tìm thấy phim nào 😢</li>';
        return;
    }

    filteredVideos.forEach(video => {
        const li = document.createElement('li');
        li.className = 'video-item';
        li.dataset.id = video.id;
        li.innerHTML = `
            <img src="${video.thumbnail}" alt="${video.title}">
            <div class="video-item-info">
                <h4>${video.title}</h4>
                <span>👁️ ${formatViews(video.views)} · ${video.quality}</span>
            </div>
        `;
        li.addEventListener('click', () => playVideo(video.id));
        videoList.appendChild(li);
    });
}

// ==================== PHÁT VIDEO (RIGHT) ====================
function playVideo(videoId) {
    const video = videos.find(v => v.id === videoId);
    if (!video) return;

    // Cập nhật active state
    document.querySelectorAll('.video-item').forEach(item => {
        item.classList.toggle('active', parseInt(item.dataset.id) === videoId);
    });

    // Render video player
    const wrapper = document.getElementById('videoWrapper');
    if (video.type === 'youtube') {
        wrapper.innerHTML = `
            <iframe 
                src="${video.src}" 
                title="${video.title}"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen>
            </iframe>
        `;
    } else {
        wrapper.innerHTML = `
            <video controls autoplay>
                <source src="${video.src}" type="video/mp4">
                Trình duyệt của bạn không hỗ trợ thẻ video.
            </video>
        `;
    }

    // Cập nhật thông tin
    document.getElementById('videoTitle').textContent = video.title;
    document.getElementById('videoDesc').textContent = video.desc;
    document.getElementById('viewCount').textContent = formatViews(video.views);

    // Scroll lên đầu video
    window.scrollTo({ top: 0, behavior: 'smooth' });
}

// ==================== RENDER PHIM ĐỀ XUẤT ====================
function renderRelated(currentId) {
    const grid = document.getElementById('relatedGrid');
    grid.innerHTML = '';

    // Lấy 4 phim khác (không phải phim đang xem)
    const related = videos.filter(v => v.id !== currentId).slice(0, 4);

    related.forEach(video => {
        const card = document.createElement('div');
        card.className = 'related-card';
        card.innerHTML = `
            <img src="${video.thumbnail}" alt="${video.title}">
            <h4>${video.title}</h4>
        `;
        card.addEventListener('click', () => playVideo(video.id));
        grid.appendChild(card);
    });
}

// ==================== TÌM KIẾM ====================
document.getElementById('searchInput').addEventListener('input', (e) => {
    const keyword = e.target.value.trim().toLowerCase();
    const filtered = videos.filter(v => 
        v.title.toLowerCase().includes(keyword)
    );
    renderVideoList(filtered);
});

// ==================== KHỞI TẠO ====================
document.addEventListener('DOMContentLoaded', () => {
    renderVideoList();
    playVideo(videos[0].id); // Mặc định phát video đầu tiên
    renderRelated(videos[0].id);
});
