package {{.Vars.BasePackage}}.entity;

import java.util.Date;
import javax.persistence.*;

import lombok.Data;


/**
 * @author {{.Global.Vars.Author}}
 */
@Data
@Entity
public class {{.Vars.EntityClass}} {
{{range $column := .Table.Columns }}
    /**
     * {{$column.Comment}}
     */
{{if $column.IsPrimaryKey }}    @Id
{{end}}{{if $column.IsAutoIncrement }}    @GeneratedValue(strategy = GenerationType.IDENTITY)
{{end}}{{if eq $column.Name "version" }}    @Version
{{end}}    private {{$column.JavaDataType}} {{$column.NameCamelCase}};
{{end}}
}
