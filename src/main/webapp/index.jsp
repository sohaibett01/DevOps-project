<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NextWork - Web Application</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            color: #1a202c;
        }

        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            padding: 40px;
            max-width: 800px;
            width: 100%;
            animation: fadeIn 0.8s ease-in;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        header {
            text-align: center;
            margin-bottom: 40px;
            padding-bottom: 30px;
            border-bottom: 3px solid #667eea;
        }

        h1 {
            color: #4c51bf;
            font-size: 2.5em;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
            font-weight: 700;
        }

        h2 {
            color: #6b46c1;
            font-size: 1.8em;
            margin-top: 30px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 700;
        }


        .welcome-section {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            padding: 25px;
            border-radius: 15px;
            margin-bottom: 30px;
            border-left: 5px solid #667eea;
        }

        .welcome-section p {
            font-size: 1.1em;
            line-height: 1.8;
            color: #1a202c;
            font-weight: 500;
        }

        .info-section {
            background: #f8f9fa;
            padding: 25px;
            border-radius: 15px;
            margin-top: 20px;
            border-left: 5px solid #764ba2;
        }

        .info-section p {
            font-size: 1em;
            line-height: 1.8;
            color: #1a202c;
            display: flex;
            align-items: flex-start;
            gap: 10px;
            font-weight: 500;
            margin-bottom: 15px;
        }


        .deployment-badge {
            display: inline-block;
            background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
            color: white;
            padding: 8px 16px;
            border-radius: 20px;
            font-size: 0.9em;
            font-weight: bold;
            margin-top: 15px;
            box-shadow: 0 4px 15px rgba(56, 239, 125, 0.3);
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .feature-card {
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border-top: 4px solid #667eea;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .feature-icon {
            display: none;
        }

        .feature-title {
            color: #667eea;
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 1.1em;
        }

        .feature-card div:last-child {
            color: #2d3748 !important;
            font-size: 0.95em !important;
            font-weight: 500;
        }

        footer {
            text-align: center;
            margin-top: 40px;
            padding-top: 20px;
            border-top: 2px solid #e2e8f0;
            color: #2d3748;
            font-size: 0.95em;
            font-weight: 500;
        }

        footer p {
            color: #2d3748;
        }

        @media (max-width: 600px) {
            .container {
                padding: 25px;
            }

            h1 {
                font-size: 2em;
            }

            h2 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1> Welcome to NextWork!</h1>
        </header>

        <section class="welcome-section">
            <h2>Hello Sohaib!</h2>
            <p>
                Welcome to your NextWork web application! This application is now 
                operational and ready to be used.
            </p>
        </section>

        <section class="info-section">
            <p>
                This is my web application working!
            </p>
            <p>
                If you see this line, that means your latest changes are automatically deployed 
                into production by CodePipeline!
            </p>
            <span class="deployment-badge">Automatic Deployment Active</span>
        </section>

        <div class="features">
            <div class="feature-card">
                <div class="feature-icon"></div>
                <div class="feature-title">Performance</div>
                <div>Optimized application</div>
            </div>
            <div class="feature-card">
                <div class="feature-icon"></div>
                <div class="feature-title">Security</div>
                <div>Protected data</div>
            </div>
            <div class="feature-card">
                <div class="feature-icon"></div>
                <div class="feature-title">CI/CD</div>
                <div>Automatic deployment</div>
            </div>
        </div>

        <footer>
            <p>© 2024 NextWork - All rights reserved</p>
        </footer>
    </div>
</body>
</html>

