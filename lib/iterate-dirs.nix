{
  directory,
  blacklistArray ? [ ],
}:
let
  entries = builtins.readDir directory;

  blacklist = [
    ".git"
    "result"
  ]
  ++ blacklistArray;

  dirs = builtins.filter (name: entries.${name} == "directory" && !(builtins.elem name blacklist)) (
    builtins.attrNames entries
  );
in
map (name: directory + "/${name}") dirs
