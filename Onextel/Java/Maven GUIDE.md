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

# Installation
Prerequisites:
- Java must be installed

[Download Maven](https://maven.apache.org/download.html)

# Creating a Project

1. Create a Maven project using command:
```bash
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.5 -DinteractiveMode=false
```

1. Change into the directory:
```bash
cd my-app
```

[Standard Project Structure](https://maven.apache.org/guides/introduction/introduction-to-the-standard-directory-layout.html)
```bash
my-app
|-- pom.xml
`-- src
    |-- main
    |   `-- java
    |       `-- com
    |           `-- mycompany
    |               `-- app
    |                   `-- App.java
    `-- test
        `-- java
            `-- com
                `-- mycompany
                    `-- app
                        `-- AppTest.java
```
The `src/main/java` directory contains the **project source code**, the `src/test/java` directory contains the **test source**, and the `pom.xml` file is the project's **Project Object Model**, or POM.

# THE POM

[Lifecycle Reference](https://maven.apache.org/ref/3.9.9/maven-core/lifecycles.html#lifecycles-reference)

---
# Build the Project

```bash
mvn package
```
Unlike the first command executed (_archetype:generate_), the second is simply a single word - _package_. Rather than a _goal_, this is a _phase_. A phase is a step in the [build lifecycle](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html), which is an ordered sequence of phases. When a phase is given, Maven executes every phase in the sequence up to and including the one defined.

## Introduction to Build Lifecycle
### Build Lifecycle Basics
