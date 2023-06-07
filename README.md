# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* generate api only app using below command

rails _7.0.3.1_ new attentive-api --api


the API request to authenticate a user would work as follows:

The client (such as a web or mobile application) sends a POST request to the /login endpoint with the user's email and password in the request body.

The Rails API server receives the request and invokes the create action of the SessionsController.

Inside the create action, the server attempts to find a user with the provided email using User.find_by(email: params[:email]).

If a user with the given email is found and the provided password matches the stored password (using user&.authenticate(params[:password])), the server generates a JSON Web Token (JWT) by calling the encode_token method.

The generated token is then included in the JSON response, which is sent back to the client. The client can store this token for subsequent authenticated requests.

If the email or password is invalid, the server returns a JSON response with an error message and an HTTP status code of 401 (Unauthorized).

To authenticate subsequent requests after login, the client can include the JWT in the request's Authorization header using the "Bearer" scheme. For example:


generate Rails middleware
 bin/rails generate middleware MiddlewareName
# attentive-api
