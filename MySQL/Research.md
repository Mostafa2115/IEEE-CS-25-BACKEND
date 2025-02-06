<h2>What is the database and why does it exist ?</h2>
A database is information that's set up for easy access, management and updating. Computer databases typically store aggregations of data records or files that contain information such as sales transactions, customer data, financials and product information.

Databases are used for storing, maintaining and accessing any sort of data. They collect information on people, places or things. This information is gathered in one place so it can be observed and analyzed. Databases can be thought of as an organized collection of information.

Business, government and scientific fields use databases for data storage, analysis and management. Organizations use the data stored in databases to make informed business decisions.
<hr>
<h2>What is the SQL</h2>
SQL is a standard language for accessing and manipulating databases.
<br>
> What is SQL?
<pre>
  - stands for Structured Query Language
  - lets you access and manipulate databases
  - became a standard of the American National Standards Institute (ANSI) in 1986, and of the International Organization for Standardization (ISO) in 1987
</pre>
> What Can SQL do?
<pre>
  - SQL can execute queries against a database ,can retrieve data from a database ,can insert records in a database ,can update records in a database ,can delete records from a database ,can create new databases 
   ,can create new tables in a database ,can create stored procedures in a database ,can create views in a database ,can set permissions on tables, procedures, and views
</pre>
<hr>
<h2>What are the most 5 famous DBs in world now? and why?</h2>
<pre>
  1. Oracle Database
             Oracle Database is one of the oldest and most widely used relational databases in the business world. It is known for its scalability, security and reliability, making it a popular choice for large 
             enterprises and government organisations.
  2. MySQL
             MySQL is a widely used open source relational database. It is known for its reliability, speed and ease of use, making it a popular choice for both small web applications and large enterprise systems.
  3. Microsoft SQL Server
             Microsoft SQL Server is a relational database developed by Microsoft. It is widely used in enterprise environments due to its integration with other Microsoft tools, such as the .NET Framework and 
             Visual Studio.
  4. PostgreSQL
             PostgreSQL is another open source relational database that has gained popularity in recent years. It is known for its robustness, extensibility and compliance with ANSI SQL standards.
  5. MongoDB
             MongoDB is a document-oriented NoSQL database that has become very popular for web and mobile applications. 
</pre>
<hr>
<h2>What is RDBMS?</h2>
- A relational database is a collection of information that organizes data in predefined relationships where data is stored in one or more tables (or "relations") of columns and rows, making it easy to see and understand how different data structures relate to each other.
<hr>
<h2>RDBMS VS DBMS</h2>
<table>
        <tr>
            <th>DBMS</th>
            <th>RDBMS</th>
        </tr>
        <tr>
            <td>DBMS stores data as file.</td>
            <td>RDBMS stores data in tabular form.</td>
        </tr>
        <tr>
            <td>Data elements need to be accessed individually.</td>
            <td>Multiple data elements can be accessed at the same time.</td>
        </tr>
        <tr>
            <td>No relationship between data.</td>
            <td>Data is stored in the form of tables which are related to each other.</td>
        </tr>
        <tr>
            <td>Normalization is not present.</td>
            <td>Normalization is present.</td>
        </tr>
        <tr>
            <td>DBMS does not support distributed database.</td>
            <td>RDBMS supports distributed database.</td>
        </tr>
        <tr>
            <td>It stores data in either a navigational or hierarchical form.</td>
            <td>It uses a tabular structure where the headers are the column names, and the rows contain corresponding values.</td>
        </tr>
        <tr>
            <td>It deals with small quantity of data.</td>
            <td>It deals with large amount of data.</td>
        </tr>
        <tr>
            <td>Data redundancy is common in this model.</td>
            <td>Keys and indexes do not allow Data redundancy.</td>
        </tr>
        <tr>
            <td>It is used for small organizations and deals with small data.</td>
            <td>It is used to handle large amounts of data.</td>
        </tr>
        <tr>
            <td>Not all Codd rules are satisfied.</td>
            <td>All 12 Codd rules are satisfied.</td>
        </tr>
        <tr>
            <td>Security is less.</td>
            <td>More security measures provided.</td>
        </tr>
        <tr>
            <td>It supports single user.</td>
            <td>It supports multiple users.</td>
        </tr>
        <tr>
            <td>Data fetching is slower for a large amount of data.</td>
            <td>Data fetching is fast because of the relational approach.</td>
        </tr>
        <tr>
            <td>The data in a DBMS is subject to low security levels with regards to data manipulation.</td>
            <td>There exist multiple levels of data security in an RDBMS.</td>
        </tr>
        <tr>
            <td>Low software and hardware necessities.</td>
            <td>Higher software and hardware necessities.</td>
        </tr>
        <tr>
            <td>Examples: XML, Windows Registry, FoxPro, dBase III Plus, etc.</td>
            <td>Examples: MySQL, PostgreSQL, SQL Server, Oracle, Microsoft Access, etc.</td>
        </tr>
    </table>
<hr>
<h1>Naming conventions</h1>
1.Character strings that represent names of database manager objects can contain any of the following: a-z, A-Z, 0-9, @, #, and $.
2.Unless otherwise noted, names can be entered in lowercase letters; however, the database manager processes them as if they were uppercase.
3.A database name or database alias is a unique character string containing from one to eight letters, numbers, or keyboard characters from the set described previously.
4.The name or the alias name of a table or a view is an SQL identifier that is a unique character string 1 to 128 bytes in length. Column names can be 1 to 128 bytes in length.






