workflow "Run SC analysis" {
  on = "push"
  resolves = ["Trigger analysis"]
}

action "Trigger analysis" {
  uses = "./gradlew"
  runs = "./gradlew"
  args = "sonarqube -Dsonar.host.url=https://sonarcloud.io -Dsonar.login=$SONAR_TOKEN"
  secrets = ["SONAR_TOKEN"]
  needs = "Simple Build"
}

action "Simple Build" {
  uses = "docker://gradle:latest"
  args = "test"
}
