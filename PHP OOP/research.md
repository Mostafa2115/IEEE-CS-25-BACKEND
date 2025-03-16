# Who invent OOP and why

Object-oriented programming (OOP) is a programming paradigm based on the concept of **objects**.[1] Objects can contain **data** (called fields, attributes, or properties) and have **actions** they can perform (called procedures or methods and implemented in code). In OOP, computer programs are designed by making them out of objects that interact with one another.[2][3]

Many of the most widely used programming languages (such as **C++**, **Java**,[4] and **Python**) support object-oriented programming to a greater or lesser degree, typically as part of multiple paradigms in combination with others such as **imperative programming** and **declarative programming**.

---
# Encapsulation and Abstraction

## Encapsulation
Encapsulation is an approach that joins **data members (variables)** and **implementation details** into a single unit called a **class**. This means a class is formed with variables and methods inside it.

- In encapsulation, the **data members (variables)** of a class are **not accessible** by other classes and can only be accessed through the methods of their current class.
- Encapsulation is implemented using **private** and **protected** access modifiers.
- It helps **reduce the complexity** of a web application.

## Abstraction
Abstraction is the **concept of representing necessary features** without including background details.

- Abstraction hides implementation details from the end-user and **only displays the functionality**.
- It is used to implement **polymorphic concepts** with classes. With abstraction, we **only declare methods** inside a class, while a derived class is used to define them.
- An **abstract class cannot be instantiated**, so end-users cannot access it directly.
- Abstraction is used to **reduce complexity** and **make the code reusable** in an application.

---
# Inheritance in OOP

Inheritance in Object-Oriented Programming (OOP) occurs when a **class derives from another class**.

- The **child class** inherits all the **public** and **protected** properties and methods from the **parent class**.
- The child class can also have **its own properties and methods**.

An inherited class is defined using the **extends** keyword.

---
# Interfaces in OOP

Interfaces allow you to **specify what methods** a class should implement.

- Interfaces make it easy to use **different classes** in the same way.
- When one or more classes use the same interface, it is referred to as **polymorphism**.

Interfaces are declared using the **interface** keyword.

# Polymorphism in OOP

Polymorphism is a **core principle** of Object-Oriented Programming (OOP) where **objects of different classes** can be treated as objects of a **common superclass**.

- It allows methods to **perform different actions** based on the object they are called upon.
- Polymorphism enhances **code flexibility** and **reusability**.

---
# Traits in PHP

PHP only supports **single inheritance**, meaning a child class can inherit from **only one parent**.

### Solving the Problem with Traits
If a class needs to **inherit multiple behaviors**, **OOP traits** provide a solution.

- Traits are used to **declare methods** that can be used in **multiple classes**.
- Traits can have **methods and abstract methods** that can be reused across different classes.
- Methods in traits can have any **access modifier** (**public, private, or protected**).

Traits are declared using the **trait** keyword.

---
# Understanding Late Static Binding in PHP

In PHP, programs are saved and then directly run on the browser. The script is executed through a web server, and we receive the output. We don’t manually compile PHP programs, but that doesn’t mean they are never compiled. The PHP interpreter handles this process for us.

## Two Phases of Execution

There are two phases in PHP execution:

1. **Compile-time** – The normal variables are replaced with their values.
2. **Run-time** – The `static` keyword properties are assigned their values.

## Late Static Binding in PHP

When overriding a property in a child class and creating an instance of the child class, the late static binding concept is used by writing the `static` keyword before using the property. 

Whenever the PHP interpreter compiles a function, if it encounters a `static` property, it postpones its resolution until runtime. At runtime, the property gets its value from the function it is being called from. This mechanism is known as **late static binding**.

---
# MySQLi vs. PDO in PHP

If you need a short answer, it would be: **"Whatever you like."**

Both **MySQLi** and **PDO** have their advantages:

- **PDO** supports 12 different database systems, whereas **MySQLi** works only with MySQL.
- If you need to switch your project to another database, **PDO** makes the process easier. You only need to update the connection string and a few queries. With **MySQLi**, you would have to rewrite the entire code, including queries.
- Both are **object-oriented**, but **MySQLi** also provides a **procedural API**.
- Both support **Prepared Statements**, which protect against **SQL injection** and enhance web application security.

### Summary:
| Feature       | MySQLi | PDO |
|--------------|--------|-----|
| Database Support | Only MySQL | Multiple databases |
| API Type | Object-oriented & Procedural | Object-oriented |
| Prepared Statements | ✅ | ✅ |
| Ease of Switching Databases | ❌ (Not easy) | ✅ (Easy) |

Ultimately, the choice depends on your project requirements.

---
# Model-View-Controller (MVC) Framework

The **Model-View-Controller (MVC)** framework is an **architectural design pattern** that separates an application into three main logical components: **Model, View, and Controller**. Each component is designed to handle specific aspects of application development.

## Key Features of MVC:
- **Separation of Concerns**: Isolates business logic from the presentation layer.
- **Scalability**: Makes applications more extensible and maintainable.
- **Industry Standard**: Frequently used in web development frameworks.
- **Supports Mobile Development**: Used in designing mobile applications.

## History and Purpose
MVC was created by **Trygve Reenskaug** to address the complexity of users controlling large data sets. The goal was to divide a **large application** into **specific sections**, each with a defined role.

## Components of MVC:
1. **Model**: Manages data, logic, and rules.
2. **View**: Displays information to users.
3. **Controller**: Handles user input and updates the Model and View.

Originally used for **desktop GUI applications**, MVC is now widely adopted in **web and mobile development** for its flexibility and structure.

---
# Resources
- [Who invent OOP and why](https://en.wikipedia.org/wiki/Object-oriented_programming)
- [Encapsulation and Abstraction](https://www.tutorialspoint.com/explain-difference-between-abstraction-and-encapsulation-in-php)
- [Inheritance in OOP](https://www.w3schools.com/php/php_oop_inheritance.asp)
- [PHP Interfaces & Polymorphism](https://www.geeksforgeeks.org/how-to-implement-polymorphism-in-php/)
- [Traits in PHP](https://www.w3schools.com/php/php_oop_traits.asp)
- [Late static binding & how it works](https://www.geeksforgeeks.org/what-is-late-static-bindings-in-php/)
- [Using OOP with MySQL (PDO & MySQLi)](https://www.w3schools.com/php/php_mysql_connect.asp)
- [MVC Architecture](https://www.geeksforgeeks.org/mvc-framework-introduction/)

