
src->main->resources->**application.properties**
We can add configurations in the application.properties file (for ex. MongoDB connections config)

Terminologies:

1. IOC Container:
2. Annotations:
   - @Autowired: it is the annotation used to get the object for a field
   - 


@SpringBootApplication: it is applied in the main Java file. It consists of three annotations 
1. @Configuration: always used with @Bean. @Bean is used before the function. In configuration code the @Configuration annotation is used.
2. @EnableAutoConfiguration: Automatically do the configuration. (for ex. MongoDB connections config about setting the password and connecting to database)
3. @ComponentScan:  it is IOC Container or Application Context which scans for the beans. Spring can only scan the Class or Component from the main package. If some class is created outside the package then it will not be scanned.

- Methods inside a controller class should be public so that they can be accessed and invoked by the spring framework or external HTTP requests.

- Selecting "raw" and "JSON" in the body of a POST request in Postman indicates that the request body will contain data in JSON format, allowing the server to parse and process the incoming data accurately.This ensures that the data is transmitted and recieved in a structured manner, following the JSON format conventions.


| SQL     | MongoDB     |
| ------- | ----------- |
| tables  | collections |
| columns | fields      |
| rows    | documents   |
**ORM** (Object Relational Mapping) : It is a technique used to map Java objects to database tables. It allows developers to work with databases using object-oriented programming concepts, making it easier to interact with relational databases.

Consider a Java Class *User* and a database table *users*.
ORM framework like Hibernate can *map the fields in the User class to columns in the users table,* making it easier to insert, update, retrieve, and delete records.

**JPA**(Java Persistence API): it is a way to achieve ORM, includes interfaces and annotations that we use in Java classes,require a persistence provider (ORM tools) for implementation.

**Persistence provider/ ORM tools**: *To use JPA, we need a persistence provider.* A persistence provider is a specific implementation of the JPA specification. Examples of JPA persistence providers include *Hibernate, EclipseLink and OpenJPA*. These providers implements the JPA interfaces and provide the underlying functionality to interact with databases.

**Spring Data JPA**: It is built on top of the JPA specification, but it is not a JPA implementation itself. Instead, *it simplifies working with JPA* by providing higher-level abstractions and utilities. However, *to use Spring Data JPA efficiently, you still need a JPA implementation*, such as Hibernate, EclipseLink, or another JPA-compliant provider, to handle the actual database interactions.

JPA is primarily designed for *working with relational databases*, where data is stored in tables with a predefined schema. MongoDB, on the other hand, is a NoSQL database that uses a different data model, typically based on collections of documents, which are schema-less or have flexible schema. This fundamental difference in data models and storage structures is why *JPA is not used with MongoDB*.

In case of MongoDB, we don't have a traditional JPA persistence provider. MongoDB is a NoSQL database, and *Spring Data MongoDB* serves as the "persistence provider" for MongoDB. *It provides the necessary abstractions and implementations to work with MongoDB in a Spring application.*

*Query Method DSL* and *Criteria API* are two different ways to interact with a database when using Spring Data JPA for relational databases and Spring Data MongoDB for MongoDB databases.

Spring Data JPA is a part of the Spring Framework that simplifies data access in Java applications, while Spring Data MongoDB provides similar functionality for MongoDB.

*Query Method DSL* is a simple and convenient way to create queries based on method naming conventions, while the *Criteria API* offers a more dynamic and programmatic approach for building complex and custom queries.

We just have to add `spring-boot-starter-data-mongodb` dependency in pom.xml: 
```xml
<dependency>  
    <groupId>org.springframework.boot</groupId>  
    <artifactId>spring-boot-starter-data-mongodb</artifactId>  
</dependency>
```


Controllers call the services. Controller will only create the endpoint and whatever function is there it is written in service.

Service contains the Business Logic

repository -> the interfaces are defined in this folder.

**HTTP codes:** 
it is a 3 digit numeric code returned by the web server as a part of response to an HTTP request made by a client.
These status code are used to convey information about the result or status of the requested operation.
HTTP status codes are grouped into 5 group depending on the first digit: 
- 1XX (Informational): This status code indicate that the request was received and understood, and the server is continuing to process it. mostly used for informational purposes and rarely seem in practise.
- 2XX (successful): These status code indicate that request was successfully received, understood and processed by the server.
    - 200 (OK): The request has been successfully processed, and the server is returning the resource.
    - 201 (Created): The request has been fulfilled, and new resource has been created as a result.
    - 204 (No Content): The request was successful, but there is no response body (typically used for operations that don't return data, like a successful deletion)
- 3XX (redirection): These status codes indicate that further action is needed to complete the request. They are used when the client needs to take additional steps to access the requested resource.
    - 301(Moved Permanently): The requested resource has been permanently moved to different URL.
    - 302(Found): The HTTP status code 302 indicates that the requested resource has been temporarily move to different URL. When a server sends a response with a 302 status code, it typically includes a location header field that specifies the new temporary URL where the client should redirect to.
    - 304(Not Modified): The client's cached version of the requested resource is still valid, so the server sends this status code to indicate that the client can use this cached copy.
- 4XX (Client error): These status code indicates that there was an error on the client's part, such as a malformed request or authentication issues.
    - 400 (Bad Request): The server cannot understand or process the client's request due to invalid syntax or other client-side issues.
    - 401 (Unauthorized): The client needs to provide the authentication credentials to access the requested resource.
    - 403 (Forbidden): the client is authenticated, but it does not have permission to access the requested resource.
- 5XX (server error): These status code indicate that there was an error on the server's part while trying to fulfill the request.
    - 500 (Internal server error): A generic error message indicating that something went wrong on the server, and the server could not handle the request.
    - 502 (Bad Gateway): The server acting as a gateway or proxy received an invalid response from an upstream server.
    - 503 (Service unavailable): The server is unable to handle the request due to temporary overloading or maintenance.



We can send the Response in Springboot using the *ResponseEntity*. 
**ResponseEntity**: the ResponseEntity class is a part of the SpringFramework and is commonly used in the Spring Boot applications to customize the HTTP responses.
- It provides the methods for setting the response status, headers, and body. We can use to return different types of data in out controller methods, such as JSON, XML, or even HTML.
- We can use generics with ResponseEntity to specify the type of data we are returning.
- 

**LOMBOK**: It is a popular library in the Java ecosystem, often used in Spring Boot applications. 
It aims to reduce the boilerplate code that developers have to write, such as getters, setters, constructors, and more.
Lombok achieves this by generating this code automatically during compilation, based on annotations you add to your Java classes.
Lombok generates bytecode for methods like getters, setters, constructors, equals(), hashCode(), and toString(), as specified by the annotations used in the code. This generated code is added to the compiled class file (.class files).
The Java compiler compiles the classes,  including the generated code. This means that the generated methods become part of the compiled class files.
When we run the application, the generated methods are available for use, just like any other methods in your classes. 


**@Transactional**: 
>[!IMPORTANT]
If by any chance the flow breaks. The JournalEntry will be saved in journal_entries but will not be added to user collection.
To ensure consistency and atomicity of the data, @Transactions annotation is used.

- We have to add @Transactional to make a method or function to follow atomicity.
- Just like the @SpringBootApplication search for the @Components and @Configurations. Similarly, to get the @Transactional in the code, the main class must have the @EnableTransactionManagement
- PlatformTransactionManager: This is a manager which has an interface and methods commit() and rollback() to ensure atomicity.
- MongoTransactionManager: This implements the PlatformTransactionManager interface and provide some methods useful to work with Mongo database.


**MongoDB Atlas**: 
- Clusters:
    1. Replication:
    2. Sharding:


**Spring Security:** 
Spring Security is a powerful and highly customizable security framework that is often used in the Spring boot applications to handle *authentication and authorization*.
- Authentication: A process of verifying a user's identity (eg. username & password)
- Authorization: The process of granting or denying access to specific resources or actions based on the authenticated user's role and permissions.

Once the dependency is added , Spring boot's auto configuration feature will automatically apply security to the application.
By default, Spring uses *Http Basic authentication* 

- Http Basic authentication: The client sends the authorization header `Authorization: Basic <encoded string>` . The server decodes the string, extracts the username and password, and verifies them. If they are correct, access is granted. Otherwise an "Unauthorized" response is sent back. 
- Encoded string : Encoded credentials are combined into a string like **username:password** which is then encoded using the Base64.
- By default, all endpoints will be secured. Spring security will generate a default user with a random password that is printed in the console logs on startup.
- We can also configure username and password in the `application.properties`:

```java
spring.security.user.name = user
spring.security.user.password = password
```

But the best practice is to store it into the DB.

---

The class that needs to be added in `config` package: 
```java
@Configuration
@EnableWebSecurity
public class SecurityConfig {
    @Bean  
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {  
        http  
                .authorizeHttpRequests((authz) -> authz  
                        .anyRequest().authenticated()  
                )  
                .httpBasic(withDefaults());  
        return http.build();  
    }  
}
```


>[!IMPORTANT]
>**WebSecurityConfigurerAdapter  is deprecated**
>https://spring.io/blog/2022/02/21/spring-security-without-the-websecurityconfigureradapter

---
Web Security:
- **@EnableWebSecurity**:  This annotation signals Spring to enable its web security support. It makes the application secured. It is used in conjunction with the *@Configuration.*

>[!Note]
>Basic Authentication, by its design, is stateless.
>
>Some applications do mix Basic Authentication with the session management for various reasons. This is not the standard behavior and requires additional setup and logic. In such scenarios, once user's credentials are verified via Basic Authentication, a session might be established, the client is provided a session cookie. This way, the client won't need to send the Authentication header with every request, and the server can rely on the session cookie to identify the authenticated user.


Our Spring Boot application should authenticate users based on their credentials stored in a MongoDB database.
- This means that our users and their passwords (hashed) will be stored in MongoDB, and when a user tries to login, the system should check the provided credentials against what is stored in the database. 
Steps to achieve it:
- [ ] 1. A User entity to represent the user data model. 
- [ ] 2. A repository UserRepository to interact with MongoDB.
- [ ] 3. UsersDetailsService implementation to fetch the user details.
- [ ] 4. A configuration SecurityConfig to integrate everything with Spring security.

>[!Note]
>**Repository is created as interface not as class**. As it extends the JpaRespository (mysql) or MongoRepository (mongodb) which is also an interface. 
>If we create repository and extend the MongoRepository we have to write all the functions in it. By creating interface we can directly access the methods without writing in repository.


>[!Info]
>Spring Security by default has the csrf enabled. 
>CSRF protects against what is aptly titled a Cross Site Request Forgery. In this type of attack, a token such as a session ID, is stored in the browser's cookies. The default behavior is to send the cookies with a request to a site. Someone can exploit this default behavior to impersonate you and do malicious things.
>
>When to diable the csrf: 
>- You are using another token mechanism
>- You want to simplify interactions between a client and the server.



