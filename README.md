# Bankmanagement-System 🏦

# SQL Database (MySQL)

This project contains a complete relational database schema for a banking system using MySQL. It demonstrates real-world database design, SQL modeling, normalization, constraints, views, and indexing suitable for banking simulation applications.

# 🏗️ Database Overview

The database (bankmanagementsystem) models the full onboarding and transaction workflow of a banking system, including customer details, demographic information, account setup, login mapping, and transaction history.

# ✔ Core Components
1. Customer Personal Details Stored in the signup table with fields such as name, gender, DOB, address, and contact information.

2. Additional Demographics signup2 stores religion, category, income, education, occupation, PAN, Aadhaar, etc.

3. Account Information signup3 captures account type, card number, PIN, and facilities.

4. User Login Mapping The login table links each customer’s form number to a card number and PIN.

5. Banking Transactions The bank table records deposits and withdrawals with fields like:

pin, date, type, amount, formno, transaction_id (UUID auto-generated)

# 🔗 Relationships & Data Integrity

Primary and foreign keys create a strong relational structure:

signup.formno is the master key.

signup2, signup3, login, and bank reference it.

UUID-based transaction_id ensures globally unique transaction IDs.

All tables use PK/FK constraints to maintain data consistency.

# ⚡ Features Included in This Schema
1. Structured Multi-Table Signup The 3-step signup system keeps data normalized and clean.

2. Secure PIN & Card Mapping Indexing on the login table supports faster authentication.

3. View for Unified Customer Information The view_bank_info view merges signup, signup2, and signup3 into a readable virtual table.

# 4. Transaction Analytics

# Includes queries to compute:

1.Total deposits

2.Total withdrawals

3.Customer info by PIN

4.Services by card number

5.Performance Optimization

# Indexes on:

signup3.cardno

login.pin

Speed up card and PIN lookups significantly.

# 🧠 Skills Demonstrated

This database highlights proficiency in:

SQL schema design

Referential integrity (PK/FK)

Data modeling for financial systems

JOINs, views, indexes

Aggregation & reporting queries

UUID-based auto identifiers

Normalization and real-world structuring

# 📂 Included File
File	Description
bankmanagementsystem.sql	Full MySQL schema with tables, relationships, queries, and indices.

(Referenced from file: bankmanagementsystem)

# 🚀 How to Use
Import the Database
SOURCE bankmanagementsystem.sql;

Integrate With Backend

Works perfectly with Java JDBC-based projects such as:

ATM Simulator

Bank Management System

# Mini Banking Applications
Step to run this Project:

1)install Java JDK

2) install Apache NeatBeans
   
3) open project folder on Apache NeatBeans
   
4)mysql-connector-java-8.0.28.jar
  jcalendar-tz-1.3.3-4.jar
  add this Two jar files in Libraries
  link for download jar files & Database files:
  https://drive.google.com/drive/folders/1BJslHVm8d8A6sWWoa7pDTwtXG8crrJ9V?usp=drive_link
  
5) Download database file and create tables with given quires in  MY SQL

Outputs:
1)Login Page
<img width="848" alt="Screenshot 2024-12-27 at 10 27 01 AM" src="https://github.com/user-attachments/assets/3389c74c-1bbf-46f3-b76b-04a453f83b32" />


2) Signup Page
   
<img width="875" alt="Screenshot 2024-12-27 at 10 42 27 AM" src="https://github.com/user-attachments/assets/e7a96c62-16fd-4c67-95e6-2e1ca16fd934" />

<img width="893" alt="Screenshot 2024-12-27 at 10 53 07 AM" src="https://github.com/user-attachments/assets/713c12cf-3049-4fcd-85ef-855a02a5a56d" />

<img width="868" alt="Screenshot 2024-12-27 at 10 54 47 AM" src="https://github.com/user-attachments/assets/cc1857d0-4b72-4ca0-96c2-5dc89edd55d9" />

3) Transactons:
<img width="957" alt="Screenshot 2024-12-27 at 10 56 39 AM" src="https://github.com/user-attachments/assets/055ae399-e1ca-4fac-8949-92446b2e2660" />

4) Mini Statement:

<img width="457" alt="Screenshot 2024-12-27 at 11 02 33 AM" src="https://github.com/user-attachments/assets/05a3f143-1f7e-4dd9-8ddb-e58964f5e14a" />



