// console.log('log from entity.js')

var globalVars = Model.Global.Vars;
var table = Model.Table;

var vars = {
    'JavaBasePath': globalVars['JavaBasePath'],
    'BasePackage': globalVars['BasePackage'],
    'EntityClass': table.NamePascalCase(),
    'IdDataType': table.PrimaryKeyColumn().JavaDataType(),
    'RepoField': table.NameCamelCase() + 'Repo',
    'ServiceField': table.NameCamelCase() + 'Service',
}

for (var key in vars) {
    Model.Vars[key] = vars[key];
}
