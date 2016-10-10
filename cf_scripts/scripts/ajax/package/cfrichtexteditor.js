/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
ColdFusion.RichText||(ColdFusion.RichText={});
ColdFusion.RichText.editorState={};
ColdFusion.RichText.buffer=null;
ColdFusion.RichText.registerAfterSet=function(_56f){
if(ColdFusion.RichText.editorState[_56f]){
var _570=function(){
ColdFusion.RichText.fireChangeEvent(_56f);
};
var _571=CKEDITOR.instances[_56f];
_571.on("OnAfterSetHTML",_570);
}else{
setTimeout("ColdFusion.RichText.registerAfterSet('"+_56f+"')",1000);
}
};
ColdFusion.RichText.getEditorObject=function(_572){
if(!_572){
ColdFusion.handleError(null,"richtext.geteditorobject.missingtextareaname","widget",null,null,null,true);
return;
}
var _573=ColdFusion.objectCache[_572];
if(_573==null||CKEDITOR.editor.prototype.isPrototypeOf(_573)==false){
ColdFusion.handleError(null,"richtext.geteditorobject.notfound","widget",[_572],null,null,true);
return;
}
return CKEDITOR.instances[_573.richtextid];
};
ColdFusion.RichText.setValue=function(_574,_575){
if(ColdFusion.RichText.editorState[_574]){
var _576=CKEDITOR.instances[_574];
_576.setData(_575);
_576.fire("onAfterSetHTML");
}else{
setTimeout("ColdFusion.RichText.setValue(\""+_574+"\",\""+_575+"\")",1000);
}
};
ColdFusion.RichText.getValue=function(_577){
if(ColdFusion.RichText.editorState[_577]){
return CKEDITOR.instances[_577].getData();
}else{
ColdFusion.Log.error("richtext.initialize.getvalue.notready","widget",[_577]);
return null;
}
};
ColdFusion.RichText.fireChangeEvent=function(_578){
var _579=ColdFusion.objectCache[_578];
ColdFusion.Log.info("richtext.firechangeevent.firechange","widget",[_579._cf_name]);
var _57a=document.getElementById(_578);
if(_57a){
if(_57a.fireEvent){
_57a.fireEvent("onchange");
}
if(document.createEvent){
var evt=document.createEvent("HTMLEvents");
if(evt.initEvent){
evt.initEvent("change",true,true);
}
if(_57a.dispatchEvent){
_57a.dispatchEvent(evt);
}
}
}
ColdFusion.Event.callBindHandlers(_578,null,"change");
};
ColdFusion.RichText.editor_onfocus=function(e){
document.getElementById(e.editor.id+"_top").style.display="block";
};
ColdFusion.RichText.editor_onblur=function(e){
document.getElementById(e.editor.id+"_top").style.display="none";
};
ColdFusion.RichText.setChangeBuffer=function(e){
ColdFusion.RichText.buffer=CKEDITOR.instances[e.editor.name].getData();
};
ColdFusion.RichText.resetChangeBuffer=function(e){
if(ColdFusion.RichText.buffer!=CKEDITOR.instances[e.editor.name].getData()){
ColdFusion.RichText.fireChangeEvent(e.editor.name);
}
ColdFusion.RichText.buffer=null;
};
var parameters={};
CKEDITOR.on("instanceCreated",function(e){
var _581=e.editor.name;
if(parameters[_581].Id){
ColdFusion.RichText.editorState[parameters[_581].Id]=false;
e.editor.richtextid=parameters[_581].Id;
ColdFusion.objectCache[parameters[_581].Id]=e.editor;
}
if(parameters[_581].Name){
e.editor._cf_name=parameters[_581].Name;
ColdFusion.objectCache[parameters[_581].Name]=e.editor;
}
if(parameters[_581].Val){
e.editor.Value=parameters[_581].Val;
}
e.editor._cf_setValue=function(_582){
ColdFusion.RichText.setValue(_581,_582);
};
e.editor._cf_getAttribute=function(){
return ColdFusion.RichText.getValue(_581);
};
e.editor._cf_register=function(_583,_584,_585){
var _586=document.getElementById(_581);
if(_586){
ColdFusion.Event.addListener(_586,_583,_584,_585);
}
};
});
ColdFusion.RichText.initialize=function(Id,Name,Val,_58a,_58b,_58c,_58d,_58e,_58f,Skin,_591,_592,_593,_594,_595){
parameters[Id]={};
parameters[Id].Id=Id;
parameters[Id].Name=Name;
parameters[Id].Val=Val;
var _596=function(evt){
if(_591==true){
evt.editor.on("focus",ColdFusion.RichText.editor_onfocus);
evt.editor.on("blur",ColdFusion.RichText.editor_onblur);
document.getElementById(evt.editor.id+"_top").style.display="none";
}
evt.editor.on("focus",ColdFusion.RichText.setChangeBuffer);
evt.editor.on("blur",ColdFusion.RichText.resetChangeBuffer);
ColdFusion.RichText.editorState[evt.editor.name]=true;
if(ColdFusion.RichText.OnComplete){
ColdFusion.RichText.OnComplete(evt.editor);
}
};
var _598={on:{"instanceReady":_596}};
_598["toolbar"]="Default";
if(_58c!=null){
_598["height"]=_58c;
}
if(_58b!=null){
_598["width"]=_58b;
}
if(_58d!=null){
_598["font_names"]=_58d;
}
if(_58e!=null){
_598["fontSize_sizes"]=_58e;
}
if(_58f!=null){
_598["format_tags"]=_58f;
}
if(Skin!=null){
_598["skin"]=Skin;
}
if(_591==true){
_598["toolbarCanCollapse"]=false;
}
if(_592!=null){
_598["toolbar"]=_592;
}
var _599=CKEDITOR.replace(Id,_598);
};
