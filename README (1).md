# MessMate

A Java web application packaged as a WAR file and deployed on Apache Tomcat, with a MySQL database for storage.

---

## Tech Stack

| Layer | Technology |
|-------|------------|
| Language | Java 17 |
| Web layer | Jakarta Servlet API 6.1.0 |
| Database | MySQL (via MySQL Connector/J 9.5.0) |
| Build tool | Apache Maven |
| Packaging | WAR (`MessMate.war`) |
| Server | Apache Tomcat |
| IDE | NetBeans |

## Prerequisites

- **JDK 17** or newer
- **Apache Maven** 3.6+
- **Apache Tomcat 11** (Jakarta Servlet 6.1 requires Tomcat 11, because older versions will not run this app)
- **MySQL Server**

## Getting Started

### 1. Clone the project

```bash
git clone <your-repository-url>
cd MessMate
```

### 2. Set up the database

1. Start MySQL and create a database:

   ```sql
   CREATE DATABASE messmate;
   ```

2. Import the schema:

   ```bash
   mysql -u <username> -p messmate < schema.sql
   ```

3. Update the database URL, username and password in the code that opens the connection.

### 3. Build

```bash
mvn clean package
```

This produces `target/MessMate.war`.

### 4. Deploy

**Option A: Tomcat manually**

Copy `target/MessMate.war` into Tomcat's `webapps/` folder and start Tomcat.

**Option B: NetBeans**

1. Open the project in NetBeans.
2. Add your Tomcat 11 server under *Services → Servers*.
3. Right-click the project and choose **Run**.

### 5. Open the app

```
http://localhost:8080/MessMate/
```

The path comes from `<finalName>MessMate</finalName>` in `pom.xml`. If your Tomcat runs on a different port, adjust the URL.

## Features

*List your features here, for example:*

- [ ] Feature one
- [ ] Feature two
- [ ] Feature three

## Project Structure

```
MessMate/
├── pom.xml                 # Maven build configuration
├── nb-configuration.xml    # NetBeans shared project settings
└── src/
    └── ...                 # Java source and web resources
```

## Configuration Notes

- `maven.compiler.release` is set to **17**.
- `jakarta.servlet-api` is marked `provided`, because Tomcat supplies it at runtime and it is not bundled into the WAR.
- `mysql-connector-j` is bundled into the WAR.

## Author

Akansha Saroha
MCA AI/ML
Chandigarh University
