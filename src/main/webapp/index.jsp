<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Website with Navigation</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
        
        :root {
            --primary: #4361ee;
            --secondary: #3a0ca3;
            --accent: #4cc9f0;
            --dark: #14213d;
            --light: #f8f9fa;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--light);
            color: #333;
            line-height: 1.6;
        }
        
        /* Navigation */
        header {
            background: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            z-index: 1000;
        }
        
        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 5%;
            max-width: 1400px;
            margin: 0 auto;
        }
        
        .logo a {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
        }
        
        .nav-links {
            display: flex;
            list-style: none;
        }
        
        .nav-links li {
            margin-left: 2rem;
        }
        
        .nav-links a {
            color: var(--dark);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
            position: relative;
        }
        
        .nav-links a:hover {
            color: var(--primary);
        }
        
        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--primary);
            transition: width 0.3s;
        }
        
        .nav-links a:hover::after {
            width: 100%;
        }
        
        .cta-button {
            background: var(--primary);
            color: white;
            padding: 0.6rem 1.2rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            margin-left: 2rem;
        }
        
        .cta-button:hover {
            background: var(--secondary);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(67, 97, 238, 0.3);
        }
        
        /* Hero Section */
        .hero {
            padding: 10rem 5% 6rem;
            text-align: center;
            background: linear-gradient(135deg, rgba(67, 97, 238, 0.1), rgba(76, 201, 240, 0.1));
        }
        
        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            color: var(--dark);
        }
        
        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 2.5rem;
            color: #555;
        }
        
        .hero-buttons {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-top: 2rem;
        }
        
        .btn {
            padding: 0.8rem 1.8rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
        }
        
        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: 0 5px 15px rgba(67, 97, 238, 0.3);
        }
        
        .btn-primary:hover {
            background: var(--secondary);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(67, 97, 238, 0.4);
        }
        
        .btn-secondary {
            background: white;
            color: var(--primary);
            border: 2px solid var(--primary);
        }
        
        .btn-secondary:hover {
            background: var(--primary);
            color: white;
            transform: translateY(-3px);
        }
        
        /* Features Section */
        .features {
            padding: 6rem 5%;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 4rem;
        }
        
        .section-title h2 {
            font-size: 2.5rem;
            color: var(--dark);
            margin-bottom: 1rem;
        }
        
        .section-title p {
            color: #666;
            max-width: 700px;
            margin: 0 auto;
        }
        
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }
        
        .feature-card {
            background: white;
            border-radius: 10px;
            padding: 2rem;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.3s;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }
        
        .feature-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
        }
        
        .feature-card h3 {
            margin-bottom: 1rem;
            color: var(--dark);
        }
        
        .feature-card p {
            color: #666;
            margin-bottom: 1.5rem;
        }
        
        .feature-link {
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
            display: inline-flex;
            align-items: center;
        }
        
        .feature-link i {
            margin-left: 0.5rem;
            transition: transform 0.3s;
        }
        
        .feature-link:hover i {
            transform: translateX(5px);
        }
        
        /* Footer */
        footer {
            background: var(--dark);
            color: white;
            padding: 4rem 5% 2rem;
        }
        
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .footer-column h3 {
            font-size: 1.2rem;
            margin-bottom: 1.5rem;
            position: relative;
            display: inline-block;
        }
        
        .footer-column h3::after {
            content: '';
            position: absolute;
            bottom: -8px;
            left: 0;
            width: 40px;
            height: 3px;
            background: var(--accent);
        }
        
        .footer-links {
            list-style: none;
        }
        
        .footer-links li {
            margin-bottom: 0.8rem;
        }
        
        .footer-links a {
            color: #ddd;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer-links a:hover {
            color: var(--accent);
        }
        
        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }
        
        .social-links a {
            color: white;
            background: rgba(255, 255, 255, 0.1);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s;
        }
        
        .social-links a:hover {
            background: var(--accent);
            transform: translateY(-3px);
        }
        
        .copyright {
            text-align: center;
            margin-top: 3rem;
            padding-top: 1.5rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #aaa;
            font-size: 0.9rem;
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                padding: 1rem;
            }
            
            .logo {
                margin-bottom: 1rem;
            }
            
            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .nav-links li {
                margin: 0.5rem;
            }
            
            .cta-button {
                margin: 1rem 0 0;
            }
            
            .hero {
                padding: 8rem 5% 4rem;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .hero-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .btn {
                width: 100%;
                max-width: 250px;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation -->
    <header>
        <nav>
            <div class="logo">
                <a href="index.html">BrandName</a>
            </div>
            <ul class="nav-links">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="services.html">Services</a></li>
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
            <a href="contact.html" class="cta-button">Get Started</a>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Build Your Dream Website With Us</h1>
        <p>We create beautiful, responsive websites that help businesses grow and reach more customers online.</p>
        <div class="hero-buttons">
            <a href="services.html" class="btn btn-primary">Our Services</a>
            <a href="contact.html" class="btn btn-secondary">Contact Us</a>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="section-title">
            <h2>Why Choose Us</h2>
            <p>We provide the best solutions to grow your online presence</p>
        </div>
        
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-rocket"></i>
                </div>
                <h3>Fast Performance</h3>
                <p>Our websites are optimized for speed to ensure the best user experience.</p>
                <a href="services.html#performance" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-mobile-alt"></i>
                </div>
                <h3>Mobile Friendly</h3>
                <p>All our designs work perfectly on any device, from desktop to mobile.</p>
                <a href="services.html#responsive" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
            </div>
            
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-lock"></i>
                </div>
                <h3>Secure Solutions</h3>
                <p>We implement the latest security measures to protect your website.</p>
                <a href="services.html#security" class="feature-link">Learn more <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <div class="footer-column">
                <h3>About Us</h3>
                <p>We are a creative team dedicated to building amazing websites that help businesses succeed online.</p>
                <div class="social-links">
                    <a href="https://facebook.com" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://twitter.com" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="https://instagram.com" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="https://linkedin.com" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            
            <div class="footer-column">
                <h3>Quick Links</h3>
                <ul class="footer-links">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li>
                </ul>
            </div>
            
            <div class="footer-column">
                <h3>Services</h3>
                <ul class="footer-links">
                    <li><a href="services.html#web">Web Design</a></li>
                    <li><a href="services.html#app">App Development</a></li>
                    <li><a href="services.html#seo">SEO Optimization</a></li>
                    <li><a href="services.html#marketing">Digital Marketing</a></li>
                    <li><a href="services.html#branding">Branding</a></li>
                </ul>
            </div>
            
            <div class="footer-column">
                <h3>Contact Us</h3>
                <ul class="footer-links">
                    <li><a href="mailto:info@example.com">info@example.com</a></li>
                    <li><a href="tel:+1234567890">+1 (234) 567-890</a></li>
                    <li><a href="https://maps.google.com">123 Street, City, Country</a></li>
                </ul>
            </div>
        </div>
        
        <div class="copyright">
            <p>&copy; 2023 BrandName. All Rights Reserved. | <a href="privacy.html" style="color: #aaa;">Privacy Policy</a> | <a href="terms.html" style="color: #aaa;">Terms of Service</a></p>
        </div>
    </footer>
</body>
</html>