fso = new ActiveXObject("Scripting.FileSystemObject");
var ForReading = 1;
var base = document.URLUnencoded.substr(7,document.URLUnencoded.lastIndexOf('\\')-6);
function ReadFile(path){
if (fso.FileExists(base + path)){
  f = fso.OpenTextFile(base + path, ForReading,false);
  //todo convert 2 html: < 
  if (!f.AtEndOfStream) return(f.ReadAll().replace(/</g, "&lt;"));
  else return("");}
else return("");
}