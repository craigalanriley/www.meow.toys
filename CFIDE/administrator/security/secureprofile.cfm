����  -V 
SourceFile //CFIDE/administrator/security/secureprofile.cfm cfsecureprofile2ecfm352756944  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   SECUREPROFILE_ITEM_NAME Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   CHECKCSRFTOKEN   	   SETTINGSDESC   	    SETTINGS " " 	  $ SECUREPROFILE_FLASHFALLBACK & & 	  ( "SECUREPROFILE_SESSIONCOOKIETIMEOUT * * 	  , #SECUREPROFILE_ITEM_CURRENT_VALUE_SP . . 	  0  SECUREPROFILE_ITEM_DEFAULT_VALUE 2 2 	  4 SECUREPROFILE_UUIDTOKEN 6 6 	  8 SECUREPROFILE_CFSTAT : : 	  < SECUREPROFILE_QUEUE_TIMEOUT > > 	  @ 	IDCOUNTER B B 	  D #SECUREPROFILE_ADMIN_USERID_REQUIRED F F 	  H SETTING J J 	  L *SECUREPROFILE_INTERNALCOOKIESDISABLEUPDATE N N 	  P CFCATCH R R 	  T GETCSRFTOKEN V V 	  X TOKEN Z Z 	  \ OLDSECUREPROFILEENABLED ^ ^ 	  ` #SECUREPROFILE_STARTWEBSOCKETSERVICE b b 	  d  SECUREPROFILE_ITEM_CURRENT_VALUE f f 	  h SECUREPROFILE_ROBUST_ENABLED j j 	  l SECUREPROFILE_MISSING_TEMPLATE n n 	  p /SECUREPROFILE_RDS_SECURITY_USESINGLERDSPASSWORD r r 	  t FORM v v 	  x ISSECUREPROFILEENABLE z z 	  | SECUREPROFILEENABLED ~ ~ 	  � ON_OFF � � 	  � SECUREPROFILE_RDS_ENABLED � � 	  � SECUREPROFILE_POSTSIZELIMIT � � 	  � 'SECUREPROFILE_ALLOWCONCURRENTADMINLOGIN � � 	  � AERRORMESSAGES � � 	  � "SECUREPROFILE_SBS_SECURITY_ENABLED � � 	  �  SECUREPROFILE_ALLOWEDADMINIPLIST � � 	  � REQUEST � � 	  � #SECUREPROFILE_DISABLESERVICEFACTORY � � 	  � SECUREPROFILE_SCRIPTPROTECT � � 	  � $SECUREPROFILE_ADMIN_SECURITY_ENABLED � � 	  � "SECUREPROFILE_RDS_SECURITY_ENABLED � � 	  � SECUREPROFILE_DRIVERDEFAULTS � � 	  � SECUREPROFILE_SITE_WIDE � � 	  � BERRORSEXIST � � 	  � RESULT � � 	  � ERROR_SECURE_PROFILE � � 	  � ___IMPLICITARRYSTRUCTVAR0 � createImplicitVariable S(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;)Lcoldfusion/runtime/Variable; � �
  � � 	  � com.macromedia.SourceModTime  R^�j pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/net/CookieTag � _setCurrentLineNo (I)V � �
  � 30 � 
setExpires (Ljava/lang/Object;)V � �
 � � cfcookie � value � CGI � java/lang/String SCRIPT_NAME _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
  _String &(Ljava/lang/Object;)Ljava/lang/String;	
 coldfusion/runtime/Cast
 _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  setValue (Ljava/lang/String;)V
 � setHttpOnly (Z)V
 � name cfadmin_lastpage_ GetAuthUser ()Ljava/lang/String; 
 ! concat &(Ljava/lang/String;)Ljava/lang/String;#$
% setName'
 �( 	hasEndTag* coldfusion/tagext/GenericTag,
-+ _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z/0
 1 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag43 �	 6 !coldfusion/tagext/lang/IncludeTag8 ../auditlog.cfm: setTemplate<
9= SECURITY? _resolveA
 B isAdminSecurityEnabledD java/lang/ObjectF _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;HI
 J _boolean (Ljava/lang/Object;)ZLM
N isAdminUserIdRequiredP isRootAdminUserR NOTROOTADMINT trueV _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)VXY
 Z 	cfinclude\ template^ GetContextRoot` 
 a "/CFIDE/administrator/forbidden.cfmc %class$coldfusion$tagext$lang$AbortTag coldfusion.tagext.lang.AbortTagfe �	 h coldfusion/tagext/lang/AbortTagj (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTagml �	 o "coldfusion/tagext/lang/ImportedTagq l10ns 
../cftags/u adminw :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V'y
rz &coldfusion/runtime/AttributeCollection| id~ secureprofilepagename� var� pagename� ([Ljava/lang/Object;)V �
}� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
�� 
doStartTag ()I��
�� 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � Secure Profile Settings� write� java/io/Writer�
�� doAfterBody��
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag�� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V��
�� 	doFinally� 
�� secureprofile_item_name� Setting Name�  secureprofile_item_current_value� Current Value� #secureprofile_item_current_value_sp� Secure Default Value�  secureprofile_item_default_value� $Snapshot when secure profile enabled� secureprofile_uuidtoken� Use UUID for cftoken� #secureprofile_startWebSocketService� Enable WebSocket Server� secureprofile_flashFallBack� Start Flash Policy Server� secureprofile_robust_enabled� #Enable Robust Exception Information� secureprofile_cfstat� Enable CFSTAT� secureprofile_postSizeLimit� Maxium size of post data (MB)� "secureprofile_sessionCookieTimeout�  Session Cookie Timeout (Minutes)� *secureprofile_internalCookiesDisableUpdate� /Disable updating of ColdFusion internal cookies� #secureprofile_disableServiceFactory� 5Disable access to internal ColdFusion Java components� secureprofile_site_wide� Site Error Handler� secureprofile_queue_timeout� Request Queue Timeout Page� secureprofile_missing_template� Missing Template Error Handler� secureprofile_scriptprotect� Enable Global Script Protection�  secureprofile_allowedAdminIPList� Allowed IP Addresses� "secureprofile_sbs_security_enabled� Enable Sandbox Security� secureprofile_rds_enabled� 
Enable RDS� "secureprofile_rds_security_enabled RDS Authentication Enabled /secureprofile_rds_security_usesinglerdspassword RDS separate UserID Disabled $secureprofile_admin_security_enabled	 Admin Authentication Enabled #secureprofile_admin_userid_required Admin separate UserID Required 'secureprofile_allowconcurrentadminlogin 9Allow concurrent login sessions for Administrator Console secureprofile_driverdefaults FDisable create, drop, alter, grant, revoke, stored procedures for DSNs false checkSimpleParameter 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V
  	StructNew !()Lcoldfusion/util/FastHashtable; 
 ! set# � coldfusion/runtime/Variable%
&$ _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;()
 * 	UUIDTOKEN, E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)VX.
 / FLASHFALLBACK1 STARTWEBSOCKETSERVICE3 ROBUST_ENABLED5 CFSTAT7 POSTSIZELIMIT9 SESSIONCOOKIETIMEOUT; INTERNALCOOKIESDISABLEUPDATE= DISABLESERVICEFACTORY? 	SITE_WIDEA QUEUE_TIMEOUTC MISSING_TEMPLATEE SCRIPTPROTECTG ALLOWEDADMINIPLISTI SBS_SECURITY_ENABLEDK RDS_ENABLEDM RDS_SECURITY_ENABLEDO !RDS_SECURITY_USESINGLERDSPASSWORDQ ADMIN_SECURITY_ENABLEDS ADMIN_USERID_REQUIREDU ALLOWCONCURRENTADMINLOGINW DRIVERDEFAULTSY LOCALE[ REQUEST.LOCALE] en_ V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Va
 b 
LOCALEFILEd java/lang/StringBufferf resources/security_h 
gj append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;lm
gn .cfmp toStringr 
Gs ArrayNew (I)Ljava/util/List;uv
 w _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;yz
{ setArray !(Lcoldfusion/runtime/FastArray;)V}~
& ADMINSUBMIT� FORM.ADMINSUBMIT�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � _Object (Z)Ljava/lang/Object;��
� SECURITYAPI� REQUEST.SECURITYAPI�  � 	CSRFTOKEN� FORM.CSRFTOKEN� _get�)
 � checkCSRFToken� SECTABKEYNAME� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � *coldfusion/runtime/TransientVariableHolder� &(Lcoldfusion/runtime/NeoPageContext;)V �
�� isSecureProfile� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � 	IsBoolean�M
 � enableSecureProfile� disableSecureProfile� unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t45 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� bind '(Ljava/lang/String;Ljava/lang/Object;)V��
�� $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTag�� �	 � coldfusion/tagext/io/OutputTag�
�� 
			� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 � error_disable_secure_profile� error_secure_profile� �
				There was an error while disabling secure profile and its settings.<br/>
				Please check logs for more details.</br>
				� MESSAGE� D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;�
 � EncodeForHTML�$
 � <br/>
				� DETAIL� 
		�
�� coldfusion/tagext/QueryLoop�
��
��
�� error_enable_secure_profile� �
				There was an error while enabling secure profile and its settings.<br/>
				Please check logs for more details.</br>
				� _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;��
 � _List $(Ljava/lang/Object;)Ljava/util/List;��
� ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z��
 � #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTag  �	  coldfusion/tagext/lang/LogTag error setType	

 cflog text TYPE   setText
 unbind 
� _factor1�
  FORM.ON_OFF audit setFile!
" setApplication$
% User ' % has enabled Secure Profile settings.) & has disabled Secure Profile settings.+ ../header.cfm- 
/ )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag21 �	 4 #coldfusion/tagext/html/form/FormTag6 secureprofile8
7( cfform; action= 	setAction?
7@ POSTB 	setMethodD
7E
7� ../include/buttonbar.cfmH ../include/margintop.cfmJ ../include/errors.cfmL 1

<input type="hidden" name="csrftoken" value="N getCSRFTokenP ">

<h2 class="pageHeader">R pageHeader_secureprofileT  Security &gt; Secure ProfileV </h2>
<br>

X K
	<input type="checkbox" name="on_off" value="true" checked id="enable">
Z C
	<input type="checkbox" name="on_off" value="true" id="enable">
\ 
<label for="enable">
<b>^ enable_switch_secureprofile` Enable Secure Profileb _factor2d�
 e </b></label>
<br>
<br>
g welcome_secureprofilei �
Secure Profile settings are only a recommendation. You should further configure the server as per your requirements. The settings affected by this are listed in table below.
k
7�
7�
7�
7� _factor5q�
 r 

<br />
<br />
<br />

t "getAllSecureProfileSettingsInArrayv 

x �
	<table name="securetablename" id="securetableid" border="0" cellpadding="5" cellspacing="0" style="width:100%;">
		<tr>
			<td scope=row colspan="4" bgcolor="#z 	GRAYLIGHT| !" class="cellBlueTopAndBottom">
~ �
	<table name="securetablename" id="securetableid" border="0" cellpadding="5" cellspacing="0" style="width:80%;">
		<tr>
			<td scope=row colspan="3" bgcolor="#� 
		<b class="form-title">� secureprofile_serverinfo� Secure Profile Settings Summary� �</b>
			</td>
		</tr>
<tr>
	<th name="itemname" scope=row class="cell4BlueSides fixedWidthColumnInSecureProfile" style="background-color: #fafafa">� ^</th>
	<th name="itemvalue" scope=row class="cell4BlueSides fixedWidthColumnInSecureProfile">� d</th>
	<th name="itemsecurevalue" scope=row class="cell4BlueSides fixedWidthColumnInSecureProfile">� </th>
	� h
		<th name="itemdefaultvalue" scope=row nowrap class="cell4BlueSides fixedWidthColumnInSecureProfile">� 	
</tr>
� 0� java/util/List� size���� P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; �
 � get (I)Ljava/lang/Object;���� 
	� _double (Ljava/lang/Object;)D��
� (D)Ljava/lang/Object;��
� 
	<tr name="rowname� " id="rowid� w">
		<td scope=row scope=row class="cell3BlueSides fixedWidthColumnInSecureProfile" style="background-color: #fafafa">� NAME� _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;��
 � </td>				
		� driverdefaults� _compare '(Ljava/lang/Object;Ljava/lang/String;)D��
 � V
			<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">� COMBINEDNAME�  : � CURRENTDEFAULT� [</td>
			<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">� SECUREDEFAULT� 
</td>
			� 
				� DEFAULT� SETTING.DEFAULT� Len (Ljava/lang/Object;)I��
 ���
� (Ljava/lang/Object;D)D��
 � X
					<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">� </td>
				� i
					<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">&nbsp;</td>
				� SETTING.CURRENTDEFAULT� scriptprotect� g
					<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">true</td>
				� h
					<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">false</td>
				� 
					
			� SETTING.SECUREDEFAULT� k
					<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">true</td>				
				� allowedAdminIPList� `
					<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">
						�  secure_profile_ip_retain_install� 1
							Retained if specified at install
						� 
					</td>
				� 		
			
			� 
					� i
						<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">true</td>
					� Y
						<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">  </td>
					 j
						<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">false</td>
					 k
						<td scope=row class="cellRightAndBottomBlueSide fixedWidthColumnInSecureProfile">&nbsp;</td>
					 _factor3�
 	 _factor4�
  

	</tr>
 
</table>
<br/> <br/>	
 _factor6�
  ../include/marginbottom.cfm ../footer.cfm metaData Ljava/lang/Object;	  this Lcfsecureprofile2ecfm352756944; __factorParent out Ljavax/servlet/jsp/JspWriter; cookie0 !Lcoldfusion/tagext/net/CookieTag; include1 #Lcoldfusion/tagext/lang/IncludeTag; include2 abort3 !Lcoldfusion/tagext/lang/AbortTag; module4 $Lcoldfusion/tagext/lang/ImportedTag; mode4 I t10 Ljava/lang/Throwable; t11 t12 t13 t14 t15 module5 mode5 t18 t19 t20 t21 t22 t23 module6 mode6 t26 t27 t28 t29 t30 t31 module7 mode7 t34 t35 t36 t37 t38 t39 module8 mode8 t42 t43 t44 t46 t47 module9 mode9 t50 t51 t52 t53 t54 t55 module10 mode10 t58 t59 t60 t61 t62 t63 module11 mode11 t66 t67 t68 t69 t70 t71 module12 mode12 t74 t75 t76 t77 t78 t79 module13 mode13 t82 t83 t84 t85 t86 t87 module14 mode14 t90 t91 t92 t93 t94 t95 module15 mode15 t98 t99 t100 t101 t102 t103 module16 mode16 t106 t107 t108 t109 t110 t111 module17 mode17 t114 t115 t116 t117 t118 t119 module18 mode18 t122 t123 t124 t125 t126 t127 module19 mode19 t130 t131 t132 t133 t134 t135 module20 mode20 t138 t139 t140 t141 t142 t143 module21 mode21 t146 t147 t148 t149 t150 t151 module22 mode22 t154 t155 t156 t157 t158 t159 module23 mode23 t162 t163 t164 t165 t166 t167 module24 mode24 t170 t171 t172 t173 t174 t175 module25 mode25 t178 t179 t180 t181 t182 t183 module26 mode26 t186 t187 t188 t189 t190 t191 module27 mode27 t194 t195 t196 t197 t198 t199 module28 mode28 t202 t203 t204 t205 t206 t207 module29 mode29 t210 t211 t212 t213 t214 t215 module30 mode30 t218 t219 t220 t221 t222 t223 log39 Lcoldfusion/tagext/lang/LogTag; log40 	include41 output51  Lcoldfusion/tagext/io/OutputTag; mode51 t229 module49 mode49 t232 t233 t234 t235 t236 t237 t238 Ljava/util/List; t239 t240 t241 t242 t243 t244 t245 t246 t247 LocalVariableTable LineNumberTable java/lang/Throwable  Code getMetadata ()Ljava/lang/Object; varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; output35 mode35 module34 mode34 t8 t9 t16 t17 output37 mode37 module36 mode36 t24 t25 t4 ,Lcoldfusion/runtime/TransientVariableHolder; t5 #Lcoldfusion/runtime/AbortException; t6 Ljava/lang/Exception; __cfcatchThrowable0 log38 !coldfusion/runtime/AbortException? java/lang/ExceptionA runPage 	include52 	include53 form48 %Lcoldfusion/tagext/html/form/FormTag; mode48 module47 mode47 	include42 	include43 	include44 module45 mode45 module46 mode46 <clinit> module50 mode50 t7 1     6                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     � �   3 �   e �   l �   ��   � �     �   1 �       � "  6� 
 �  �*� �+� �� �:*� ��� ���* �YS������*� �*�"�&��)�.�2� �*�7+� ��9:*� �;�>�.�2� �*� �**��Y@S�CE�G�KY�O� %W*� �**��Y@S�CQ�G�K�O� �*� �**��Y@S�CS�G�K�O�� }*��YUSW�[*�7+� ��9:*� �]_*� �*�bd�&��>�.�2� �*�i+� ��k:* � ��.�2� �*�p+� ��r:*$� �tvx�{�}Y�GYSY�SY�SY�S�����.��Y6	� 6*	,��M,��������� � :
� 
�:*	,��M���� :� #�� � #:��� � :� �:���*�p+� ��r:*%� �tvx�{�}Y�GYSY�SY�SY�S�����.��Y6� 6*,��M,��������� � :� �:*,��M���� :� #�� � #:��� � :� �:���*�p+� ��r:*&� �tvx�{�}Y�GYSY�SY�SY�S�����.��Y6� 6*,��M,��������� � :� �:*,��M���� :� #�� � #:��� � :� �:���*�p+� ��r: *'� � tvx�{ �}Y�GYSY�SY�SY�S���� �. ��Y6!� 6* !,��M,��� ������ � :"� "�:#*!,��M�# ��� :$� #$�� � #:% %��� � :&� &�:' ���'*�p+� ��r:(*(� �(tvx�{(�}Y�GYSY�SY�SY�S����(�.(��Y6)� 6*(),��M,���(������ � :*� *�:+*),��M�+(��� :,� #,�� � #:-(-��� � :.� .�:/(���/*�p	+� ��r:0*+� �0tvx�{0�}Y�GYSY�SY�SY�S����0�.0��Y61� 6*01,��M,Ķ�0������ � :2� 2�:3*1,��M�30��� :4� #4�� � #:505��� � :6� 6�:70���7*�p
+� ��r:8*,� �8tvx�{8�}Y�GYSY�SY�SY�S����8�.8��Y69� 6*89,��M,ȶ�8������ � ::� :�:;*9,��M�;8��� :<� #<�� � #:=8=��� � :>� >�:?8���?*�p+� ��r:@*-� �@tvx�{@�}Y�GYSY�SY�SY�S����@�.@��Y6A� 6*@A,��M,̶�@������ � :B� B�:C*A,��M�C@��� :D� #D�� � #:E@E��� � :F� F�:G@���G*�p+� ��r:H*.� �Htvx�{H�}Y�GYSY�SY�SY�S����H�.H��Y6I� 6*HI,��M,ж�H������ � :J� J�:K*I,��M�KH��� :L� #L�� � #:MHM��� � :N� N�:OH���O*�p+� ��r:P*/� �Ptvx�{P�}Y�GYSY�SY�SY�S����P�.P��Y6Q� 6*PQ,��M,Զ�P������ � :R� R�:S*Q,��M�SP��� :T� #T�� � #:UPU��� � :V� V�:WP���W*�p+� ��r:X*0� �Xtvx�{X�}Y�GYSY�SY�SY�S����X�.X��Y6Y� 6*XY,��M,ض�X������ � :Z� Z�:[*Y,��M�[X��� :\� #\�� � #:]X]��� � :^� ^�:_X���_*�p+� ��r:`*1� �`tvx�{`�}Y�GYSY�SY�SY�S����`�.`��Y6a� 6*`a,��M,ܶ�`������ � :b� b�:c*a,��M�c`��� :d� #d�� � #:e`e��� � :f� f�:g`���g*�p+� ��r:h*2� �htvx�{h�}Y�GYSY�SY�SY�S����h�.h��Y6i� 6*hi,��M,��h������ � :j� j�:k*i,��M�kh��� :l� #l�� � #:mhm��� � :n� n�:oh���o*�p+� ��r:p*3� �ptvx�{p�}Y�GYSY�SY�SY�S����p�.p��Y6q� 6*pq,��M,��p������ � :r� r�:s*q,��M�sp��� :t� #t�� � #:upu��� � :v� v�:wp���w*�p+� ��r:x*4� �xtvx�{x�}Y�GYSY�SY�SY�S����x�.x��Y6y� 6*xy,��M,��x������ � :z� z�:{*y,��M�{x��� :|� #|�� � #:}x}��� � :~� ~�:x���*�p+� ��r:�*5� ��tvx�{��}Y�GYSY�SY�SY�S������.���Y6�� 6*��,��M,��������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*6� ��tvx�{��}Y�GYSY�SY�SY�S������.���Y6�� 6*��,��M,��������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*7� ��tvx�{��}Y�GYSY�SY�SY�S������.���Y6�� 6*��,��M,���������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*8� ��tvx�{��}Y�GYSY�SY�SY�S������.���Y6�� 6*��,��M,���������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*9� ��tvx�{��}Y�GYSY�SY�SY�S������.���Y6�� 6*��,��M,���������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*:� ��tvx�{��}Y�GYSY�SY�SY�S������.���Y6�� 6*��,��M, ��������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*;� ��tvx�{��}Y�GYSYSY�SYS������.���Y6�� 6*��,��M,��������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*<� ��tvx�{��}Y�GYSYSY�SYS������.���Y6�� 6*��,��M,��������� � :�� ��:�*�,��M������ :�� #��� � #:������ � :�� ��:������*�p+� ��r:�*=� ��tvx�{��}Y�GYSY
SY�SY
S������.���Y6�� 6*��,��M,��������� � :¨ ¿:�*�,��M������ :Ĩ #İ� � #:��Ŷ�� � :ƨ ƿ:������*�p+� ��r:�*>� ��tvx�{Ȼ}Y�GYSYSY�SYS������.ȶ�Y6ə 6*��,��M,��ȶ����� � :ʨ ʿ:�*�,��M��ȶ�� :̨ #̰� � #:��Ͷ�� � :Ψ ο:�ȶ���*�p+� ��r:�*?� ��tvx�{л}Y�GYSYSY�SYS������.ж�Y6љ 6*��,��M,��ж����� � :Ҩ ҿ:�*�,��M��ж�� :Ԩ #԰� � #:��ն�� � :֨ ֿ:�ж���*�p+� ��r:�*@� ��tvx�{ػ}Y�GYSYSY�SYS������.ض�Y6ٙ 6*��,��M,��ض����� � :ڨ ڿ:�*�,��M��ض�� :ܨ #ܰ� � #:��ݶ�� � :ި ޿:�ض���**� ��*� ͸"�'*� !**� Ͷ+�'**� !�Y-S**� 9�+�0**� !�Y2S**� )�+�0**� !�Y4S**� e�+�0**� !�Y6S**� m�+�0**� !�Y8S**� =�+�0**� !�Y:S**� ��+�0**� !�Y<S**� -�+�0**� !�Y>S**� Q�+�0**� !�Y@S**� ��+�0**� !�YBS**� ��+�0**� !�YDS**� A�+�0**� !�YFS**� q�+�0**� !�YHS**� ��+�0**� !�YJS**� ��+�0**� !�YLS**� ��+�0**� !�YNS**� ��+�0**� !�YPS**� ��+�0**� !�YRS**� u�+�0**� !�YTS**� ��+�0**� !�YVS**� I�+�0**� !�YXS**� ��+�0**� !�YZS**� ��+�0**� �\^`�c*��YeS�gYi�k*��Y\S���oq�o�t�[**� ��*� �*e� �*�x�|��**� y������Y�O� W**� ��������O�*+,�� �**� ��+�O�� �**� y�����Y�O� W*w�Y�S��O� j*�'+� ��:�* �� �� �#��&��gY(�k* �� �*�"�o*�o�t����.�2� �� g*�(+� ��:�* �� �� �#��&��gY(�k* �� �*�"�o,�o�t����.�2� �*�7)+� ��9:�* �� ��.�>��.�2� �*� �* �� �**��Y�S�C��G�K�'*��3+� ���:�* �� ���.��Y6�t*�,�s� :���,u��*� %* Ƕ �**��Y�S�Cw�G�K�'*,y��**� ��+�O� +,{��,*��Y}S����,��� (,���,*��Y}S����,��,���*�p1� ��r:�* Ҷ ��tvx�{�}Y�GYSY�S������.��Y6� 6*��,��M,��������� � :� �:�*�,��M����� :� &�]갨 � #:����� � :� �:�����,���,**� �+���,���,**� i�+���,���,**� 1�+���,���**� ��+�O�  ,���,**� 5�+���,���,���*� E��'*,0��**� %�+��:�6�6��� 6�*K��:� :��� N�-�'-� *�,�� :� Y�,����`6�����,��������� :�� #��� � #:����� � :�� ��:����*� ��
!

!�*6!036!�*E!03E!6BE!EJE!���!���!���!���!��!��!�	!!z��!���!o��!���!o��!���!���!���!B^a!afa!7��!���!7��!���!���!���!
&)!).)!�IU!ORU!�Id!ORd!Uad!did!���!���!�!!�,!,!),!,1,!���!���!���!���!���!���!���!���!b~�!���!W��!���!W��!���!���!���!*FI!INI!iu!oru!i�!or�!u��!���!�		!			!�	1	=!	7	:	=!�	1	L!	7	:	L!	=	I	L!	L	Q	L!	�	�	�!	�	�	�!	�	�
!	�

!	�	�
!	�

!


!


!
�
�
�!
�
�
�!
w
�
�!
�
�
�!
w
�
�!
�
�
�!
�
�
�!
�
�
�!Jfi!ini!?��!���!?��!���!���!���!.1!161!Q]!WZ]!Ql!WZl!]il!lql!���!���!�%!"%!�4!"4!%14!494!���!���!���!���!���!���!���!��!j��!���!_��!���!_��!���!���!���!2NQ!QVQ!'q}!wz}!'q�!wz�!}��!���!�!!�9E!?BE!�9T!?BT!EQT!TYT!���!���!�!
!�!
!!!!���!���!��!���!��!���!���!���!Rnq!qvq!G��!���!G��!���!���!���!69!9>9!Ye!_be!Yt!_bt!eqt!tyt!��!!�!-!'*-!�!<!'*<!-9<!<A<!���!���!���!���!��!��!�!	!r��!���!g��!���!g��!���!���!���!:VY!Y^Y!/y�!��!/y�!��!���!���!2NQ!QVQ!'t�!z}�!'t�!z}�!���!���!&?�!Et�!zx�!~��!���!&?�!Et�!zx�!~��!���!���!���!   	� �  �    � �   � !   � �   �"#   �$%   �&%   �'(   �)*   �+, 	  �-. 
  �/   �0   �1.   �2.   �3   �4*   �5,   �6.   �7   �8   �9.   �:.   �;   �<*   �=,   �>.   �?   �@   �A.   �B.   �C   �D*    �E, !  �F. "  �G #  �H $  �I. %  �J. &  �K '  �L* (  �M, )  �N. *  �O +  �P ,  ��. -  �Q. .  �R /  �S* 0  �T, 1  �U. 2  �V 3  �W 4  �X. 5  �Y. 6  �Z 7  �[* 8  �\, 9  �]. :  �^ ;  �_ <  �`. =  �a. >  �b ?  �c* @  �d, A  �e. B  �f C  �g D  �h. E  �i. F  �j G  �k* H  �l, I  �m. J  �n K  �o L  �p. M  �q. N  �r O  �s* P  �t, Q  �u. R  �v S  �w T  �x. U  �y. V  �z W  �{* X  �|, Y  �}. Z  �~ [  � \  ��. ]  ��. ^  �� _  ��* `  ��, a  ��. b  �� c  �� d  ��. e  ��. f  �� g  ��* h  ��, i  ��. j  �� k  �� l  ��. m  ��. n  �� o  ��* p  ��, q  ��. r  �� s  �� t  ��. u  ��. v  �� w  ��* x  ��, y  ��. z  �� {  �� |  ��. }  ��. ~  ��   ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  ��. �  ��. �  �� �  ��* �  ��, �  ��. �  �� �  �� �  � . �  �. �  � �  � �  � �  �% �  � �  �	, �  �
 �  �* �  �, �  �. �  � �  � �  �. �  �. �  � �  � �  �, �  �, �  �, �  �  �  � �  � �  �. �  �. �  � �  ��     !  !  !  !  I  I  R  R  R  R  I  I     p  �  �  p  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  � " " " "   J J J J N N J J ( k   �  � � $� $� $� $� $� %� %� %� %V %S &S &_ &_ & & ' '' '' '� '� (� (� (� (� (� +� +� +� +u +s ,s , , ,= ,; -; -G -G - - . . . .� .� /� /� /� /� /	� 0	� 0	� 0	� 0	] 0
[ 1
[ 1
g 1
g 1
% 1# 2# 2/ 2/ 2
� 2� 3� 3� 3� 3� 3� 4� 4� 4� 4} 4{ 5{ 5� 5� 5E 5C 6C 6O 6O 6 6 7 7 7 7� 7� 8� 8� 8� 8� 8� 9� 9� 9� 9e 9c :c :o :o :- :+ ;+ ;7 ;7 ;� ;� <� <� <� <� <� =� =� =� =� =� >� >� >� >M >K ?K ?W ?W ? ? @ @ @ @� @� C� C� D� D� D� D� D� D� D� D� E� E� E� E� E� E� F� F� F� F� F� F G G G G� G� G& H& H& H& H H H@ I@ I@ I@ I1 I1 IZ JZ JZ JZ JK JK Jt Kt Kt Kt Ke Ke K� L� L� L� L L L� M� M� M� M� M� M� N� N� N� N� N� N� O� O� O� O� O� O� P� P� P� P� P� P Q Q Q Q Q Q* R* R* R* R R RD SD SD SD S5 S5 S^ T^ T^ T^ TO TO Tx Ux Ux Ux Ui Ui U� V� V� V� V� V� V� W� W� W� W� W� W� X� X� X� X� X� X� Y� Y� Y� Y� Y� Y� Z� Z� Z� Z� Z� Z ^ ^' `' `- `- `- `- `C `C `# `# `# `# ` ` _T dT de ee ed ed ed ed eZ eZ ep gp gp gp gt gt gw gw go go go go g� g� g� g� g� g� g� g� g� g� g� g� go go g� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �  �  � � �% �% �% �% �, �, � � �� �g �g � � �� �� �� �� �� �� �{ �{ �O �O �� �� �o g� �� �� �� �� �� �� �� �� �W �W �W �W �L �L �} �} �� �� �� �� �� �� �� �� �� �� �� �} � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � �- �- �� �- �
 � #$ "   "     ��                "  T    "*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+� ˵ ͱ          "    "%&   "'(  �� "  �     z*� �W�'**� }����Y�O� W**� }�+�O����O��*��#+� ���:* �� ��.��Y6�=*,Ѷ�*�p"� ��r:* �� �tvx�{�}Y�GYSY�SY�SY�S�����.��Y6� �*,��M,۶�,* �� �**� U�Y�S�����,��,* �� �**� U�Y�S�����*,Ѷ������� � :� �:	*,��M�	��� :
� &� k
�� � #:��� � :� �:���*,��������� :� #�� � #:�� � :� �:��*,�է�*��%+� ���:* �� ��.��Y6�=*,Ѷ�*�p$� ��r:* �� �tvx�{�}Y�GYSY�SY�SY�S�����.��Y6� �*,��M,��,* �� �**� U�Y�S�����,��,* �� �**� U�Y�S�����*,Ѷ������� � :� �:*,��M���� :� &� k�� � #:��� � :� �:���*,��������� :� #�� � #:�� � :� �:��*,��*�   �25!5:5! �Xd!^ad! �Xs!^as!dps!sxs! OX�!^��!���! OX�!^��!���!���!���!e��!���!Z�!!Z�!!!!��P!DP!JMP!��_!D_!JM_!P\_!_d_!   B    z    z �   z !   z �   z)   z*,   z+*   z,,   z-.   z. 	  z- 
  z/.   z0.   z1   z2   z3.   z/.   z0   z1   z2,   z3*   z4,   z:.   z;   z5   z6.   z>.   z?   z@   zA.   zB.   zC   * J  �  �  �  �   �   �  �  �  �  � 
 � 
 � 
 � 
 �  �  �  �  �  �  �  �  � 
 � 
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � b � 3 �> �> �J �J �~ �~ �~ �~ �~ �~ �~ �~ �v �� �� �� �� �� �� �� �� �� � �� �� � 
 � � "      o*� ]��'**� y����� *� ]*w�Y�S��'*o� �**� ���*�GY**� ]�+SY*��Y�S�S��W��Y*� Է�:*� a*t� �**��Y�S�C��G�K�'**� �����Y�O� W*v� �**� ��+����Y�O� W**� ��+�O� B**� a�+�O�� /*� }W�'*{� �**��Y�S�C��G�KW� =**� a�+�O� /*� }�'*� �**��Y�S�C��G�KW��:�:��:���ê     �           S��*+,��� :� ��*,��*� �* �� �**� ��+��**� Ŷ+�����'*�&+� ��:	* �� �	�	�gY**� U�YS���k�o**� U�Y�S���o�t��	�.	�2� :
� 
�� �� � :� �:��*�  wX[@ wX`B wX\![�\!�J\!PY\!\a\!    �   o    o �   o !   o �   o78   o9:   o;<   o=.   o-   o> 	  o- 
  o/.   o0   � u  j  j  j  j   j  k  k  k  k  k  k  k  k 
 k 
 k  m  m  m  m  m 
 k 8 o 8 o J o J o U o U o 8 o 8 o 8 o   h � t � t � t � t w t � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � v � x � x � x � x � x � x � z � z � z � z � z � { � { � { � x } }- ~- ~- ~- ~) ~9 9 9  } } � v w s� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � �� �� �� � j r C$ "   �     *� Զ �L*� �N*-+�� �*+0��*�74-� ��9:*$� ��>�.�2� �*�75-� ��9:*%� ��>�.�2� ��      >          !     �     � �    D%    E%      9$ 9$ !$ g% g% O%       "   #     *� 
�             � "  � 	   �*,���*� E**� E�+��c���',���,**� E�+���,���,**� E�+���,���,**� !**� M�Y�S������,���**� M�Y�S�������O,���,**� M�Y�S����,Ķ�,**� M�Y�S����,ȶ�,**� M�Y�S����,Ķ�,**� M�Y�S����,̶�**� ��+�O� �*,ζ�**� M�Ҷ���Y�O� 0W* � �**� M�Y�S��ָ����t|���O� M,ݶ�,**� M�Y�S����,Ķ�,**� M�Y�S����,߶�� 
,��*,Ѷ�*,�է *+,�
� �*,��*�      *   �    � �   � !   � �   z ^  �  �  �  �  �  �  �  �  �  �  �  � ' � ' � ' � ' � & � = � = � = � = � < � X � X � S � S � S � S � R � z � z � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �5 �5 �5 �5 �9 �9 �< �< �4 �4 �4 �4 �T �T �T �T �l �l �T �T �T �T �4 �4 �� �� �� �� �� �� �� �� �� �� �� �4 � �� � z � q� "  � 	   �*,0��*�50+� ��7:* �� �9�:<>* �YS����AC�F�.�GY6�*,��M*,�f� :� �*�,h��*�p/� ��r:* �� �tvx�{�}Y�GYSYjS�����.��Y6� 6*,��M,l�������� � :	� 	�:
*,��M�
��� :� )� M� ��� � #:��� � :� �:���*,0���m��� � :� �:*,��M��n� :� #�� � #:�o� � :� �:�p�*�  � � �! � �! �".!(+.! �"=!(+=!.:=!=B=! b }d! �"d!(ad!did! W }�! �"�!(��!���! W }�! �"�!(��!���!���!���!    �   �    � �   � !   � �   �FG   �H,   �;   �I*   �J,   �.. 	  �- 
  �/   �0.   �1.   �2   �3.   �/   �0   �6.   �7.   �8    2    �   � . � . � . � . � K � K � � � � � � �  � d� "      �*,0��*�7*+� ��9:* �� �I�>�.�2� �*,0��*�7++� ��9:* �� �K�>�.�2� �*,0��*�7,+� ��9:* �� �M�>�.�2� �,O��,* �� �**� Y��Q*�GY*��Y�S�S�����,S��*�p-+� ��r:* �� �tvx�{�}Y�GYSYUS�����.��Y6� 6*,��M,W�������� � :	� 	�:
*,��M�
��� :� #�� � #:��� � :� �:���,Y��**� ��+�O� ,[��� 
,]��,_��*�p.+� ��r:* �� �tvx�{�}Y�GYSYaS�����.��Y6� 6*,��M,c�������� � :� �:*,��M���� :� #�� � #:��� � :� �:���*� 6RU!UZU!+u�!{~�!+u�!{~�!���!���! <?!?D?!_k!ehk!_z!ehz!kwz!zz!    �   �    � �   � !   � �   �K%   �L%   �M%   �N*   �O,   �.. 	  �- 
  �/   �0.   �1.   �2   �P*   �Q,   �0.   �6   �7   �8.   �9.   �:    r    �   �  � V � V � > � � � � � t � � � � � � � � � � � � � � � � � � � � � � �� �� �� �� � � �� � R  "   x     Z� � �5� �7g� �in� �p�Y�S��ʸ ��� �3� �5�}Y�G����          Z   � "  �    �*,Ѷ�**� M�����Y�O� 0W* �� �**� M�Y�S��ָ����t|���O� d*,ζ�**� M�Y�S������ ,��� *,ݶ�,**� M�Y�S����,߶�*,Ѷէ A*,ζ�**� M�Y�S������ ,��� 
,��*,Ѷ�*,��**� M������Y�O� 0W* �� �**� M�Y�S��ָ����t|���O� d*,ζ�**� M�Y�S������ ,��� *,ݶ�,**� M�Y�S����,߶�*,Ѷէ,*,ζ�**� M�Y�S������ ,��� �**� M�Y�S������ �,��*�p2+� ��r:*� �tvx�{�}Y�GYSY�S�����.��Y6� 6*,��M,��������� � :� �:*,��M���� :� #�� � #:		��� � :
� 
�:���,���� 
,��*,Ѷ�*,���**� ��+�O� �*,ζ�**� M�Ҷ���Y�O� 0W*� �**� M�Y�S��ָ����t|���O� d*,���**� M�Y�S������ ,���� *,��,**� M�Y�S����,��*,ζէ A*,���**� M�Y�S������ ,��� 
,��*,ζ�*,Ѷ�*� Kgj!joj!@��!���!@��!���!���!���!    z   �    � �   � !   � �   �S*   �T,   �;.   �U   �-   �.. 	  �-. 
  �/   2 � 	 � 	 � 	 � 	 �  �  �  �  �  �  �  �  � ( � ( � ( � ( � @ � @ � ( � ( � ( � ( �  �  � [ � [ � m � m � � � � � � � � � � � � � [ � � � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � � � � � � �2 �2 � � � � � � � � �M �M �_ �_ �| �| �| �| �{ �t �M ���������00��
��� � ���������������%%��@@RRoooong@���������       �    �