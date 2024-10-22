# Job Portal Application - README

## Overview

The **Job Portal Application** is a Spring Boot-based platform that connects **job seekers** and **recruiters**. Job seekers can search for jobs and apply to positions, while recruiters can post job listings and manage applications. The application includes login and logout functionality for secure user management. The frontend is built using **Thymeleaf** for server-side rendering, making the app responsive and dynamic.

## Features

### Job Seeker Functionality:
- **User Registration/Login/Logout**: Job seekers can register, log in, and log out securely.
- **Job Search**: Search for available job opportunities based on criteria like location, job title, and company.
- **Apply for Jobs**: View job details and submit applications for relevant positions.

### Recruiter Functionality:
- **User Registration/Login/Logout**: Recruiters can create an account, log in, and log out securely.
- **Post Job Listings**: Recruiters can create and manage job postings with relevant details like job title, description, and qualifications.
- **Manage Applications**: View and manage job applications from job seekers.

### Common Features:
- **Login/Logout**: Both job seekers and recruiters have secure login and logout functionality.
- **Responsive UI**: The application’s user interface is built with Thymeleaf templates for server-side rendering, ensuring responsiveness and usability across devices.

## Technologies Used

### Backend:
- **Framework**: Spring Boot
- **Security**: Spring Security for authentication and authorization (login/logout).
- **Database**: MySQL (or other RDBMS) for storing user, job, and application data.
- **Persistence**: JPA/Hibernate for database interaction.
  
### Frontend:
- **Templating Engine**: Thymeleaf for server-side rendering.
- **HTML/CSS/Bootstrap**: For responsive and dynamic UI.

### Others:
- **Maven**: Dependency management and build automation.
- **Spring Data JPA**: For database interaction.
- **Spring Boot DevTools**: For live reloading and development support.
- **Validation**: Spring’s built-in validation for user inputs and form handling.

## Setup Instructions

### Prerequisites:
- **Java 11+**: Ensure Java Development Kit (JDK) is installed.
- **Maven**: Installed for managing dependencies.
- **MySQL**: Installed and running for the database.

### Installation:
1. **Clone the Repository**:  
   ```bash
   git clone https://github.com/your-repo/job-portal-app.git
   cd job-portal-app
   ```

2. **Configure the Database**:
   - Open the `application.properties` file located in `src/main/resources/` and configure the following database settings:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/job_portal
     spring.datasource.username=root
     spring.datasource.password=yourpassword
     spring.jpa.hibernate.ddl-auto=update
     spring.jpa.show-sql=true
     ```

3. **Run the Application**:
   - Navigate to the project’s root directory and run the following Maven command to start the Spring Boot application:
     ```bash
     mvn spring-boot:run
     ```

4. **Access the Application**:
   - Open a browser and navigate to `http://localhost:8080` to access the Job Portal.

### Running in Production:
- Package the application as a JAR using:
  ```bash
  mvn clean package
  ```
- Run the JAR file using:
  ```bash
  java -jar target/job-portal-1.0.jar
  ```

## Functional Overview

### User Roles:
1. **Job Seekers**:
   - Can register, log in, and log out securely.
   - Search for jobs and apply to them.
   - Track their job applications.
  
2. **Recruiters**:
   - Can register, log in, and log out securely.
   - Post job openings with detailed descriptions.
   - Manage and review applications received.

### Security:
- **Spring Security**: Used to secure pages based on user roles (job seekers, recruiters).
- **Password Encryption**: Passwords are hashed using BCrypt before being stored in the database.

### Key Endpoints:
- `/login`: User login page.
- `/register`: Registration page for job seekers and recruiters.
- `/jobs`: Page to view available job listings (job seekers).
- `/post-job`: Page for recruiters to post job listings.
- `/applications`: Manage applications (recruiters).

## Deployment

### Database:
- Ensure MySQL is properly set up and the schema is created based on the application's data model (automatically created via JPA if `ddl-auto` is set to `update`).

### Server:
- Deploy the application on a web server like Tomcat or host it in a cloud environment such as AWS EC2 or Azure.

## Future Enhancements
- **Job Alerts**: Implement email alerts for job seekers when relevant jobs are posted.
- **Advanced Search Filters**: Allow job seekers to filter by salary, experience, or industry.
- **Profile Management**: Enable job seekers to upload resumes and manage their profiles.
- **Application Status**: Allow recruiters to update the status of applications (e.g., shortlisted, rejected).

## Conclusion

The **Job Portal Application** is a robust platform that helps job seekers find jobs and recruiters post job openings efficiently. With Spring Boot for the backend and Thymeleaf for the frontend, the app is secure, responsive, and easy to maintain.

---

This README provides setup instructions, technologies used, and a functional overview specific to a Spring Boot and Thymeleaf-based Job Portal Application.
