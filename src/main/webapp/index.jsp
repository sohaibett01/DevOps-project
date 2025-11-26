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

        .toolbar {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            justify-content: center;
            margin: 25px 0 10px;
        }

        .primary-btn,
        .secondary-btn {
            border: none;
            border-radius: 999px;
            padding: 10px 22px;
            font-size: 0.95em;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .primary-btn {
            background: linear-gradient(135deg, #5a67d8, #805ad5);
            color: #fff;
            box-shadow: 0 12px 20px rgba(90, 103, 216, 0.3);
        }

        .secondary-btn {
            background: #edf2f7;
            color: #4a5568;
            box-shadow: 0 10px 18px rgba(100, 116, 139, 0.2);
        }

        .primary-btn:hover,
        .secondary-btn:hover {
            transform: translateY(-2px);
        }

        .live-indicators {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 15px;
            margin-top: 20px;
        }

        .indicator-card {
            background: #fff;
            border-radius: 12px;
            padding: 15px 18px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
            border-left: 4px solid #5a67d8;
        }

        .indicator-card span {
            display: block;
            margin-top: 6px;
            font-size: 1.1em;
            font-weight: 600;
            color: #1a202c;
        }

        .status-log {
            list-style: none;
            margin-top: 25px;
            border-radius: 12px;
            background: #fff;
            padding: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
            max-height: 200px;
            overflow-y: auto;
        }

        .status-log li {
            font-size: 0.95em;
            color: #2d3748;
            padding: 8px 0;
            border-bottom: 1px solid #edf2f7;
        }

        .status-log li:last-child {
            border-bottom: none;
        }

        .feature-card.active-card {
            transform: translateY(-8px);
            box-shadow: 0 15px 35px rgba(102, 126, 234, 0.35);
            border-color: #5a67d8;
        }

        body.dark-mode {
            background: linear-gradient(135deg, #0f172a 0%, #1f2937 100%);
            color: #e2e8f0;
        }

        body.dark-mode .container {
            background: #1f2933;
            color: #e2e8f0;
            box-shadow: 0 30px 80px rgba(15, 23, 42, 0.7);
        }

        body.dark-mode .welcome-section,
        body.dark-mode .info-section,
        body.dark-mode .indicator-card,
        body.dark-mode .status-log,
        body.dark-mode .feature-card {
            background: #111827;
            color: #e2e8f0;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.45);
        }

        body.dark-mode .feature-card div:last-child,
        body.dark-mode .status-log li {
            color: #e2e8f0 !important;
        }

        body.dark-mode footer,
        body.dark-mode footer p {
            color: #cbd5f5;
        }

        body.dark-mode .secondary-btn {
            background: #2d3748;
            color: #e2e8f0;
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
            <h1> Welcome to my web application!</h1>
        </header>

        <div class="toolbar">
            <button class="primary-btn" id="themeToggle">Switch to Dark Mode</button>
            <button class="secondary-btn" id="statusButton">Check Deployment Status</button>
        </div>

        <section class="welcome-section">
            <h2>Hello Sohaib!</h2>
            <p>
                Welcome to your web application! This application is now 
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

            <div class="live-indicators">
                <div class="indicator-card">
                    <strong>Local time</strong>
                    <span id="liveClock">--:--:--</span>
                </div>
                <div class="indicator-card">
                    <strong>Deployment status</strong>
                    <span id="deployIndicator">Idle</span>
                </div>
                <div class="indicator-card">
                    <strong>Environment health</strong>
                    <span id="healthIndicator">Stable</span>
                </div>
            </div>

            <ul class="status-log" id="statusLog">
                <li>Monitor initialized. Waiting for activity...</li>
            </ul>
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
            <p> 2025 - All rights reserved</p>
        </footer>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const greetingEl = document.querySelector('.welcome-section h2');
            const themeToggleBtn = document.getElementById('themeToggle');
            const statusButton = document.getElementById('statusButton');
            const clockEl = document.getElementById('liveClock');
            const deployIndicator = document.getElementById('deployIndicator');
            const healthIndicator = document.getElementById('healthIndicator');
            const statusLog = document.getElementById('statusLog');
            const featureCards = document.querySelectorAll('.feature-card');

            const updateGreeting = () => {
                const hour = new Date().getHours();
                let greeting = 'Hello';
                if (hour < 12) {
                    greeting = 'Good morning';
                } else if (hour < 18) {
                    greeting = 'Good afternoon';
                } else {
                    greeting = 'Good evening';
                }
                greetingEl.textContent = `${greeting}, Sohaib!`;
            };

            const updateClock = () => {
                const now = new Date();
                const timeString = now.toLocaleTimeString('en-US', { hour12: false });
                clockEl.textContent = timeString;
            };

            const pushStatusLog = (message) => {
                const entry = document.createElement('li');
                entry.textContent = `[${new Date().toLocaleTimeString()}] ${message}`;
                statusLog.prepend(entry);
                while (statusLog.children.length > 5) {
                    statusLog.removeChild(statusLog.lastChild);
                }
            };

            themeToggleBtn.addEventListener('click', () => {
                const isDark = document.body.classList.toggle('dark-mode');
                themeToggleBtn.textContent = isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode';
                pushStatusLog(`Theme changed to ${isDark ? 'dark' : 'light'} mode.`);
            });

            statusButton.addEventListener('click', () => {
                statusButton.disabled = true;
                deployIndicator.textContent = 'Checking...';
                pushStatusLog('Deployment check started.');
                setTimeout(() => {
                    const statuses = ['Healthy', 'Deploying updates', 'Idle', 'On standby'];
                    const randomStatus = statuses[Math.floor(Math.random() * statuses.length)];
                    deployIndicator.textContent = randomStatus;
                    healthIndicator.textContent = randomStatus === 'Healthy' ? 'Stable' : 'Observing';
                    pushStatusLog(`Deployment status: ${randomStatus}.`);
                    statusButton.disabled = false;
                }, 1200);
            });

            const rotateHighlights = () => {
                let activeIndex = 0;
                setInterval(() => {
                    featureCards.forEach(card => card.classList.remove('active-card'));
                    featureCards[activeIndex].classList.add('active-card');
                    activeIndex = (activeIndex + 1) % featureCards.length;
                }, 4000);
            };

            updateGreeting();
            updateClock();
            setInterval(updateClock, 1000);
            rotateHighlights();
        });
    </script>
</body>
</html>

