# SDKMAN
Making life easier. No more trawling download pages, extracting archives, 
messing with _HOME and PATH environment variables.

##Installing and Switching versions with SDKMAN

SDKMAN is a bit different and handles both the install and the switching. SDKMAN also places the installed JDK's into its own directory tree, which is typically ~/.sdkman/candidates/java. SDKMAN allows setting a global default version, and a version specific to the current shell.

Install SDKMAN from https://sdkman.io/install
List the Java versions available to make sure you know the version ID

```shell script
$ sdk list java
```
Install one of those versions, for example, Java 13:
```shell script
$ sdk install java 13.0.0-open
``` 
Make 13 the default version:
```shell script
$ sdk default java 13.0.0-open
```
Or switch to 13 for the session:
```shell script
$ sdk use java 13.0.0-open
```
When you list available versions for installation using the list command, you will see a wide variety of distributions of Java:
```shell script
$ sdk list java
```
And install additional versions, such as JDK 8:
```shell script
$ sdk install java 8.0.181-oracle
```
SDKMAN can work with previously installed existing versions. Just do a local install giving your own version label and the location of the JDK:

```shell script
$ sdk install java my-local-13 /Library/Java/JavaVirtualMachines/jdk-13.jdk/Contents/Home
```
And use it freely:
```shell script
$ sdk use java my-local-13
``
