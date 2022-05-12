# BeanStart
More function windows minecraft java server start .bat file

[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/HappyAreaBean/BeanStart?label=latest%20stable&style=for-the-badge)](https://github.com/HappyAreaBean/BeanStart/releases) 
[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/HappyAreaBean/BeanStart?include_prereleases&label=latest%20beta&style=for-the-badge)](https://github.com/HappyAreaBean/BeanStart/releases) 
[![GitHub release (latest by date)](https://img.shields.io/github/downloads/HappyAreaBean/BeanStart/latest/total?label=Downloads%40Latest&style=for-the-badge)](https://github.com/HappyAreaBean/BeanStart/releases)

---

# Features

* Super easy to modify jar file compare to you need to edit the jar file name in startup command eveytimes
* One time override the jar file with a simple command line! (Great for testing, develpment!)
* Human readable window title to provides more readability
* Want to auto restart? We do it for you for a single yes/no option!
* Full detailed information when you start! For example, java version, jvm startup command, memory info, jar file, etc.

---

# How to one time override the jar file?

The override command format:

```batch
RUN.bat <the file name you want to override>.jar
```

Example: Overiding the jar file to `override.jar`
```batch
RUN.bat override.jar
```