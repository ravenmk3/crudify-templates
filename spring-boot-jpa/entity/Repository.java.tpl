package {{.Vars.BasePackage}}.repository;

import {{.Vars.BasePackage}}.entity.{{.Vars.EntityClass}};
import org.springframework.data.jpa.repository.JpaRepository;


/**
 * @author {{.Global.Vars.Author}}
 */
public interface {{.Vars.EntityClass}}Repository extends JpaRepository<{{.Vars.EntityClass}}, {{.Vars.IdDataType}}> {

}
