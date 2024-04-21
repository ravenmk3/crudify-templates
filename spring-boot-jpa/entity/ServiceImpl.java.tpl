package {{.Vars.BasePackage}}.service.impl;

import java.util.List;

import {{.Vars.BasePackage}}.entity.{{.Vars.EntityClass}};
import {{.Vars.BasePackage}}.repository.{{.Vars.EntityClass}}Repository;
import {{.Vars.BasePackage}}.service.{{.Vars.EntityClass}}Service;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author {{.Global.Vars.Author}}
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class {{.Vars.EntityClass}}ServiceImpl implements {{.Vars.EntityClass}}Service {

    private final {{.Vars.EntityClass}}Repository {{.Vars.RepoField}};

    @Override
    public List<{{.Vars.EntityClass}}> getAll() {
        return this.{{.Vars.RepoField}}.findAll();
    }

    @Override
    public {{.Vars.EntityClass}} getById({{.Vars.IdDataType}} id) {
        return this.{{.Vars.RepoField}}.getById(id);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deleteById(final {{.Vars.IdDataType}} id) {
        this.{{.Vars.RepoField}}.deleteById(id);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void save(final {{.Vars.EntityClass}} entity) {
        this.{{.Vars.RepoField}}.save(entity);
    }

}
