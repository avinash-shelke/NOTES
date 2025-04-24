#!/bin/bash

# Define the repository URL and project directories
REPOSITORY_URL="https://github.com/1xtel/rnd.git"
PROJECT_DIR="rnd"
SUBPROJECT_DIR="validatenumbers-perf"
JAVA_FILE_PATH="validatenumbers-perf/src/main/java/com/onextel/Main.java"
MAVEN_DIR="/usr/share/maven"

# Step 1: Check if Maven is installed
check_maven() {
    echo "Checking if Maven is installed..."

    if command -v mvn &> /dev/null; then
        MAVEN_VERSION=$(mvn -v | head -n 1)
        echo "Maven is installed: $MAVEN_VERSION"
        
        # Check if Maven version is the latest or not
        MAVEN_VERSION_NUMBER=$(echo $MAVEN_VERSION | awk '{print $3}')
        echo "Installed Maven version: $MAVEN_VERSION_NUMBER"

        # Suggest installing the latest version if the version is older
        if [[ "$MAVEN_VERSION_NUMBER" < "3.8.1" ]]; then
            echo "The installed version of Maven is older."
            echo "It's recommended to install the latest version of Maven for better performance and compatibility."
            echo "To install the latest version of Maven, run: sudo apt install maven"
        else
            echo "The installed Maven version is up-to-date."
        fi
    else
        echo "Maven is not installed."
        echo "Attempting to install Maven..."
        sudo apt update && sudo apt install maven -y || { echo "Maven installation failed."; exit 1; }
        echo "Maven installed successfully."
    fi
}

# Step 2: Check if Java 23+ is installed
check_java() {
    echo "Checking if Java 23+ is installed..."

    if command -v java &> /dev/null; then
        JAVA_VERSION=$(java -version 2>&1 | head -n 1)
        echo "Java is installed: $JAVA_VERSION"
        JAVA_VERSION_NUMBER=$(echo $JAVA_VERSION | awk -F '"' '{print $2}' | awk -F '.' '{print $1}')
        
        # Check if Java version is 23 or higher
        if [ "$JAVA_VERSION_NUMBER" -ge 23 ]; then
            echo "Java version is 23 or higher."
        else
           echo "Java version is outdated. Installing Java 23+..."

           # Download and install Java 23
           wget -q https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.deb
           sudo dpkg -i jdk-23_linux-x64_bin.deb || { echo "Failed to install Java 23."; exit 1; }

           echo "Java 23+ installed successfully."

           # Set JAVA_HOME
           echo "Setting JAVA_HOME environment variable..."
           echo "export JAVA_HOME=/usr/lib/jvm/jdk-23.0.1-oracle-x64" >> ~/.bashrc
           echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc
           source ~/.bashrc
        fi
    else
        echo "Java is not installed."
        echo "Attempting to install Java 23+..."
        wget -q https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.deb
        sudo dpkg -i jdk-23_linux-x64_bin.deb || { echo "Failed to install Java 23."; exit 1; }

        echo "Java 23+ installed successfully."
        # Set JAVA_HOME
        echo "Setting JAVA_HOME environment variable..."
        echo "export JAVA_HOME=/usr/lib/jvm/jdk-23.0.1-oracle-x64" >> ~/.bashrc
        echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc
        source ~/.bashrc
    fi
}

# Step 3: Clone the repository
clone_repository() {
    if [[ -d $PROJECT_DIR ]]; then
        echo "Repository already cloned."
    else
        echo "Cloning repository..."
        git clone "$REPOSITORY_URL" || { echo "Failed to clone repository."; exit 1; }
    fi
}

# Step 4: Navigate to the project directory
navigate_to_project() {
    if [[ -d $PROJECT_DIR ]]; then
        cd "$PROJECT_DIR" || { echo "Failed to navigate to project directory."; exit 1; }
    else
        echo "Project directory not found. Please ensure the repository is cloned."
        exit 1
    fi
}

# Step 5: Update Main.java to accept a custom port number
update_main_java() {
    if [[ -f $JAVA_FILE_PATH ]]; then
        echo "Updating Main.java to take custom port input..."

        # Prompt the user for a port number
        while true; do
            read -p "Enter the port number (1024-65535): " PORT
            if [[ "$PORT" =~ ^[0-9]+$ ]] && [ "$PORT" -ge 1024 ] && [ "$PORT" -le 65535 ]; then
                break
            else
                echo "Invalid port. Please enter a valid port number between 1024 and 65535."
            fi
        done

        # Update the Main.java file
        sed -i "s|System.setProperty(\"server.port\", \"8090\");|System.setProperty(\"server.port\", \"$PORT\");|" "$JAVA_FILE_PATH" || { echo "Failed to update Main.java"; exit 1; }

        echo "Main.java updated with port $PORT"
    else
        echo "Main.java not found at $JAVA_FILE_PATH"
        exit 1
    fi
}

# Step 6: Build and run the project
build_and_run() {
    if [[ -d $SUBPROJECT_DIR ]]; then
        cd "$SUBPROJECT_DIR" || { echo "Failed to navigate to subproject directory."; exit 1; }
        echo "Building the project..."
        mvn clean install || { echo "Maven build failed. Retrying..."; mvn clean install || { echo "Second attempt failed."; exit 1; } }
        mvn compile || { echo "Maven compilation failed."; exit 1; }
        echo "Running the project..."
        mvn spring-boot:run || { echo "Failed to run the project."; exit 1; }
    else
        echo "Subproject directory not found."
        exit 1
    fi
}

# Main execution
echo "Starting the setup process..."

check_maven
check_java
clone_repository
navigate_to_project
update_main_java
build_and_run

echo "Project setup and execution completed successfully!"

