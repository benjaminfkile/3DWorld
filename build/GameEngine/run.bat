@echo off
echo Running with Java from: %~dp0jre\bin\java
%~dp0jre\bin\java -Djava.library.path=lib\natives -jar GameEngine.jar
pause
