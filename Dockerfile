FROM jenkins/jenkins:latest-jdk17

USER root

RUN mkdir /opt/payara -p

# Instala o Jenkins e suas dependências
RUN apt-get update && apt-get install maven -y && apt-get install git -y

# Baixa o payara micro e copia para a pasta
RUN curl -L https://search.maven.org/remotecontent?filepath=fish/payara/extras/payara-micro/5.2021.4/payara-micro-5.2021.4.jar -o /opt/payara/payara-micro.jar

#java -jar /opt/payara/payara-micro.jar --deploy /var/jenkins_home/workspace/Metre/target/Teste-Deploy-1.0-SNAPSHOT.war --contextroot /app --port 8181
# RUN chmod -R 777 /var/jenkins_home/
# RUN chmod +x /opt/payara/payara-micro.jar
# Expõe a porta 8080
EXPOSE 8080 8181
