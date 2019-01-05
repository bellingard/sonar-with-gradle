workflow "Run SC analysis" {
  on = "push"
  resolves = ["Trigger analysis", "Simple Build"]
}

action "Trigger analysis" {
  uses = "./gradlew"
  runs = "./gradlew"
  args = "sonarqube -Dsonar.host.url=https://sonarcloud.io -Dsonar.login=$SONAR_TOKEN"
  secrets = ["SONAR_TOKEN"]
}

action "Simple Build" {
  uses = "./gradlew"
  args = "test"
}
