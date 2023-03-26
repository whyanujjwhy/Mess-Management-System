# Mess-Management-System
Mess Management System in Java Swing

---------STEPS TO RUN THE PROJECT----------HAPPY CODING----------


Prerequisites: XAMPP and Apache NetBeans


1. Extract the zip folder and open it in NetBeans
2. Create a DB named messmanager in mysql through XAMPP(Download XAMPP and Start mysql and Apache).
3. Import the messmanager.sql in newly created messmanager DB.
4. Add an admin in admins table(Username & Pwd) in DB.
5. Download the mysql-connector jar file for DB connectivity.
6. In Projects->MessManager->Libraries, right click and click ADD-JAR-FILE......Select the downloaded jar file.
7. Select Services from right hand side menu....Select Databases, right click and click NEW-CONNECTION.
8. Add jar connectivity file....click Next.
9. Enter database name 'messmanager' and click Next and Finish(Connection added).
10. Right Click on newly created connection to DB (e.g. jdbc:mysql://localhost:3306/messmanager?zeroDateTimeBehavior=CONVERT_TO_NULL [root on Default schema]).
11. Click Connect and OK.
12. Now finally run the project.
13. Enjoy fellas...




----------Software Usage Instructions----------



1. Select User Type: 
    1. Student
    2. Mess Manager
    3. Admin(already added admin-- username: admin    pwd: admin123)
2. Login as admin
3. Add mess from MANAGE MESSES(this will add mess into messes table)
4. Register as student and Select Mess(and give feedback)
5. Now login as Mess Manager using newly created mess(username: [mess-name]   pwd: [password])
6. Generate Mess Dues through MANAGE DUES
7. Check feedbacks given and add extras items brought by students to their mess dues.
8. Now login as Student and Pay Dues
