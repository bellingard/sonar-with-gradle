Gradle Test Project
=======================

[![Build status](https://travis-ci.org/bellingard/sonar-with-gradle.svg?branch=master)](https://travis-ci.org/bellingard/sonar-with-gradle) [![Quality Gate](https://sonarqube.com/api/badges/gate?key=test:example-java-gradle)](https://sonarqube.com/dashboard/index/test:example-java-gradle)

#### This project is analysed on [SonarQube.com](https://sonarqube.com)!

Analysis is performed:
- On the master branch: the results are pushed to SonarQube.com
 - See https://sonarqube.com/overview?id=test%3Aexample-java-gradle
- On pull requests: the results are available within the pull request

Take a look at the [runSonarQubeAnalysis.sh](https://github.com/bellingard/sonar-with-gradle/blob/master/runSonarQubeAnalysis.sh) file to learn in details how this done.


#### How to run an analysis on your SonarQube instance?

Make sure you have installed SonarQube with the Java, JavaScript and Groovy plugins. Make sure that Maven is installed on your system. Then run:

> ./gradlew sonarqube
