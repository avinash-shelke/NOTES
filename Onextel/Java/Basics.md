#java

```table-of-contents
title: 
style: nestedList # TOC style (nestedList|nestedOrderedList|inlineFirstLevel)
minLevel: 0 # Include headings from the specified level
maxLevel: 0 # Include headings up to the specified level
includeLinks: true # Make headings clickable
hideWhenEmpty: false # Hide TOC if no headings are found
debugInConsole: false # Print debug info in Obsidian console
```

## OOPs Basics:
- [Objects, Classes, Interfaces, Packages, and Inheritance](https://dev.java/learn/oop/)
---
### Interfaces: 
```java
interface Bicycle {

    //  wheel revolutions per minute
    void changeCadence(int newValue);

    void changeGear(int newValue);

    void speedUp(int increment);

    void applyBrakes(int decrement);
}```

> [!NOTE]
>The compiler will now require that methods changeCadence, changeGear, speedUp, and applyBrakes **all be implemented**. Compilation will fail if those methods are missing from this class.

```java
class ACMEBicycle implements Bicycle {

    int cadence = 0;
    int speed = 0;
    int gear = 1;

    void changeCadence(int newValue) {
         cadence = newValue;
    }

    void changeGear(int newValue) {
         gear = newValue;
    }

    void speedUp(int increment) {
         speed = speed + increment;   
    }

    void applyBrakes(int decrement) {
         speed = speed - decrement;
    }

    void printStates() {
         System.out.println("cadence:" +
             cadence + " speed:" + 
             speed + " gear:" + gear);
    }
}
```

>[!IMPORTANT]
>Implementing an interface allows a class to become more formal about the behavior it promises to provide. **Interfaces form a contract between the class and the outside world, and this contract is enforced at build time by the compiler. If your class claims to implement an interface, all methods defined by that interface must appear in its source code before the class will successfully compile.**

>[!NOTE]
> We will need to add the `public` keyword to the beginning of the implemented interface methods.

---
### Package: 
A package is a namespace that organizes a set of related classes and interfaces. Conceptually, package can be thought as similar to different folders in computer, where we might keep HTML pages in one folder, images in another, and scripts or applications in yet another. Because software written in Java programming language can be composed of hundreds or thousands of individual classes, it makes sense to keep things organized by placing related classes and interfaces into packages. 
The Java platform provides an enormous class library (a set of packages) suitable for use in your own applications. This library is known as the "Application Programming Interface", or "API" for short. Its packages represent the tasks most commonly associated with general-purpose programming. For example, a [`String`](https://docs.oracle.com/en/java/javase/23/docs/api/java.base/java/lang/String.html) object contains state and behavior for character strings; a [`File`](https://docs.oracle.com/en/java/javase/23/docs/api/java.base/java/io/File.html) object allows a programmer to easily create, delete, inspect, compare, or modify a file on the filesystem; a [`Socket`](https://docs.oracle.com/en/java/javase/23/docs/api/java.base/java/net/Socket.html) object allows for the creation and use of network sockets

---
## Variables and Naming:
- [Variables, Naming](https://dev.java/learn/language-basics/variables/)

In Java, **field** and **variable** both often seem to refer to same thing.
- **Instance Variables (Non-Static Fields)**: Objects store their individual states in "non-static fields", that is, fields declared without the `static` keyword. Non-static fields are also known as instance variables because their values are unique to each instance of a class; such as the `currentSpeed` of one bicycle is independent from the `currentSpeed` of another.
- **Class Variables (Static Fields)** A class variable is any field declared with the `static` modifier; this tells the compiler that there is exactly one copy of this variable in existence, regardless of how many times the class has been instantiated. A field defining the number of gears for a particular kind of bicycle could be marked as `static` since conceptually the same number of gears will apply to all instances. The code `static int numGears = 6;` would create such a `static` field. Additionally, the keyword `final` could be added to indicate that the number of gears will never change.
- **Local Variables** Similar to how an object stores its state in fields, a method will often store its temporary state in local variables. The syntax for declaring a local variable is similar to declaring a field (for example, `int count = 0;`). There is no special keyword designating a variable as local; that determination comes entirely from the location in which the variable is declared — which is between the opening and closing braces of a method. As such, local variables are only visible to the methods in which they are declared; they are not accessible from the rest of the class.
- **Parameters** the signature for the main method is `public static void main(String[] args)`. Here, the `args` variable is the parameter to this method. The important thing to remember is that parameters are always classified as "variables" not "fields". This applies to other parameter-accepting constructs as well (such as constructors and exception handlers). 

Any type's (of above four) fields, methods, and nested types are collectively called its _members_.

---
## List of Keywords:

![[Pasted image 20250226040749.png]]
- **Name of variable** and the **identifiers** are the same thing.

---
## JAVA Naming Conventions:
Refer: [Naming Conventions](https://www.oracle.com/java/technologies/javase/codeconventions-namingconventions.html)
All conventions: [Code Conventions for the Java Programming Language](https://www.oracle.com/java/technologies/javase/codeconventions-introduction.html)

---
## 

