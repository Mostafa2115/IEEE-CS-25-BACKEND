## Request Lifecycle

### Introduction

When using any tool in the "real world", you feel more confident if you understand how that tool works. Application development is no different. When you understand how your development tools function, you feel more comfortable and confident using them.

The goal of this document is to give you a good, high-level overview of how the Laravel framework works. By getting to know the overall framework better, everything feels less "magical" and you will be more confident building your applications. If you don't understand all of the terms right away, don't lose heart! Just try to get a basic grasp of what is going on, and your knowledge will grow as you explore other sections of the documentation.

---
## Routing

### Basic Routing

The most basic Laravel routes accept a URI and a closure, providing a very simple and expressive method of defining routes and behavior without complicated routing configuration files:

```php
use Illuminate\Support\Facades\Route;

Route::get('/greeting', function () {
    return 'Hello World';
});
```

---
## Facades

Throughout the Laravel documentation, you will see examples of code that interacts with Laravel's features via "facades". Facades provide a "static" interface to classes that are available in the application's service container. Laravel ships with many facades which provide access to almost all of Laravel's features.

Laravel facades serve as "static proxies" to underlying classes in the service container, providing the benefit of a terse, expressive syntax while maintaining more testability and flexibility than traditional static methods. 

It's perfectly fine if you don't totally understand how facades work—just go with the flow and continue learning about Laravel.

---
## What is Blade in Laravel?

Blade is Laravel’s built-in template engine that allows developers to write dynamic HTML with embedded PHP in a more readable and maintainable way.

Unlike traditional PHP templates, Blade offers features such as:

- **Template Inheritance**: Helps avoid code duplication and enables flexible page structures.
- **Reusable Components**: Allows breaking the UI into smaller, reusable pieces.

These features make front-end development more efficient and organized.

## Setting Up Blade in Laravel

Blade templates are stored in the `resources/views/` directory. By default, Laravel uses the `.blade.php` extension for Blade files.

### Example: Creating a Layout File

```blade
// resources/views/layouts/main.blade.php
<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>
</head>
<body>
    <header>
        <h1>My Laravel App</h1>
    </header>
    <main>
        @yield('content')
    </main>
    <footer>
        <p>&copy; 2025 My Laravel App</p>
    </footer>
</body>
</html>
```

---
## What is Object-Relational Mapping (ORM)?

Object-relational mapping (ORM) is a way to align programming code with database structures. ORM uses metadata descriptors to create a layer between the programming language and a relational database. It connects object-oriented programming (OOP) code with the database and simplifies interactions between relational databases and OOP languages.

### Key Concept: Abstraction

The idea of ORM is based on abstraction. The ORM mechanism allows developers to:

- Address, access, and manipulate objects without needing to understand how those objects relate to their underlying data sources.
- Maintain a consistent view of objects over time, even when data sources, destinations, or accessing applications change.

### Benefits of Using ORM

- **CRUD Operations Without SQL**: Developers can perform Create, Read, Update, and Delete (CRUD) operations in relational databases without writing raw SQL.
- **Saves Time and Complexity**: ORM is especially useful for developers who:
  - Don't know SQL.
  - Want to avoid spending time writing SQL queries.
  - Prefer working with object-oriented code rather than SQL syntax.
- **Abstraction Over SQL**: ORM eliminates the need to use raw SQL or SQL query builders by providing a high-level, language-native way to interact with the database.

In summary, ORM bridges the gap between relational databases and object-oriented programming, making development faster, more intuitive, and less error-prone.

---
# Resources 
- [Request lifecycle](https://laravel.com/docs/12.x/lifecycle)
- [Routing in Laravel](https://laravel.com/docs/12.x/routing)
- [Facades](https://laravel.com/docs/11.x/facades)
- [Blade Templates and how it works](https://dev.to/icornea/laravel-blade-template-engine-a-beginners-guide-54bi)
- [What is the ORM ,why it is so useful](https://www.theserverside.com/definition/object-relational-mapping-ORM)

