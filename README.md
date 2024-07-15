# Mobile-Service-Portal-using-Servlet-and-JSP
The Mobile Service Portal is a web application built using Java Servlets and JSP, designed to manage various mobile services for users with both prepaid and postpaid SIM cards. Users can perform tasks such as mobile recharge, bill payments, SIM conversion, balance inquiry, and profile management.

## Features
User Registration and Login: Register with mobile number, name, password, address, and SIM type (prepaid/postpaid). Login with registered credentials.
# Home Page Features:
Mobile Recharge: Recharge balance for prepaid SIMs.
Pay Bills: View and pay bills for postpaid SIMs.
Prepaid to Postpaid Conversion: Convert prepaid SIMs to postpaid.
Know Your Balance: Check current balance.
Profile Details: View and update profile information.
## Technology Stack
Frontend: HTML, CSS, JSP
Backend: Java Servlets
Database: MySQL
## Setup Instructions
# Clone the Repository:

git clone https://github.com/yourusername/mobile-service-portal.git
cd mobile-service-portal
# Database Setup:

Create a MySQL database named mobile_service_portal.
Import the database schema from database-schema.sql.
Configure Database Connection:

Open src/main/java/com/example/util/DBConnection.java.
Update the database URL, username, and password.
# Run the Application:

Deploy the project on a Servlet container like Apache Tomcat.
Access the application at http://localhost:8080/mobile-service-portal.

