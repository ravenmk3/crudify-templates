package {{.Vars.BasePackage}}.controller;

import java.util.List;

import {{.Vars.BasePackage}}.entity.{{.Vars.EntityClass}};
import {{.Vars.BasePackage}}.service.{{.Vars.EntityClass}}Service;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;


/**
 * @author {{.Global.Vars.Author}}
 */
@Slf4j
@RestController
@RequestMapping("/api/{{.Table.NameKebabCase}}s")
@RequiredArgsConstructor
public class {{.Vars.EntityClass}}Controller {

    private final {{.Vars.EntityClass}}Service {{.Vars.ServiceField}};

    @GetMapping()
    public List<{{.Vars.EntityClass}}> getAll() {
        return this.{{.Vars.ServiceField}}.getAll();
    }

    @GetMapping("/{id}")
    public {{.Vars.EntityClass}} getById(@PathVariable {{.Vars.IdDataType}} id) {
        return this.{{.Vars.ServiceField}}.getById(id);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable {{.Vars.IdDataType}} id) {
        this.{{.Vars.ServiceField}}.deleteById(id);
    }

    @PostMapping
    public void save({{.Vars.EntityClass}} entity) {
        this.{{.Vars.ServiceField}}.save(entity);
    }

}
