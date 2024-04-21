package {{.Vars.BasePackage}};

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


@SpringBootApplication
@EnableJpaRepositories("{{.Vars.BasePackage}}.repository")
public class {{.Vars.AppNamePascalCase}}Application {

	public static void main(String[] args) {
		SpringApplication.run({{.Vars.AppNamePascalCase}}Application.class, args);
	}

}
