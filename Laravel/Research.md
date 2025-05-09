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
# Eloquent: Relationships

## Introduction

Database tables are often related to one another. For example, a blog post may have many comments, or an order could be related to the user who placed it. Eloquent makes managing and working with these relationships easy, and supports several different types of relationships:

- **One To One**  
- **One To Many**  
- **Many To Many**  
- **Has Many Through**  
- **Polymorphic Relations**  
- **Many To Many Polymorphic Relations**

## Defining Relationships

Eloquent relationships are defined as methods on your Eloquent model classes. Since, like Eloquent models themselves, relationships also serve as powerful query builders, defining relationships as methods provides powerful method chaining and querying capabilities. 

For example, we may chain additional constraints on this `posts` relationship:

```php
$user->posts()->where('active', 1)->get();
```

---
# What is the N+1 Query Problem?

The **N+1 query problem** occurs when an application makes one initial query to the database followed by an additional query for each result obtained from the first query. This typically happens in object-relational mapping (ORM) frameworks when dealing with relationships between models.

For instance, imagine a scenario in a Laravel application where you need to display all posts and their associated comments on a webpage. An intuitive approach might involve loading all posts first and then iterating through each post to load its related comments:

```php
$posts = Post::all();

foreach ($posts as $post) {
    $comments = $post->comments; // Additional query for each post
}
```

---
# What is CSRF?

**Cross-site request forgery (CSRF)** attacks are common web application vulnerabilities that take advantage of the trust a website has already granted a user and their browser. In a CSRF attack, an attacker typically uses social engineering techniques to manipulate an authenticated user into executing malicious actions without their awareness or consent. Simply by clicking on a legitimate-seeming link in an email or chat message, the user may unwittingly give an attacker the ability to co-opt their identity and access privileges.

From that point on, the attacker can impersonate their victim and use their account to perform anything from a harmless prank on an unsuspecting user to an illicit money transfer that drains the victim’s bank account. If the targeted user is a web administrator with broad access privileges, a CSRF attack can compromise the entire web application.

When successful, a CSRF attack can be harmful both to the business operating the site and the user who has accessed it. Such exploits can negatively impact client relationships, damage customer confidence, and result in instances of fraud or theft of financial resources. CSRF attacks have been employed against major services and sites such as Gmail and Facebook, among others.

CSRF is also known by a number of other names, including **XSRF**, **"sea surf"**, **session riding**, **cross-site reference forgery**, and **hostile linking**. Microsoft refers to this type of attack as a **one-click attack** in its threat modeling process and in many places in its online documentation. CSRF is considered a flaw under the **A5 category in the OWASP Top 10**.

---

# How Does CSRF Work?

When users attempt to access a site, their browser often automatically includes any credentials associated with the site along with their request so that the login process is more convenient. These credentials can include the user's **session cookie**, **basic authentication credentials**, **IP address**, **Windows domain credentials**, and so on. Once the user is authenticated to the site, however, the site has no way to distinguish a forged request from a legitimate user request.

By co-opting the victim’s identity and access via a CSRF attack, an attacker can make a user perform unintended actions. Typically, the attacker persuades a victim to click on a link by using a social-engineering technique via an email, chat message, or a similar form of communication. The user may then unknowingly encounter malicious HTML or JavaScript code in the email message or after loading a site page that requests a specific task URL. The task then executes, either directly or by using a cross-site scripting flaw. The user is often unaware that anything has happened until after a malicious action has occurred.

CSRF attacks usually target functions that cause a **state change on the server** but can also be used to access sensitive data. Upon performing a successful CSRF attack on a victim’s account, a malicious actor can:

- Initiate a transfer of funds  
- Purchase an item  
- Place a product in a shopping cart  
- Alter account information such as a shipping address  
- Change a password  
- Use any other function that is available on the vulnerable website
 
---
# Quick Intro to Livewire

**Livewire** is a full-stack framework in Laravel created by **Caleb Porzio** that makes it easy to create **reactive interfaces without writing any JavaScript** — that's right, **no JavaScript**, all in PHP. This means developers can leverage the power of Laravel and Blade templates to build **dynamic UIs** that respond to user actions such as form submissions, scrolling, mouse movements, or button clicks — all **without reloading the page**.

As a result, users enjoy a smoother, more fluid experience when interacting with web applications built using Livewire, much like they would with traditional front-end frameworks.

---

## Sample Livewire Snippets

### 📦 Implementation Logic

```php
<?php

namespace App\Http\Livewire;

use Livewire\Component;

class CountButton extends Component
{
    public $count = 0;

    public function increment() {
        $this->count++;
    }

    public function render()
    {
        return view('livewire.count-button');
    }
}
```
## Blade Template
```
<div>
    You've clicked me {{ $count }} times
    <button wire:click="increment" class="p-4 bg-green">
        Click Me!
    </button>
</div>
```
## Page Integration
```
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    @livewireStyles
</head>

<body class="antialiased">

    <livewire:count-button />

    @livewireScripts
</body>

</html>
```

---
# Resources 
- [Request lifecycle](https://laravel.com/docs/12.x/lifecycle)
- [Routing in Laravel](https://laravel.com/docs/12.x/routing)
- [Facades](https://laravel.com/docs/11.x/facades)
- [Blade Templates and how it works](https://dev.to/icornea/laravel-blade-template-engine-a-beginners-guide-54bi)
- [What is the ORM ,why it is so useful](https://www.theserverside.com/definition/object-relational-mapping-ORM)
- [Defining relationships in Eloquent models](https://laravel.com/docs/5.5/eloquent-relationships)
- [The N+1 query problem in Laravel](https://loadforge.com/guides/optimizing-laravel-applications-by-detecting-n1-queries)
- [What is the XSRF or CSRF ... is there a difference between them??](https://www.rapid7.com/fundamentals/cross-site-request-forgery/)
- [What is Livewire?](https://medium.com/@developer.olly/an-overview-of-how-livewire-works-85395746d10a)

