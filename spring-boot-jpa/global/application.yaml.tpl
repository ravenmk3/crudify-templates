spring:
  application:
    name: {{.Vars.AppName}}
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://localhost:3306/{{.Vars.AppName}}?useUnicode=true&characterEncoding=UTF-8
    username: root
    password: root
