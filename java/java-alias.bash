function setJavaAlias () {
  alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
  alias java11='export JAVA_HOME=$(/usr/libexec/java_home -v 11)'
}

setJavaAlias

echo "${GREEN} --< LOADED >-- ${NC} Java: java alias scripts "