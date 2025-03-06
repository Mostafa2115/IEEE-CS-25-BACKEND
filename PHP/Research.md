# What is PHP?

- **PHP** is an acronym for **"PHP: Hypertext Preprocessor"**.
- PHP is a widely-used, open-source scripting language.
- PHP scripts are executed on the server.
- PHP is free to download and use.
  
---
# PHP | Types of Errors

- **Parse error or Syntax Error**: It is the type of error done by the programmer in the source code of the program. The syntax error is caught by the compiler. After fixing the syntax error the compiler compile the code and execute it. Parse errors can be caused dues to unclosed quotes, missing or Extra parentheses, Unclosed braces, Missing semicolon etc
- **Fatal Error**: It is the type of error where PHP compiler understand the PHP code but it recognizes an undeclared function. This means that function is called without the definition of function.
- **Warning Errors** : The main reason of warning errors are including a missing file. This means that the PHP function call the missing file.
- **Notice Error**: It is similar to warning error. It means that the program contains something wrong but it allows the execution of script.

---
# PHP echo and print Statements

- **echo** and **print** are both used to output data to the screen.
- They are similar, but there are some differences:

  - `echo` has **no return value**, while `print` has a **return value of 1**, so it can be used in expressions.
  - `echo` can take **multiple parameters** (though this is rarely used), while `print` can take only **one argument**.
  - `echo` is **marginally faster** than `print`.

---
# Scripting Language vs Programming Language

| Scripting Language | Programming Language |
|--------------------|----------------------|
| A scripting language is a language that uses a naive method to bring codes to a runtime environment. | A programming language is a language used by humans to navigate their communication with computers. |
| These are made for a particular runtime environment. | Programming languages are of three types: low-level, middle-level, and high-level programming languages. |
| They are used to create dynamic web applications. | Programming languages are used to write computer programs. |
| Scripting languages contain different libraries. | They are high-speed languages. |
| **Examples:** Bash, Ruby, Python, JavaScript, etc. | **Examples:** C++, Java, PHP (High-level), etc. |
| Scripting languages can be easily ported among various operating systems. | Programming languages are translation-free languages. |
| These languages require a host. | These languages are self-executable. |
| Do not create a `.exe` file. | These generate `.exe` files. |
| Most scripting languages are interpreted languages. | Most programming languages are compiled languages. |
| All scripting languages are programming languages. | All programming languages are not scripting languages. |
| It is easier to learn than a programming language. | It can take a significant amount of time to learn. |
| It is less code-intensive when compared with a programming language. | It is code-intensive. |
| It does not create any binary files. | It does create binary files. |
| It is easy for beginners to write and understand the code. | It is difficult for beginners to write and understand the code. |
| It is run inside another program. | It is independently run. |
| It needs fewer lines of code. | It needs numerous lines of code. |
| It has low maintenance cost. | It has high maintenance cost. |

---
# Static Typing vs Dynamic Typing

| Aspect             | Static Typing                          | Dynamic Typing                         |
|-------------------|--------------------------------|--------------------------------|
| **Determination Time** | Determined at compile-time. | Determined at runtime. |
| **Error Detection** | Errors caught during compilation. | Errors may appear during program execution. |
| **Performance** | Typically faster due to compile-time optimizations. | Possible overhead from runtime type-checks. |
| **Coding Verbosity** | Requires explicit type declarations. | Concise; types aren’t specified explicitly. |
| **Flexibility** | Variables bound to one type. | Variable types can change during execution. |
| **Type Safety** | High type safety through early error detection. | Some type safety traded off for flexibility. |

---
# What is the difference between for and foreach loop in PHP?

| for loop | foreach loop |
|----------|-------------|
| The iteration is clearly visible. The block of code is repeated as long as the condition is met or the counter meets a specific value. | The iteration is hidden. The block of code is repeated until iterating over the array is completed. |
| Good performance. | Better performance. |
| The stop condition is specified easily. | The stop condition has to be explicitly specified. |
| Upon working with collections, it needs the usage of the count() function. | It can simply work without the usage of the count() method. |

---
## PHP Sessions and Cookies

### **Sessions**
A **session** is a way to store information (in variables) to be used across multiple pages. When a user visits a website and starts a new session:

1. The **server** creates a **unique session ID** and stores it in a **cookie** on the user’s computer.
2. The server also creates a **file** on the server to store the session variables for that user.
3. The **session ID** in the cookie is used to **identify** the user’s session on the server.
4. When the user navigates to a different page, the **session ID** is sent back to the server, and the server retrieves the corresponding session variables.

#### **Usage of Sessions**
Sessions are useful for storing **temporary data** that is specific to a single user and a single browser session. Examples include:
- Storing a user’s **shopping cart** items.
- Keeping track of **login status**.


### **Cookies**
A **cookie** is a small piece of data stored in a user’s web browser. It can hold information such as **user preferences** or **login details**.

#### **How Cookies Work**
1. When a user visits a website, the **server sends a cookie** to the user’s browser.
2. The **browser stores** the cookie.
3. When the user **returns** to the website, the **server accesses the cookie** and uses the stored information.

#### **Usage of Cookies**
Cookies are used for storing **longer-term data** that needs to persist across **multiple sessions**. Examples include:
- Remembering a user’s **preferred language** or **theme**.
- Storing **authentication tokens** for automatic login.

#### **Cookie Limitations**
- Stored as **files** on the user’s computer.
- Can remain for a specified duration unless deleted by the user.
- **Limited in size** (typically **4KB** or less).

### **Using PHP Sessions**
To use **sessions** in PHP, you must start a session using the `session_start()` function. This function **must be called before** any output is sent to the browser, so it is usually placed at the **top** of the PHP script.

```php
<?php
// Start a session
session_start();

// Store session variables
$_SESSION["username"] = "JohnDoe";
$_SESSION["email"] = "john@example.com";

// Retrieve session variables
echo "Username: " . $_SESSION["username"];
?>
```
---
## PHP Error Handling

### **Introduction**

When creating scripts and web applications, **error handling** is an important part. If your code lacks error checking, your program may appear unprofessional and be vulnerable to security risks.

This tutorial covers some of the most common error handling methods in PHP.

### **Error Handling Methods**

We will show different error handling techniques:

1. **Simple "die()" statements**
2. **Custom errors and error triggers**
3. **Error reporting**

---
# Resources
- [What is PHP?](https://www.w3schools.com/php/php_intro.asp)
- [what r the three main error types in PHP](https://www.geeksforgeeks.org/php-types-of-errors/)
- [echo vs print](https://www.w3schools.com/php/php_echo_print.asp)
- [Scripting Language vs Programming Language](https://www.geeksforgeeks.org/whats-the-difference-between-scripting-and-programming-languages/)
- [Static Typing vs Dynamic Typing](https://www.bairesdev.com/blog/static-vs-dynamic-typing/)
- [What is the difference between for and foreach loop in PHP?](https://www.geeksforgeeks.org/what-is-the-difference-between-for-and-foreach-loop-in-php/)
- [PHP Sessions and Cookies](https://www.geeksforgeeks.org/what-are-the-difference-between-session-and-cookies-in-php/)
- [PHP Error Handling](https://www.w3schools.com/PHP/php_error.asp)
