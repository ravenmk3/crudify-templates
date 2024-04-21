package {{.Vars.BasePackage}}.service;

import java.util.List;

import {{.Vars.BasePackage}}.entity.{{.Vars.EntityClass}};


/**
 * @author {{.Global.Vars.Author}}
 */
public interface {{.Vars.EntityClass}}Service {

    List<{{.Vars.EntityClass}}> getAll();

    {{.Vars.EntityClass}} getById({{.Vars.IdDataType}} id);

    void deleteById({{.Vars.IdDataType}} id);

    void save({{.Vars.EntityClass}} entity);

}
