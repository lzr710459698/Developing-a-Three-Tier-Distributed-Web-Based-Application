# Developing a Three-Tier Distributed Web-Based Application

This project is a fully functional, **three-tier distributed web-based application** developed for academic purposes using **Java**, **JSP**, **Servlets**, and **MySQL**, and deployed on an **Apache Tomcat** server. It demonstrates the integration of front-end, middle-tier, and back-end technologies to deliver a robust and scalable web application.

## 🧩 Project Structure

This application follows the **Three-Tier Architecture**:
- **Presentation Tier (Client Side)**: JSP pages and HTML files that handle user interface.
- **Application Tier (Server Side)**: Java Servlets and business logic to handle data processing and user authentication.
- **Data Tier (Database)**: MySQL database to store and manage user data and application records.

## 🗂️ File Overview

| File/Folder           | Description                                             |
|-----------------------|---------------------------------------------------------|
| `authentication.html` | Login page for users to authenticate                    |
| `accountant.jsp`      | Accountant-specific dashboard                           |
| `clienthome.jsp`      | Client user dashboard                                   |
| `dataentryuser.jsp`   | Data entry user dashboard                               |
| `roothome.jsp`        | Root (admin) dashboard                                  |
| `errorpage.html`      | Generic error page for failed authentication or errors  |
| `Project-3-1.zip`     | Compressed archive containing complete project files    |

## 🔐 User Roles

The application supports different types of users, each with specific privileges and views:
- **Root User**: Full access to all parts of the system.
- **Accountant**: Can view and generate reports.
- **Client**: Has access to limited client-side functionality.
- **Data Entry User**: Can input and modify data records.

## 🚀 How to Run the Project

### Prerequisites
- Java JDK (8 or higher)
- Apache Tomcat Server (v9 or higher)
- MySQL Server
- JDBC Connector (add to `lib` folder in Tomcat)

### Setup Steps
1. Clone or download the repository.
2. Import the project into your Java IDE (Eclipse/NetBeans/IntelliJ).
3. Set up the MySQL database using the provided schema.
4. Configure database credentials in your Java servlet or JSP files.
5. Deploy the `.war` or project folder to the Apache Tomcat `webapps` directory.
6. Start the Tomcat server and visit `http://localhost:8080/your-app-name`.

## 🛠️ Technologies Used

- Java
- JSP (JavaServer Pages)
- Servlets
- HTML/CSS
- Apache Tomcat
- MySQL
- JDBC

## 📸 Screenshots

*You can optionally add screenshots of the login page, dashboard views, etc.*

## 📚 Acknowledgments

This project was developed for the **CNT 4714 - Enterprise Computing** course at the **University of Central Florida (UCF)** as part of **Project 3: Developing A Three-Tier Distributed Web-Based Application**.

## 📄 License

This project is for educational purposes only. No commercial license provided.

---

