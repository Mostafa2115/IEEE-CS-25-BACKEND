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
# Resources
- [What is PHP?](https://www.w3schools.com/php/php_intro.asp)
- [what r the three main error types in PHP](https://www.geeksforgeeks.org/php-types-of-errors/)
- [echo vs print](https://www.w3schools.com/php/php_echo_print.asp)
- [Scripting Language vs Programming Language](https://www.geeksforgeeks.org/whats-the-difference-between-scripting-and-programming-languages/)
- [Static Typing vs Dynamic Typing](https://www.bairesdev.com/blog/static-vs-dynamic-typing/)
- [What is the difference between for and foreach loop in PHP?](https://www.geeksforgeeks.org/what-is-the-difference-between-for-and-foreach-loop-in-php/)
