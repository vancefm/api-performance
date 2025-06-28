@echo off

@REM Start master process
start "Main" cmd /k  "call .venv\Scripts\activate.bat && locust -f locust-tester\locustfile.py --master --config locust-tester\locust.conf"

@REM Wait before spawning workers
timeout /t 2 >nul

@REM Start workers
start "Worker 1" cmd /k "call .venv\Scripts\activate.bat && timeout /t 1 >nul && locust -f locust-tester\locustfile.py --worker --master-host=127.0.0.1"
start "Worker 2" cmd /k "call .venv\Scripts\activate.bat && timeout /t 1 >nul && locust -f locust-tester\locustfile.py --worker --master-host=127.0.0.1"
start "Worker 3" cmd /k "call .venv\Scripts\activate.bat && timeout /t 1 >nul && locust -f locust-tester\locustfile.py --worker --master-host=127.0.0.1"
start "Worker 4" cmd /k "call .venv\Scripts\activate.bat && timeout /t 1 >nul && locust -f locust-tester\locustfile.py --worker --master-host=127.0.0.1"

@REM Open browser
call rundll32 url.dll,FileProtocolHandler http://localhost:8089