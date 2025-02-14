# What is the database and why does it exist?
A database is information that's set up for easy access, management, and updating. Computer databases typically store aggregations of data records or files that contain information such as sales transactions, customer data, financials, and product information.

Databases are used for storing, maintaining, and accessing any sort of data. They collect information on people, places, or things. This information is gathered in one place so it can be observed and analyzed. Databases can be thought of as an organized collection of information.

Business, government, and scientific fields use databases for data storage, analysis, and management. Organizations use the data stored in databases to make informed business decisions.

---

# What is SQL?
SQL is a standard language for accessing and manipulating databases.

### What is SQL?
```
- Stands for Structured Query Language
- Lets you access and manipulate databases
- Became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987
```

### What Can SQL do?
```
- SQL can execute queries against a database
- Can retrieve data from a database
- Can insert records in a database
- Can update records in a database
- Can delete records from a database
- Can create new databases
- Can create new tables in a database
- Can create stored procedures in a database
- Can create views in a database
- Can set permissions on tables, procedures, and views
```

---

# What are the 5 most famous databases in the world now, and why?
```
1. Oracle Database
   - One of the oldest and most widely used relational databases in the business world.
   - Known for its scalability, security, and reliability, making it a popular choice for large enterprises and government organizations.

2. MySQL
   - A widely used open-source relational database.
   - Known for its reliability, speed, and ease of use, making it a popular choice for both small web applications and large enterprise systems.

3. Microsoft SQL Server
   - A relational database developed by Microsoft.
   - Widely used in enterprise environments due to its integration with other Microsoft tools, such as the .NET Framework and Visual Studio.

4. PostgreSQL
   - Another open-source relational database that has gained popularity in recent years.
   - Known for its robustness, extensibility, and compliance with ANSI SQL standards.

5. MongoDB
   - A document-oriented NoSQL database that has become very popular for web and mobile applications.
```

---

# What is RDBMS?
A relational database is a collection of information that organizes data in predefined relationships where data is stored in one or more tables (or "relations") of columns and rows, making it easy to see and understand how different data structures relate to each other.

---

# RDBMS vs DBMS
| DBMS | RDBMS |
|------|-------|
| DBMS stores data as a file. | RDBMS stores data in tabular form. |
| Data elements need to be accessed individually. | Multiple data elements can be accessed at the same time. |
| No relationship between data. | Data is stored in the form of tables which are related to each other. |
| Normalization is not present. | Normalization is present. |
| DBMS does not support distributed databases. | RDBMS supports distributed databases. |
| It stores data in either a navigational or hierarchical form. | It uses a tabular structure where the headers are the column names, and the rows contain corresponding values. |
| It deals with a small quantity of data. | It deals with large amounts of data. |
| Data redundancy is common in this model. | Keys and indexes do not allow data redundancy. |
| It is used for small organizations and deals with small data. | It is used to handle large amounts of data. |
| Not all Codd rules are satisfied. | All 12 Codd rules are satisfied. |
| Security is less. | More security measures are provided. |
| It supports a single user. | It supports multiple users. |
| Data fetching is slower for a large amount of data. | Data fetching is fast because of the relational approach. |
| The data in a DBMS is subject to low security levels with regards to data manipulation. | There exist multiple levels of data security in an RDBMS. |
| Low software and hardware necessities. | Higher software and hardware necessities. |
| Examples: XML, Windows Registry, FoxPro, dBase III Plus, etc. | Examples: MySQL, PostgreSQL, SQL Server, Oracle, Microsoft Access, etc. |

---

# Naming Conventions
1. Character strings that represent names of database manager objects can contain any of the following: `a-z`, `A-Z`, `0-9`, `@`, `#`, and `$`.
2. Unless otherwise noted, names can be entered in lowercase letters; however, the database manager processes them as if they were uppercase.
3. A database name or database alias is a unique character string containing from one to eight letters, numbers, or keyboard characters from the set described previously.
4. The name or the alias name of a table or a view is an SQL identifier that is a unique character string 1 to 128 bytes in length. Column names can be 1 to 128 bytes in length.

---
# Primary key vs Uniqe key
| Criteria           | Primary Key                                        | Unique Key                                            |
|-------------------|-------------------------------------------------|--------------------------------------------------|
| **Basic Function** | The primary key uniquely identifies each record in the table. | The unique key serves as a unique identifier for records when a primary key is absent. |
| **NULL Values**    | The primary key cannot store NULL values.        | The unique key can store a null value, but only one NULL value is allowed. |
| **Purpose**        | It ensures entity integrity.                     | It enforces unique data.                         |
| **Index Creation** | By default, the primary key creates a clustered index. | The unique key generates a non-clustered index. |
| **Number of Keys** | Each table can have only one primary key.        | A table can have multiple unique keys.          |
| **Value Modification** | You cannot modify or delete values in a primary key. | You can modify the values in a unique key. |
| **Uses**          | It identifies specific records in the table.     | It prevents duplicate entries in a column, except for a NULL value. |

---
# SQL Constraints

SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

Constraints can be **column level** or **table level**.  
- **Column level constraints** apply to a column.  
- **Table level constraints** apply to the whole table.

## Common SQL Constraints

- **NOT NULL** - Ensures that a column cannot have a NULL value.  
- **UNIQUE** - Ensures that all values in a column are different.  
- **PRIMARY KEY** - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table.  
- **FOREIGN KEY** - Prevents actions that would destroy links between tables.  
- **CHECK** - Ensures that the values in a column satisfy a specific condition.  
- **DEFAULT** - Sets a default value for a column if no value is specified.  
- **CREATE INDEX** - Used to create and retrieve data from the database very quickly.  

---
# MySQL CREATE INDEX Statement

The `CREATE INDEX` statement is used to create indexes in tables.

Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes; they are just used to speed up searches/queries.

---
# Relations (one to one, one to many, many to many)
A many-to-many relationship occurs when multiple records in a table are related to multiple records in another table.

When normalizing a database or adding tables to an existing database, we need to be able to relate tables to each other.

There are three ways in which a table can be related to another table:
  1-One-to-one: A record in one table is related to one record in another table.
  2-One-to-many: A record in one table is related to many records in another table.
  3-Many-to-many: Multiple records in one table are related to multiple records in another table.

---
# Resources
- [What is the database and why does it exist](https://www.techtarget.com/searchdatamanagement/definition/database)
- [What is SQL](https://www.w3schools.com/sql/sql_intro.asp)
- [What are the most 5 famous DBs in the world now? and why?](https://www.swhosting.com/en/blog/the-5-most-widely-used-databases-worldwide-which-is-the-best-choice-for-my-project)
- [What is RDBMS?](https://cloud.google.com/learn/what-is-a-relational-database)
- [RDBMS VS DBMS](https://www.geeksforgeeks.org/difference-between-rdbms-and-dbms/)
- [Naming conventions](https://www.geeksforgeeks.org/database-table-and-column-naming-conventions/)
- [Primary key vs uniqe key](https://testbook.com/key-differences/difference-between-primary-key-and-unique-key)
- [SQL constraints](https://www.w3schools.com/mysql/mysql_constraints.asp)
- [indexing in MySQL](https://www.w3schools.com/mysql/mysql_create_index.asp)

