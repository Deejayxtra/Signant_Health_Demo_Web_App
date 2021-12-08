To run the application on windows
set FLASK_APP=demo_app
$env:FLASK_APP = "demo_app"
flask init-db
flask run
Running on http://127.0.0.1:5000/
The robot framework test registers a new user on the web portal and also reviews user information on the web portal.
As an API customer, it registers new user, reviews users' registered in system and when authenticated it gets personal information of users and can be updated.
Use pytest or py.test to automate the API test.