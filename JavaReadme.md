# Java Installation on Mac

## Where is my JDK?
````shell script
$ /usr/libexec/java_home -V
````

## brew search java
````shell script
$ brew search java
==> Formulae
app-engine-java              javacc                       jslint4java                  pdftk-java
google-java-format           javarepl                     libreadline-java

==> Casks
eclipse-java                           netbeans-java-ee                       yourkit-java-profiler
eclipse-javascript                     netbeans-java-se                       homebrew/cask-versions/java-beta
java ✔                                 oracle-jdk-javadoc
````

### ok so we installed java over cask
```shell script
$ brew cask info java
java: 13.0.2,8:d4173c853231432d94f001e99d882ca7
https://openjdk.java.net/
/usr/local/Caskroom/java/13.0.2,8:d4173c853231432d94f001e99d882ca7 (148B)
From: https://github.com/Homebrew/homebrew-cask/blob/master/Casks/java.rb
==> Name
OpenJDK Java Development Kit
==> Artifacts
jdk-13.0.2.jdk -> /Library/Java/JavaVirtualMachines/openjdk-13.0.2.jdk (Generic Artifact)
```

## brew search jdk
```shell script
$ brew search jdk
==> Formulae
openjdk ✔                              openjdk@11                             openjdk@12

==> Casks
adoptopenjdk                 oracle-jdk                   oracle-jdk-javadoc           sapmachine-jdk
```

### and nope jdk isn't cask but install as a formulae, so ask for this
````shell script
$ brew info openjdk
openjdk: stable 13.0.2+8 (bottled) [keg-only]
Development kit for the Java programming language
https://openjdk.java.net/
/usr/local/Cellar/openjdk/13.0.2+8_2 (631 files, 314.6MB)
  Poured from bottle on 2020-02-10 at 22:31:58
From: https://github.com/Homebrew/homebrew-core/blob/master/Formula/openjdk.rb
==> Dependencies
Build: autoconf ✘
==> Caveats
For the system Java wrappers to find this JDK, symlink it with
  sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

openjdk is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have openjdk first in your PATH run:
  echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.zshrc

For compilers to find openjdk you may need to set:
  export CPPFLAGS="-I/usr/local/opt/openjdk/include"

==> Analytics
install: 133,424 (30 days), 180,382 (90 days), 184,603 (365 days)
install-on-request: 10,360 (30 days), 19,040 (90 days), 23,232 (365 days)
build-error: 0 (30 days)

````
