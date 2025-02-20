# How the Web Works

How the web works provides a high-level description of what happens when you use a web browser to navigate to a web page, explaining the magic that goes on behind the scenes to deliver the relevant code to your computer for the browser to assemble into something you can look at.

This theory is not essential to writing web code in the short term, but before long you'll really start to benefit from understanding what's happening in the background.

---
# HTTP VS HTTPS
# Summary of Differences: HTTP vs. HTTPS

## HTTP vs. HTTPS Comparison

| Feature           | HTTP  | HTTPS  |
|------------------|-------|--------|
| **Stands for**   | Hypertext Transfer Protocol | Hypertext Transfer Protocol Secure |
| **Underlying Protocols** | HTTP/1 and HTTP/2 use TCP/IP. HTTP/3 uses QUIC protocol. | Uses HTTP/2 with SSL/TLS to further encrypt the HTTP requests and responses |
| **Port**         | Default Port 80 | Default Port 443 |
| **Used for**     | Older text-based websites | All modern websites |
| **Security**     | No additional security features | Uses SSL certificates for public-key encryption |
| **Benefits**     | Made communication over the internet possible | Improves website authority, trust, and search engine rankings |


---
# Web Servers

At a basic level, a web server stores and delivers websites and web applications. Web servers are composed of hardware and software that work together to facilitate the exchange of data.

## Hardware Component
The hardware component of a web server refers to the physical or virtual computer that stores the website’s files and components. This includes everything from static HTML documents, text files, images, and videos to more complex dynamic scripts. For example, if you visit a website with a video on its home page, that video is stored on the web server hardware.

## Software Component
The software component of a web server is responsible for controlling how users can access the files stored on the server. It does this by managing the requests that come in from web browsers and other devices connected to the internet. The software installed on the web server allows you to view websites in your web browser.

## Exploring Web Server Components
Let’s start by digging into the components that make web servers tick.


---
# Resources
- [How the Web Works](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_the_web_works)
- [HTTP VS HTTPS](https://aws.amazon.com/compare/the-difference-between-https-and-http/)
- [Web Servers](https://www.akamai.com/glossary/what-are-web-servers)
