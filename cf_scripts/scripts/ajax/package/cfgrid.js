/*ADOBE SYSTEMS INCORPORATED
Copyright 2012 Adobe Systems Incorporated
All Rights Reserved.

NOTICE:  Adobe permits you to use, modify, and distribute this file in accordance with the
terms of the Adobe license agreement accompanying it.  If you have received this file from a
source other than Adobe, then your use, modification, or distribution of it requires the prior
written permission of Adobe.*/
cfinitgrid=function(){
if(!ColdFusion.Grid){
ColdFusion.Grid={};
}
var $G=ColdFusion.Grid;
if(!$G.GridBindelementsMap){
$G.GridBindelementsMap={};
}
var $L=ColdFusion.Log;
$G.init=function(id,name,_309,_30a,edit,_30c,_30d,_30e,_30f,_310,_311,_312,_313,_314,_315,_316,_317,_318,_319,_31a,_31b,_31c,_31d,_31e,_31f,_320,_321,_322,_323){
var grid;
var _325;
var _326=false;
if(_318&&typeof (_318)!="undefined"){
_325=_318;
_326=true;
}else{
_325="rowmodel";
}
var _327=_30f;
var _328={store:_310,columns:_30f,selModel:_325,autoSizeColumns:_30d,autoSizeHeaders:_30d,stripeRows:_313,autoExpandColumnId:_30e};
if(_322!=null&&typeof _322!="undefined"){
_328.plugins=_322;
}
var _329=ColdFusion.objectCache[id];
var _32a=document.getElementById(_329.gridId);
if(_32a!=null){
var _32b=_32a.style.cssText;
if(typeof _32b=="undefined"){
_32b="";
}
_32b="width:"+_311+"px;"+_32b;
_32a.style.cssText=_32b;
}
_328.width=_311;
if(_30d===true){
_328.viewConfig={forceFit:true};
_328.forceFit=true;
}else{
if(_318&&typeof (_318)!="undefined"){
_328.autoExpandColumn=_30e;
}else{
_328.autoExpandColumn=_30e;
}
}
if(_312){
_328.height=_312;
}else{
_328.autoHeight=true;
var _32c=".x-grid3-header {position: relative;}";
Ext.util.CSS.createStyleSheet(_32c,"_cf_grid"+id);
}
if(_31a&&typeof (_31a)!="undefined"){
_328.features={ftype:"grouping"};
}
_328.title=_31b;
_328.collapsible=_319;
if(_319&&_31b==null){
_328.title="  ";
}
var _32d=ColdFusion.objectCache[id];
_32d.bindOnLoad=_30c;
_32d.dynamic=_30a;
_32d.styles=_314;
_32d.grouping=_31a;
_32d.onLoadFunction=_321;
_32d.multiRowSelection=_326;
_328.renderTo=_32d.gridId;
Ext.onReady(function(){
_328.dockedItems={xtype:"toolbar",dock:"top"};
_328.tbar=new Ext.Toolbar({hidden:true});
if(_30a){
_328.bbar=new Ext.PagingToolbar({pageSize:_315,store:_310});
if(_31f&&(_31c||_31d)){
var _32e=_328.bbar;
if(_31c){
_32e.add({xtype:"button",text:_31c,handler:$G.insertRow,scope:_32d});
_32e.add({xtype:"button",text:" save ",handler:$G.saveNewRecord,scope:_32d});
_32e.add({xtype:"button",text:" cancel ",handler:$G.cancelNewRecord,scope:_32d});
}
if(_31d){
_32e.add({xtype:"button",text:_31d,handler:$G.deleteRow,scope:_32d});
}
}
}
if(edit&&!_30a){
var bbar=new Ext.Toolbar();
if(_31c||_31d){
if(_31c){
bbar.add({xtype:"button",text:_31c,handler:$G.insertRow,scope:_32d});
}
if(_31d){
bbar.add({xtype:"button",text:_31d,handler:$G.deleteRow,scope:_32d});
}
}else{
var bbar=new Ext.Toolbar({hidden:true});
}
_328.bbar=bbar;
}
_310.pageSize=_315;
grid=Ext.create("Ext.grid.Panel",_328);
$G.Ext_caseInsensitive_sorting();
_310.addListener("load",$G.Actions.onLoad,_32d,{delay:50});
grid.view.addListener("beforeshow",function(menu){
var _331=_327.getColumnCount();
for(var i=0;i<_331;i++){
if("CFGRIDROWINDEX"==_327.getDataIndex(i)){
menu.remove(menu.items["items"][i]);
break;
}
}
},this);
_32d.grid=grid;
if(!_30a){
_310.addListener("load",$G.Actions.onLoad,_32d,{delay:50});
_310.load();
}
if(_30a){
_310._cf_errorHandler=_320;
_310.proxy._cf_actions=_32d;
_310.load({params:{start:0,limit:_315}});
}else{
$G.applyStyles(_32d);
}
if(_323){
ColdFusion.Bind.register(_323,{actions:_32d},$G.bindHandler,false);
}
$L.info("grid.init.created","widget",[id]);
_32d.init(id,name,_309,_31e,_30a,edit,_31f,_320,_317,_315,_316,_31a);
});
};
$G.applyStyles=function(_333){
Ext.util.CSS.createStyleSheet(_333.styles);
_333.stylesApplied=true;
};
$G.bindHandler=function(e,_335){
$G.refresh(_335.actions.id);
};
$G.bindHandler._cf_bindhandler=true;
$G.refresh=function(_336,_337){
var _338=ColdFusion.objectCache[_336];
if(_338&&$G.Actions.prototype.isPrototypeOf(_338)==true){
var _339=_338.grid.getStore();
if(_338.dynamic){
_338.editOldValue=null;
_338.selectedRow=-1;
var bind=$G.GridBindelementsMap[_336];
if(bind){
var url=_339.proxy.url;
var _33c=bind.split(";");
for(i=0;i<_33c.length;i++){
var _33d=_33c[i].split(",");
indx=url.indexOf(_33d[0]);
url1=url.substring(0,indx);
nxtindx=url.indexOf("&",indx);
url2=url.substring(nxtindx);
var eval=ColdFusion.Bind.getBindElementValue(_33d[1],_33d[2],_33d[3]);
url=url1+"&"+_33d[0]+"="+eval+url2;
}
_339.proxy.url=url;
}
if(_337){
_339.lastOptions.page=1;
_339.currentPage=1;
_339.reload();
}else{
_339.reload({params:{start:0,limit:_338.pageSize}});
}
}
}else{
ColdFusion.handleError(null,"grid.refresh.notfound","widget",[_336],null,null,true);
return;
}
if(_338.multiRowSelection){
}
$L.info("grid.refresh.success","widget",[_336]);
};
$G.Ext_caseInsensitive_sorting=function(){
Ext.data.Store.prototype.sortData=function(f,_340){
_340=_340||"ASC";
var st=this.fields.get(f).sortType;
var fn=function(r1,r2){
var v1=st(r1.data[f]),v2=st(r2.data[f]);
if(v1.toLowerCase){
v1=v1.toLowerCase();
v2=v2.toLowerCase();
}
return v1>v2?1:(v1<v2?-1:0);
};
this.data.sort(_340,fn);
if(this.snapshot&&this.snapshot!=this.data){
this.snapshot.sort(_340,fn);
}
};
};
$G.getTopToolbar=function(_346){
var _347=ColdFusion.objectCache[_346];
if(!_347){
ColdFusion.handleError(null,"grid.getTopToolbar.notfound","widget",[_346],null,null,true);
return;
}
return _347.grid.getDockedItems()[1];
};
$G.showTopToolbar=function(_348){
var _349=ColdFusion.objectCache[_348];
if(!_349){
ColdFusion.handleError(null,"grid.showTopToolbar.notfound","widget",[_348],null,null,true);
return;
}
var tbar=_349.grid.getDockedItems()[1];
if(!tbar){
ColdFusion.handleError(null,"grid.showTopToolbar.toolbarNotDefined","widget",[_348],null,null,true);
return;
}
tbar.show();
};
$G.hideTopToolbar=function(_34b){
var _34c=ColdFusion.objectCache[_34b];
if(!_34c){
ColdFusion.handleError(null,"grid.hideTopToolbar.notfound","widget",[_34b],null,null,true);
return;
}
var tbar=_34c.grid.getDockedItems()[1];
if(!tbar){
ColdFusion.handleError(null,"grid.hideTopToolbar.toolbarNotDefined","widget",[_34b],null,null,true);
return;
}
tbar.hide();
};
$G.refreshTopToolbar=function(_34e){
var _34f=ColdFusion.objectCache[_34e];
if(!_34f){
ColdFusion.handleError(null,"grid.refreshTopToolbar.notfound","widget",[_34e],null,null,true);
return;
}
var tbar=_34f.grid.getDockedItems()[1];
if(!tbar){
ColdFusion.handleError(null,"grid.refreshTopToolbar.toolbarNotDefined","widget",[_34e],null,null,true);
return;
}
tbar.doLayout();
if(tbar.isVisible()==false){
tbar.show();
}
};
$G.getBottomToolbar=function(_351){
var _352=ColdFusion.objectCache[_351];
if(!_352){
ColdFusion.handleError(null,"grid.getBottomToolbar.notfound","widget",[_351],null,null,true);
return;
}
return _352.grid.getDockedItems()[_352.grid.getDockedItems().length-1];
};
$G.showBottomToolbar=function(_353){
var _354=ColdFusion.objectCache[_353];
if(!_354){
ColdFusion.handleError(null,"grid.showBottomToolbar.notfound","widget",[_353],null,null,true);
return;
}
var tbar=_354.grid.getDockedItems()[_354.grid.getDockedItems().length-1];
if(!tbar){
ColdFusion.handleError(null,"grid.showBottomToolbar.toolbarNotDefined","widget",[_353],null,null,true);
return;
}
tbar.show();
};
$G.hideBottomToolbar=function(_356){
var _357=ColdFusion.objectCache[_356];
if(!_357){
ColdFusion.handleError(null,"grid.hideBottomToolbar.notfound","widget",[_356],null,null,true);
return;
}
var tbar=_357.grid.getDockedItems()[_357.grid.getDockedItems().length-1];
if(!tbar){
ColdFusion.handleError(null,"grid.hideBottomToolbar.toolbarNotDefined","widget",[_356],null,null,true);
return;
}
tbar.hide();
};
$G.refreshBottomToolbar=function(_359){
var _35a=ColdFusion.objectCache[_359];
if(!_35a){
ColdFusion.handleError(null,"grid.refreshBottomToolbar.notfound","widget",[_359],null,null,true);
return;
}
var tbar=_35a.grid.getDockedItems()[_35a.grid.getDockedItems().length-1];
if(!tbar){
ColdFusion.handleError(null,"grid.refreshBottomToolbar.toolbarNotDefined","widget",[_359],null,null,true);
return;
}
tbar.doLayout();
if(tbar.isVisible()==false){
tbar.show();
}
};
$G.sort=function(_35c,_35d,_35e){
var _35f=ColdFusion.objectCache[_35c];
if(!_35f){
ColdFusion.handleError(null,"grid.sort.notfound","widget",[_35c],null,null,true);
return;
}
_35d=_35d.toUpperCase();
var _360=-1;
var _361=_35f.grid.columns;
for(var i=0;i<_361.length-1;i++){
if(_35d==_361[i].colName){
_360=i;
break;
}
}
if(_360==-1){
ColdFusion.handleError(null,"grid.sort.colnotfound","widget",[_35d,_35c],null,null,true);
return;
}
if(!_35e){
_35e="ASC";
}
_35e=_35e.toUpperCase();
if(_35e!="ASC"&&_35e!="DESC"){
ColdFusion.handleError(null,"grid.sort.invalidsortdir","widget",[_35e,_35c],null,null,true);
return;
}
var _363=_35f.grid.getStore();
_363.sort(_35d,_35e);
};
$G.getGridObject=function(_364){
if(!_364){
ColdFusion.handleError(null,"grid.getgridobject.missinggridname","widget",null,null,null,true);
return;
}
var _365=ColdFusion.objectCache[_364];
if(_365==null||$G.Actions.prototype.isPrototypeOf(_365)==false){
ColdFusion.handleError(null,"grid.getgridobject.notfound","widget",[_364],null,null,true);
return;
}
return _365.grid;
};
$G.getSelectedRows=function(_366){
if(!_366){
ColdFusion.handleError(null,"grid.getSelectedRowData.missinggridname","widget",null,null,null,true);
return;
}
var _367=ColdFusion.objectCache[_366];
var _368=new Array();
var _369=_367.grid.getSelectionModel();
var _36a=_369.selected;
var _36b=_367.grid.columns;
var _36c=0;
if(_367.multiRowSelection===true&&_367.dynamic===false){
_36c++;
}
for(i=0;i<_36a.length;i++){
var _36d=_36a.items[i].data;
var _36e={};
for(var _36f=_36c;_36f<_36b.length-1;_36f++){
var key=_36b[_36f].dataIndex;
_36e[key]=_36d[key];
}
_368[i]=_36e;
}
return _368;
};
$G.clearSelectedRows=function(_371){
if(!_371){
ColdFusion.handleError(null,"grid.getSelectedRowData.missinggridname","widget",null,null,null,true);
return;
}
var _372=ColdFusion.objectCache[_371];
var _373=_372.grid.getSelectionModel();
_373.deselectAll();
if(_372.multiRowSelection){
}
};
$G.Actions=function(_374){
this.gridId=_374;
this.init=$G.Actions.init;
this.onChangeHandler=$G.Actions.onChangeHandler;
this.onChangeHandler_MultiRowsDelete=$G.Actions.onChangeHandler_MultiRowsDelete;
this.selectionChangeEvent=new ColdFusion.Event.CustomEvent("cfGridSelectionChange",_374);
this.fireSelectionChangeEvent=$G.fireSelectionChangeEvent;
this._cf_getAttribute=$G.Actions._cf_getAttribute;
this._cf_register=$G.Actions._cf_register;
this.loaded=false;
};
$G.Actions.init=function(id,_376,_377,_378,_379,edit,_37b,_37c,_37d,_37e,_37f,_380){
this.id=id;
this.gridName=_376;
this.formId=_377;
this.form=document.getElementById(_377);
this.cellClickInfo=_378;
this.edit=edit;
this.onChangeFunction=_37b;
this.onErrorFunction=_37c;
this.preservePageOnSort=_37d;
this.pageSize=_37e;
this.selectedRow=-1;
this.selectOnLoad=_37f;
this.grouping=_380;
this.grid.addListener("cellclick",$G.cellClick,this,true);
this.editField=document.createElement("input");
this.editField.setAttribute("name",_376);
this.editField.setAttribute("type","hidden");
this.form.appendChild(this.editField);
if(edit){
if(!_379){
var _381=this.grid.columns;
this.editFieldPrefix="__CFGRID__EDIT__=";
var i=0;
var _383=_381.length-1;
if(this.multiRowSelection===true&&this.dynamic===false){
i++;
_383--;
}
this.editFieldPrefix+=_383+$G.Actions.fieldSep;
var _384=true;
for(i;i<_381.length-1;i++){
if(!_384){
this.editFieldPrefix+=$G.Actions.fieldSep;
}
this.editFieldPrefix+=_381[i].colName;
this.editFieldPrefix+=$G.Actions.valueSep;
if(_381[i].getEditor()){
this.editFieldPrefix+="Y";
}else{
this.editFieldPrefix+="N";
}
_384=false;
}
this.editFieldPrefix+=$G.Actions.fieldSep;
}
this.editFieldState=[];
this.editFieldState.length=this.grid.getStore().getTotalCount();
$G.Actions.computeEditField(this);
this.insertInProgress=false;
this.insertEvent=null;
this.grid.addListener("beforeedit",$G.Actions.beforeEdit,this);
this.grid.addListener("edit",$G.Actions.afterEdit,this,true);
}
if(_379){
this.grid.getStore().addListener("beforeload",$G.Actions.beforeLoad,this,true);
}
this.grid.getSelectionModel().addListener("select",$G.rowSelect,this,true);
this.grid.getSelectionModel().addListener("beforerowselect",$G.beforeRowSelect,this,true);
};
$G.Actions.beforeLoad=function(_385,_386){
var _387=_385.sortInfo;
var _388=(_386.sorters[0]&&_386.sorters[0].property!=this.sortCol);
if(_388&&!this.preservePageOnSort){
_386.start=0;
_386.page=1;
_385.currentPage=1;
}
if(_386.sorters[0]){
this.sortCol=_386.sorters[0].property;
this.sortDir=_386.sorters[0].direction;
}
};
$G.Actions.onLoad=function(_389){
this.editOldValue=null;
this.selectedRow=-1;
this.insertInProgress=false;
var _38a=0;
if((this.bindOnLoad||!this.dynamic)&&this.selectOnLoad&&!this.grouping){
this.grid.getSelectionModel().select(_38a,false);
}
if(!this.gridRendered&&this.onLoadFunction&&typeof this.onLoadFunction=="function"){
this.gridRendered=true;
this.onLoadFunction.call(null,this.grid);
}
$G.applyStyles(_389);
try{
var _38b=Ext.ComponentQuery.query("tabpanel");
if(_38b&&this.grid&&this.loaded==false){
for(var i=0;i<_38b.length;i++){
if(_38b[i].body.dom.innerHTML.indexOf(this.grid.id)>0){
_38b[i].doComponentLayout();
this.loaded=true;
}
}
}
}
catch(exception){
}
};
$G.Actions._cf_getAttribute=function(_38d){
_38d=_38d.toUpperCase();
var _38e=this.selectedRow;
var _38f=null;
if(_38e!=0&&(!_38e||_38e==-1)){
return _38f;
}
var ds=this.grid.getStore();
var _391=(this.dynamic)?ds.getAt(_38e):ds.getById(_38e);
_38f=_391.get(_38d);
return _38f;
};
$G.Actions._cf_register=function(_392,_393,_394){
this.selectionChangeEvent.subscribe(_393,_394);
};
$G.rowSelect=function(_395,_396,row){
var _398="";
var _399=_395.selected.items;
if(_399.length==0){
return;
}
var _39a=_399[0].get("CFGRIDROWINDEX")||row;
if(this.selectedRow!=_39a){
this.selectedRow=_39a;
var _39b=true;
for(col in _399[0].data){
if(col=="CFGRIDROWINDEX"){
continue;
}
if(typeof col=="undefined"||col=="undefined"){
continue;
}
if(!_39b){
_398+="; ";
}
_398+="__CFGRID__COLUMN__="+col+"; ";
_398+="__CFGRID__DATA__="+_399[0].data[col];
_39b=false;
}
this.fireSelectionChangeEvent();
this.insertInProgress=false;
}
};
$G.beforeRowSelect=function(_39c,row){
var ds=this.grid.getStore();
var _39f=ds.getAt(row);
return !$G.isNullRow(_39f.data);
};
$G.isNullRow=function(data){
var _3a1=true;
for(col in data){
if(data[col]!=null){
_3a1=false;
break;
}
}
return _3a1;
};
$G.fireSelectionChangeEvent=function(){
$L.info("grid.fireselectionchangeevent.fire","widget",[this.id]);
this.selectionChangeEvent.fire();
};
$G.cellClick=function(grid,td,_3a4,_3a5,tr,_3a7,e,_3a9){
var _3aa=this.cellClickInfo.colInfo[_3a4];
if(_3aa){
var _3ab=grid.getSelectionModel().selected;
var url;
if(_3ab.items.length>0&&_3ab.items[0].raw){
url=_3ab.items[0].raw[_3aa.href.toUpperCase()];
}
if(!url){
url=_3aa.href;
}
var _3ad=_3aa.hrefKey;
var _3ae=_3aa.target;
var _3af=this.appendKey;
if(this.cellClickInfo.appendKey){
var _3b0;
if(_3ad||_3ad==0){
var _3b1=grid.getStore().getAt(_3a7);
var _3b2=grid.panel.columns[_3ad].dataIndex;
_3b0=_3b1.get(_3b2);
}else{
var _3b3=this.grid.columns;
_3b0=_3ab.items[0].get(_3b3[0].dataIndex);
for(var i=1;i<_3b3.length-1;i++){
_3b0+=","+_3ab.items[0].get(_3b3[i].dataIndex);
}
}
if(url.indexOf("?")!=-1){
url+="&CFGRIDKEY="+_3b0;
}else{
url+="?CFGRIDKEY="+_3b0;
}
}
if(_3ae){
_3ae=_3ae.toLowerCase();
if(_3ae=="_top"){
_3ae="top";
}else{
if(_3ae=="_parent"){
_3ae="parent";
}else{
if(_3ae=="_self"){
_3ae=window.name;
}else{
if(_3ae=="_blank"){
window.open(encodeURI(url));
return;
}
}
}
}
if(!parent[_3ae]){
ColdFusion.handleError(null,"grid.cellclick.targetnotfound","widget",[_3ae]);
return;
}
parent[_3ae].location=encodeURI(url);
}else{
window.location=encodeURI(url);
}
}
};
$G.insertRow=function(){
if(this.insertInProgress&&this.dynamic){
ColdFusion.handleError(null,"Multiple row insert is not supported","Grid",[this.gridId],null,null,true);
return;
}
var _3b5={action:"I",values:[]};
var _3b6=this.grid.columns;
var _3b7=this.grid.getStore();
var _3b8={};
var _3b9="{[";
for(var i=0;i<_3b6.length-1;i++){
var _3bb="";
_3b5.values[i]=[_3bb,_3bb];
_3b8[_3b6[i].dataIndex]=_3bb;
_3b9=_3b9+_3b6[i].colName+":'"+_3bb+"',";
}
_3b8["CFGRIDROWINDEX"]=_3b7.getCount()+1;
_3b9=_3b9+"CFGRIDROWINDEX:'"+(_3b7.getCount()+1)+"']}";
_3b7.add(_3b9);
_3b7.getAt(_3b7.getCount()-1).data["CFGRIDROWINDEX"]=_3b7.getCount();
if(this.dynamic==true){
this.selectedRow=_3b7.getCount();
}
this.editFieldState.push(_3b5);
this.grid.getSelectionModel().select(_3b7.getCount()-1);
this.insertInProgress=true;
$G.Actions.computeEditField(this);
};
$G.saveNewRecord=function(){
if(!this.insertInProgress){
return;
}
var _3bc=this.selectedRow;
var _3bd=this.insertEvent;
if(_3bc==-1){
return;
}
if(this.onChangeFunction){
this.onChangeHandler("I",_3bc-1,_3bd,$G.insertRowCallback);
}else{
if(this.dynamic==false){
var _3be=this.grid.getStore();
var _3bf=_3bd.record;
var _3c0=new Array(1);
_3c0[0]=_3bf;
var _3c1=_3be.getAt(this.selectedRow-1);
_3be.remove(_3c1);
_3be.add(_3c0);
}
}
this.insertInProgress=false;
this.insertEvent=null;
};
$G.cancelNewRecord=function(){
if(!this.insertInProgress){
return;
}
this.editFieldState.pop();
var _3c2=this.grid.getStore();
var _3c3=_3c2.getAt(this.selectedRow-1);
_3c2.remove(_3c3);
this.insertInProgress=false;
this.insertEvent=null;
this.selectedRow=this.selectedrow-1;
};
$G.deleteRow=function(){
var _3c4=null;
var _3c5;
if(this.multiRowSelection===true){
var _3c6=this.grid.getSelectionModel();
_3c4=_3c6.selected;
}
if(_3c4==null){
_3c5=this.selectedRow;
}
if(_3c5==-1&&_3c4==null){
return;
}
if(this.onChangeFunction){
if(_3c4!=null){
this.onChangeHandler_MultiRowsDelete("D",_3c4,null,$G.deleteRowCallback);
}else{
this.onChangeHandler("D",_3c5,null,$G.deleteRowCallback);
}
}else{
if(!this.dynamic){
var _3c7=this.grid.getStore();
if(_3c4!=null){
for(i=0;i<_3c4.length;i++){
var _3c8=_3c7.indexOf(_3c4[i]);
var _3c9=this.editFieldState[_3c8];
if(_3c9){
_3c9.action="D";
}else{
_3c9=$G.Actions.initEditState(this,"D",_3c4[i],_3c8+1);
}
}
for(i=0;i<_3c4.length;i++){
_3c7.remove(_3c4[i]);
}
}else{
var _3c9=this.editFieldState[_3c5-1];
if(_3c9){
_3c9.action="D";
}else{
var _3ca=this.grid.getStore().getById(_3c5);
_3c9=$G.Actions.initEditState(this,"D",_3ca,_3c5);
}
_3c7.remove(this.grid.getSelectionModel().getSelection());
}
$G.Actions.computeEditField(this);
this.grid.editingPlugin.completeEdit();
this.selectedRow=-1;
}
}
};
$G.deleteRowCallback=function(_3cb,_3cc){
var _3cd=_3cc._cf_grid.getStore();
var _3ce=_3cc._cf_grid_properties;
var _3cc=_3cd.lastOptions;
var key="start";
if(_3cd.getCount()==1){
if(_3cc.start>=_3cc.limit){
_3cc.start=_3cc.start-_3cc.limit;
}
_3cc.page=_3cc.page-1;
_3cd.reload(_3cc);
}else{
_3cd.reload();
}
if(_3ce.multiRowSelection){
var _3d0=_3ce.grid.getView().headerCt(0);
if(_3d0!=null){
var _3d1=Ext.Element.get(_3d0).first();
if(_3d1){
_3d1.replaceClass("x-grid3-hd-checker-on");
}
}
}
};
$G.insertRowCallback=function(_3d2,_3d3){
var _3d4=_3d3._cf_grid.getStore();
var _3d5=_3d3._cf_grid.actions;
_3d4.reload();
};
$G.Actions.beforeEdit=function(_3d6,e,_3d8){
if($G.isNullRow(e.record.data)){
return false;
}
this.editColumn=e.column;
this.editOldValue=e.value;
};
$G.Actions.afterEdit=function(_3d9,_3da,_3db){
var _3dc=_3da.value;
if(_3dc==this.editOldValue){
return;
}
if(this.insertInProgress==false&&this.onChangeFunction){
this.onChangeHandler("U",this.selectedRow,_3da);
}else{
if(!this.dynamic){
rowidx=_3da.rowIdx;
if(!rowidx&&rowidx!=0){
rowidx=_3da.row;
}
var _3dd=$G.computeActualRow_editField(this.editFieldState,rowidx+1);
var _3de=this.editFieldState[_3dd-1];
var _3df=_3da.colIdx;
if(!_3df&&_3df!=0){
_3df=_3da.column;
}
if(_3de){
if(this.multiRowSelection===true&&this.insertInProgress==true){
_3df=_3df-1;
}
_3de.values[_3df][1]=_3dc;
}else{
var _3e0=this.grid.getStore().getById(this.selectedRow);
_3de=$G.Actions.initEditState(this,"U",_3e0,_3dd);
var _3e1=this.editOldValue+"";
if(_3dc.getDayOfYear){
if(_3e1&&typeof _3e1=="string"){
_3e1=new Date(_3e1);
}
_3de.values[_3df][1]=_3dc.format("F, j Y H:i:s");
_3de.values[_3df][0]=_3e1?_3e1.format("F, j Y H:i:s"):_3e1;
}else{
_3de.values[_3df][0]=_3e1;
_3de.values[_3df][1]=_3dc;
}
}
$G.Actions.computeEditField(this);
}
}
this.editOldValue=null;
this.fireSelectionChangeEvent();
};
$G.computeActualRow_editField=function(_3e2,_3e3){
if(_3e2.length==_3e3){
return _3e3;
}
var _3e4=0;
var _3e5=0;
for(;_3e5<_3e2.length&&_3e4<_3e3;_3e5++){
var _3e6=_3e2[_3e5];
if(!_3e6||_3e6.action!="D"){
_3e4++;
}
}
return _3e5;
};
$G.Actions.onChangeHandler=function(_3e7,_3e8,_3e9,_3ea){
var _3eb={};
var _3ec={};
var data="";
if(null==_3e9){
data=this.grid.getStore().getAt(_3e8).data;
}else{
data=_3e9?_3e9.record.data:this.grid.getStore().getAt(_3e8).data;
}
for(col in data){
_3eb[col]=data[col];
}
if(_3e7=="U"){
if((_3e9.value==null||_3e9.value=="")&&(_3e9.originalValue==null||_3e9.originalValue=="")){
return;
}
if(_3e9.value&&_3e9.value.getDayOfYear){
if(typeof _3e9.originalValue=="string"){
var _3ee=new Date(_3e9.originalValue);
}
if(_3ee!=null&&_3ee.getElapsed(_3e9.value)==0){
return;
}else{
_3eb[_3e9.field]=_3e9.originalValue;
_3ec[_3e9.field]=_3e9.value.format("F, j Y H:i:s");
}
}else{
_3eb[_3e9.field]=_3e9.originalValue;
_3ec[_3e9.field]=_3e9.value;
}
}
this.onChangeFunction(_3e7,_3eb,_3ec,_3ea,this.grid,this.onErrorFunction,this);
};
$G.Actions.onChangeHandler_MultiRowsDelete=function(_3ef,_3f0,_3f1,_3f2){
var _3f3=new Array();
var _3f4={};
for(i=0;i<_3f0.length;i++){
_3f3[i]=_3f0.items[i].data;
}
this.onChangeFunction(_3ef,_3f3,_3f4,_3f2,this.grid,this.onErrorFunction,this);
};
$G.Actions.initEditState=function(_3f5,_3f6,_3f7,_3f8){
var _3f9={action:_3f6,values:[]};
var _3fa=_3f5.grid.columns;
var _3fb=_3fa.length-1;
_3f9.values.length=_3fb;
var i=0;
if(_3f5.multiRowSelection===true&&_3f5.dynamic===false){
i=i++;
}
for(i;i<_3fb;i++){
var _3fd=_3f7.get(_3fa[i].colName);
_3f9.values[i]=[_3fd,_3fd];
}
_3f5.editFieldState[_3f8-1]=_3f9;
return _3f9;
};
$G.Actions.fieldSep=eval("'\\u0001'");
$G.Actions.valueSep=eval("'\\u0002'");
$G.Actions.nullValue=eval("'\\u0003'");
$G.Actions.computeEditField=function(_3fe){
if(_3fe.dynamic){
return;
}
var _3ff=_3fe.editFieldPrefix;
var _400=_3fe.editFieldState;
var _401=_3fe.grid.columns;
var _402=0;
var _403="";
for(var i=0;i<_400.length;i++){
var _405=_400[i];
if(_405){
_402++;
_403+=$G.Actions.fieldSep;
_403+=_405.action+$G.Actions.valueSep;
var _406=_405.values;
if(_3fe.multiRowSelection===true&&_3fe.dynamic===false&&_405.action!="I"){
_406=_406.slice(1,_406.length);
}
for(var j=0;j<_406.length;j++){
if(j>0){
_403+=$G.Actions.valueSep;
}
var _408=($G.Actions.isNull(_406[j][0]))?$G.Actions.nullValue:_406[j][0];
var _409=($G.Actions.isNull(_406[j][1]))?$G.Actions.nullValue:_406[j][1];
var _40a=j;
if(_3fe.multiRowSelection===true){
_40a++;
}
if(_401[_40a].getEditor()&&_409==$G.Actions.nullValue&&_401[_40a].getEditor().xtype=="checkbox"){
_409="0";
}
if(_405.action!="I"||(_405.action=="I"&&_401[_40a].getEditor())){
if(_401[_40a].type=="date"){
var _40b="F, j Y H:i:s";
if(_401[j]&&_401[j].format){
_40b=_401[j].format;
}
if(_409!=null&&_409!=$G.Actions.nullValue){
if(typeof _409=="string"){
_409=new Date(_409);
}
_409=Ext.Date.format(_409,_40b);
}
if(_408!=null&&_408!=$G.Actions.nullValue){
if(typeof _408=="string"){
_408=new Date(_408);
}
_408=Ext.Date.format(_408,_40b);
}
}
_403+=_409;
if(_405.action=="U"&&_401[_40a].getEditor()){
_403+=$G.Actions.valueSep+_408;
}
}
}
}
}
_3ff+=_402+_403;
_3fe.editField.setAttribute("value",_3ff);
};
$G.Actions.isNull=function(val){
var ret=(val==null||typeof (val)=="undefined"||val.length==0);
return ret;
};
$G.loadData=function(data,_40f){
_40f._cf_gridDataProxy.loadResponse(data,_40f);
var _410=ColdFusion.objectCache[_40f._cf_gridname];
$G.applyStyles(_410);
$L.info("grid.loaddata.loaded","widget",[_40f._cf_gridname]);
if($G.Actions.isNull(data.TOTALROWCOUNT)==false&&data.TOTALROWCOUNT==0){
_410.fireSelectionChangeEvent();
}
};
$G.printObject=function(obj){
var str="";
for(key in obj){
str=str+"  "+key+"=";
value=obj[key];
str+=value;
}
return str;
};
$G.formatBoolean=function(v,p,_415){
return "<div class=\"x-grid3-check-col"+(v?"-on":"")+" x-grid3-cc-"+this.id+"\">&#160;</div>";
};
$G.formatDate=function(_416,p,_418){
if(_416&&!_416.dateFormat){
_416=new Date(_416);
}
var _419=this.dateFormat?this.dateFormat:"m/d/y";
return _416?Ext.Date.dateFormat(_416,_419):"";
};
$G.convertDate=function(_41a,p,_41c){
if(_41a&&!_41a.dateFormat){
_41a=new Date(_41a);
}
var _41d=this.dateFormat?this.dateFormat:"m/d/y";
return _41a;
};
$G.ExtProxy=function(_41e,_41f){
this.api={load:true,create:undefined,save:undefined,destroy:undefined};
$G.ExtProxy.superclass.constructor.call(this);
this.bindHandler=_41e;
this.errorHandler=_41f;
};
Ext.extend($G.ExtProxy,Ext.data.DataProxy,{_cf_firstLoad:true,load:function(_420,_421,_422,_423,arg){
if(!this._cf_actions.bindOnLoad){
var _425={"_cf_reader":_421,"_cf_grid_errorhandler":this.errorHandler,"_cf_scope":_423,"_cf_gridDataProxy":this,"_cf_gridname":this._cf_gridName,"_cf_arg":arg,"_cf_callback":_422,"ignoreData":true};
var data=[];
for(i=0;i<_420.limit;i++){
data.push(new Ext.data.Record({}));
}
this.loadResponse(data,_425);
this._cf_actions.bindOnLoad=true;
}else{
var _427=(_420.start/_420.limit)+1;
if(!_420.sort){
_420.sort="";
}
if(!_420.dir){
_420.dir="";
}
this.bindHandler(this,_427,_420.limit,_420.sort,_420.dir,this.errorHandler,_422,_423,arg,_421);
}
},loadResponse:function(data,_429){
var _42a=null;
if(_429.ignoreData){
_42a={success:true,records:data,totalRecords:data.length};
}else{
var _42b;
if(!data){
_42b="grid.extproxy.loadresponse.emptyresponse";
}else{
if(!data.TOTALROWCOUNT&&data.TOTALROWCOUNT!=0){
_42b="grid.extproxy.loadresponse.totalrowcountmissing";
}else{
if(!ColdFusion.Util.isInteger(data.TOTALROWCOUNT)){
_42b="grid.extproxy.loadresponse.totalrowcountinvalid";
}else{
if(!data.QUERY){
_42b="grid.extproxy.loadresponse.querymissing";
}else{
if(!data.QUERY.COLUMNS||!ColdFusion.Util.isArray(data.QUERY.COLUMNS)||!data.QUERY.DATA||!ColdFusion.Util.isArray(data.QUERY.DATA)||(data.QUERY.DATA.length>0&&!ColdFusion.Util.isArray(data.QUERY.DATA[0]))){
_42b="grid.extproxy.loadresponse.queryinvalid";
}
}
}
}
}
if(_42b){
ColdFusion.handleError(_429._cf_grid_errorHandler,_42b,"widget");
this.fireEvent("loadexception",this,_429,data,e);
return;
}
_42a=_429._cf_reader.readRecords(data);
}
this.fireEvent("load",this,_429,_429._cf_arg);
_429._cf_callback.call(_429._cf_scope,_42a,_429._cf_arg,true);
},update:function(_42c){
},updateResponse:function(_42d){
}});
$G.ExtReader=function(_42e){
this.recordType=Ext.data.Record.create(_42e);
};
Ext.extend($G.ExtReader,Ext.data.DataReader,{readRecords:function(_42f){
var _430=[];
var cols=_42f.QUERY.COLUMNS;
var data=_42f.QUERY.DATA;
for(var i=0;i<data.length;i++){
var _434={};
for(var j=0;j<cols.length;j++){
_434[cols[j]]=data[i][j];
}
_430.push(new Ext.data.Record(_434));
}
return {success:true,records:_430,totalRecords:_42f.TOTALROWCOUNT};
}});
$G.CheckColumn=function(_436){
Ext.apply(this,_436);
if(!this.id){
this.id=Ext.id();
}
this.renderer=this.renderer.bind(this);
};
$G.findColumnIndex=function(grid,_438){
var _439=grid.headerCt.getGridColumns();
for(var i=0;i<_439.length;i++){
if(_439[i].dataIndex==_438){
return i;
}
}
};
$G.CheckColumn.prototype={init:function(grid){
this.grid=grid;
this.count=0;
this.columnIndex=$G.findColumnIndex(this.grid,this.dataIndex);
this.grid.on("render",function(){
var view=this.grid.getView();
if(this.editable==true){
this.grid.addListener("itemmousedown",this.onMouseDown,this);
}
},this);
},onMouseDown:function(thi,_43e,item,_440,e,_442){
var t=e.target;
if(t.className&&t.className.indexOf("x-grid-cc-"+this.id)!=-1){
e.stopEvent();
var _444=ColdFusion.clone(_43e);
_444.data=ColdFusion.clone(_43e.data);
this.grid.getSelectionModel().select(_440);
this.grid.getSelectionModel().fireEvent("rowselect",this.grid.getSelectionModel(),_440);
this.grid.fireEvent("beforeedit",this,{grid:this.grid,row:_440,record:_43e,column:this.columnIndex,field:this.dataIndex,value:_43e.data[this.dataIndex]});
_43e.set(this.dataIndex,this.toggleBooleanValue(_43e.data[this.dataIndex]));
this.grid.fireEvent("edit",this,{grid:this.grid,row:_440,record:_444,column:this.columnIndex,field:this.dataIndex,value:_43e.data[this.dataIndex],originalValue:_444.data[this.dataIndex]});
}
},toggleBooleanValue:function(v){
v=typeof v=="undefined"?"N":(typeof v=="string"?v.toUpperCase():v);
if(v==="Y"){
return "N";
}
if(v==="N"){
return "Y";
}
if(v===true){
return false;
}
if(v===false){
return true;
}
if(v===0){
return 1;
}
if(v===1){
return 0;
}
if(v==="YES"){
return "NO";
}
if(v==="NO"){
return "YES";
}
if(v==="T"){
return "F";
}
if(v==="F"){
return "T";
}
return "Y";
},renderer:function(v,p,_448){
p.css+=" x-grid-check-col-td";
var _449=false;
v=(typeof v=="string")?v.toUpperCase():v;
if(typeof v!="undefined"&&(v==1||v=="1"||v=="Y"||v=="YES"||v=="TRUE"||v===true||v==="T")){
_449=true;
}
return "<div style=\"background-repeat: no-repeat;background-position:center center;width:auto\" class=\"x-grid-cell-checker"+(_449!=true?"-off":"")+" x-grid-cc-"+this.id+"\">&#160;</div>";
}};
$G.convertBoolean=function(v,_44b){
v=typeof v=="undefined"?"N":(typeof v=="string"?v.toUpperCase():v);
if(v==="Y"){
return "YES";
}
if(v==="N"){
return "NO";
}
if(v===true){
return "YES";
}
if(v===false){
return "NO";
}
if(v===0){
return "NO";
}
if(v===1){
return "YES";
}
if(v==="YES"){
return "YES";
}
if(v==="NO"){
return "NO";
}
if(v==="T"){
return "YES";
}
if(v==="F"){
return "NO";
}
if(v==="FALSE"){
return "NO";
}
if(v==""){
return "NO";
}
if(v.toUpperCase()=="NULL"){
return "NO";
}
return "YES";
};
Ext.define("MyReader",{extend:"Ext.data.reader.Json",alias:"reader.my-json",read:function(_44c){
var _44d=_44c.responseText;
if(!_44d){
_44d=_44c;
}
var _44e="";
if(!this.proxy._cf_actions.bindOnLoad){
_44e="{  totalrows:0, data :[] }";
this.proxy._cf_actions.bindOnLoad=true;
}else{
_44e=$G.queryToJson(_44d);
}
$G.applyStyles(this.proxy._cf_actions);
return this.callParent([Ext.decode(_44e)]);
}});
Ext.define("customcfajax",{extend:"Ext.data.proxy.Ajax",alias:"proxy.customcfajax",getParams:function(_44f){
params=this.callParent(arguments);
if(!(this.sortParam&&_44f.sorters&&_44f.sorters.length>0)){
params[this.sortParam]="";
params[this.directionParam]="ASC";
}
return params;
}});
Ext.define("Ext.data.proxy.JsProxy",{requires:["Ext.util.MixedCollection","Ext.Ajax"],extend:"Ext.data.proxy.Server",alias:"proxy.jsajax",alternateClassName:["Ext.data.HttpProxy","Ext.data.JsProxy"],actionMethods:{create:"POST",read:"GET",update:"POST",destroy:"POST"},binary:false,jsfunction:"",extraparams:[],getParams:function(_450){
params=this.callParent(arguments);
if(!(this.sortParam&&_450.sorters&&_450.sorters.length>0)){
params[this.sortParam]="";
params[this.directionParam]="ASC";
}
return params;
},processResponse:function(_451,_452,_453,_454,_455,_456){
var me=this,reader,result;
if(_451===true){
reader=me.getReader();
reader.applyDefaults=_452.action==="read";
result=reader.read(me.extractResponseData(_454));
if(result.success!==false){
Ext.apply(_452,{response:_454,resultSet:result});
_452.commitRecords(result.records);
_452.setCompleted();
_452.setSuccessful();
}else{
_452.setException(result.message);
me.fireEvent("exception",this,_454,_452);
}
}else{
me.setException(_452,_454);
me.fireEvent("exception",this,_454,_452);
}
if(typeof _455=="function"){
_455.call(_456||me,_452);
}
},doRequest:function(_458,_459,_45a){
var me=this;
op=_458;
sorters=_458.sorters;
sortcol="";
sortdir="ASC";
if(sorters.length>0){
sortcol=sorters[0].property;
sortdir=sorters[0].direction;
}
if(this._cf_actions.bindOnLoad){
result=eval(this.jsfunction);
}else{
var _45c=[];
for(i=0;i<this._cf_actions.grid.columns.length;i++){
var _45d=this._cf_actions.grid.columns[i];
_45c[i]=_45d.colName;
}
result="{  totalrows:0, QUERY : { COLUMNS : "+_45c+" data :[] }}";
}
me.processResponse(true,_458,"",result,_459,_45a);
return null;
},getMethod:function(_45e){
return this.actionMethods[_45e.action];
},createRequestCallback:function(_45f,_460,_461,_462){
var me=this;
return function(_464,_465,_466){
me.processResponse(_465,_460,_45f,_466,_461,_462);
};
}},function(){
Ext.data.HttpProxy=this;
});
$G.queryToJson=function(data){
var _468=[];
jsondata=ColdFusion.AjaxProxy.JSON.decode(data);
var cols=jsondata.QUERY.COLUMNS;
var data=jsondata.QUERY.DATA;
var _46a="{  totalrows:"+jsondata.TOTALROWCOUNT+", data :[";
for(var i=0;i<data.length;i++){
var _46c={};
_46a=_46a+"{";
for(var j=0;j<cols.length;j++){
if(data[i][j]==null){
data[i][j]="";
}
_46c[cols[j]]=data[i][j];
encodedata=ColdFusion.AjaxProxy.JSON.encode(data[i][j]);
_46a=_46a+cols[j]+":"+encodedata;
if(j!=cols.length-1){
_46a=_46a+",";
}
}
_46a=_46a+"}";
if(i!=data.length-1){
_46a=_46a+",";
}
}
_46a=_46a+"]}";
return _46a;
};
$G.queryToArray=function(data){
var _46f=[];
jsondata=ColdFusion.AjaxProxy.JSON.decode(data);
var cols=jsondata.QUERY.COLUMNS;
var data=jsondata.QUERY.DATA;
var _471=new Array();
for(var i=0;i<data.length;i++){
var _473=new Array(1);
for(var j=0;j<cols.length;j++){
_473[j]=data[i][j];
}
_471[i]=_473;
}
return _471;
};
};
cfinitgrid();
