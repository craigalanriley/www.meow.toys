Êþº¾  -  
SourceFile fC:\coldfusion\jenkins\workspace\CFS_final\cf12_final\cfusion\wwwroot\cf_scripts\cfclient\useragent.cfm cfuseragent2ecfm783575809  coldfusion/runtime/CFPage  <init> ()V  
  	 com.macromedia.SourceModTime  R^(§ coldfusion/runtime/CfJspPage  pageContext #Lcoldfusion/runtime/NeoPageContext;  	   getOut ()Ljavax/servlet/jsp/JspWriter;   javax/servlet/jsp/JspContext 
   parent Ljavax/servlet/jsp/tagext/Tag;  	   $class$coldfusion$tagext$io$OutputTag Ljava/lang/Class; coldfusion.tagext.io.OutputTag   forName %(Ljava/lang/String;)Ljava/lang/Class; " # java/lang/Class %
 & $  	  ( _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; * +
  , coldfusion/tagext/io/OutputTag . _setCurrentLineNo (I)V 0 1
  2 	hasEndTag (Z)V 4 5 coldfusion/tagext/GenericTag 7
 8 6 
doStartTag ()I : ;
 / < 
<script>
	var userAgent = " > write (Ljava/lang/String;)V @ A java/io/Writer C
 D B CGI F java/lang/String H HTTP_USER_AGENT J _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; L M
  N _String &(Ljava/lang/Object;)Ljava/lang/String; P Q coldfusion/runtime/Cast S
 T R EncodeForJavaScript &(Ljava/lang/String;)Ljava/lang/String; V W
  X Û";
	if (userAgent.search(/iPad|iPhone/) >=0)
		__cfclient_platform = "ios";
	else if (userAgent.search(/Android/) >= 0)
		__cfclient_platform = "android";
	else
		__cfclient_platform = "pg_emulator";	
</script>
 Z doAfterBody \ ;
 / ] doEndTag _ ; coldfusion/tagext/QueryLoop a
 b ` doCatch (Ljava/lang/Throwable;)V d e
 b f 	doFinally h 
 / i metaData Ljava/lang/Object; k l	  m &coldfusion/runtime/AttributeCollection o java/lang/Object q ([Ljava/lang/Object;)V  s
 p t getMetadata ()Ljava/lang/Object; this Lcfuseragent2ecfm783575809; LocalVariableTable Code runPage out Ljavax/servlet/jsp/JspWriter; value output0  Lcoldfusion/tagext/io/OutputTag; mode0 I t6 t7 Ljava/lang/Throwable; t8 t9 LineNumberTable java/lang/Throwable  <clinit> 1            k l     v w  {   "     ² n°    z        x y    | w  {  y  
   *´ ¶ L*´ N*² )-¶ -À /:*¶ 3¶ 9¶ =Y6 5+?¶ E+*¶ 3*G½ IYKS¶ O¸ U¸ Y¶ E+[¶ E¶ ^ÿÑ¶ c  :¨ #°¨ § #:¶ g¨ § :¨ ¿:	¶ j©	°  & o {  u x {  & o   u x   {         z   f 
    x y      } ~      l                        l                  l 	    .  =  =  =  =  =  =  =  =  7           {   #     *· 
±    z        x y       {   5     !¸ '³ )» pY½ r· u³ n±    z        x y             