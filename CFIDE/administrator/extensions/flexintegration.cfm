����  -� 
SourceFile 3/CFIDE/administrator/extensions/flexintegration.cfm  cfflexintegration2ecfm1059429994  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   KEYSTOREPASSWORD Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   KEYSTOREPWDLABEL   	   JR   	    FDSIP_ERROR_GET " " 	  $ I & & 	  ( CHECKCSRFTOKEN * * 	  , KEYSTOREPATHLABEL . . 	  0 IPS 2 2 	  4 BSEGMENTISINVALID 6 6 	  8 GETADMINVARIANT : : 	  < IP_ERROR_INVALID > > 	  @ CFCATCH B B 	  D GETCSRFTOKEN F F 	  H TOKEN J J 	  L FDSIP_ERROR_REMOVE N N 	  P OLDID R R 	  T IP_ERROR_ADD V V 	  X ERROR_KEYSTOREPASS Z Z 	  \ FORM ^ ^ 	  ` LOG b b 	  d SERVERIDENTITYLABEL f f 	  h AERRORMESSAGES j j 	  l REMOVE_BUTTON n n 	  p ERROR_FLEXASSEMBLER r r 	  t IDENTITY v v 	  x 	DEFAULTID z z 	  | ADMINSUBMIT ~ ~ 	  � REQUEST � � 	  � IPUTILS � � 	  � TMP � � 	  � IPINDEX � � 	  � 
ADD_BUTTON � � 	  � BERRORSEXIST � � 	  � KEYSTORE � � 	  � RESULT � � 	  � NUMSEGMENTS � � 	  � com.macromedia.SourceModTime  R^�� pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � %class$coldfusion$tagext$net$CookieTag Ljava/lang/Class; coldfusion.tagext.net.CookieTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/net/CookieTag � _setCurrentLineNo (I)V � �
  � 30 � 
setExpires (Ljava/lang/Object;)V � �
 � � cfcookie � value � CGI � java/lang/String � SCRIPT_NAME � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setValue (Ljava/lang/String;)V � �
 � � setHttpOnly (Z)V � �
 � � name � cfadmin_lastpage_ � GetAuthUser ()Ljava/lang/String; � �
  � concat &(Ljava/lang/String;)Ljava/lang/String; � �
 � � setName � �
 �  	hasEndTag � coldfusion/tagext/GenericTag
 _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
 	 $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag �	  coldfusion/tagext/io/SilentTag 
doStartTag ()I
 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;
  LOCALE REQUEST.LOCALE en checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V !
 " 
LOCALEFILE$ java/lang/StringBuffer& resources/extensions_(  �
'* append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;,-
'. .cfm0 toString2 � java/lang/Object4
53 _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V78
 9 IPLIST; FORM.IPLIST=  ? falseA 2(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)V C
 D defaultF setH � coldfusion/runtime/VariableJ
KI _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;MN
 O getAdminVariantQ 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;ST
 U jrunW _compare '(Ljava/lang/Object;Ljava/lang/String;)DYZ
 [ &class$coldfusion$tagext$lang$ObjectTag  coldfusion.tagext.lang.ObjectTag^] �	 `  coldfusion/tagext/lang/ObjectTagb created 	setActionf �
cg javai setTypek �
cl jrunx.kernel.JRunn setClassp �
cq jrs
c  getServerNamev _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;xy
 z FORM.IDENTITY| 	defaultID~ ArrayNew (I)Ljava/util/List;��
 � _Array 2(Ljava/lang/Object;)Lcoldfusion/runtime/FastArray;��
 �� setArray !(Lcoldfusion/runtime/FastArray;)V��
K� REMOVE� FORM.REMOVE�  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z��
 � _Object (Z)Ljava/lang/Object;��
 �� _boolean (Ljava/lang/Object;)Z��
 �� RESTRICTEDIPLIST� FORM.RESTRICTEDIPLIST� ADD� FORM.ADD� isDefinedCanonicalVariable  (Lcoldfusion/runtime/Variable;)Z��
 � IPTOBEADDED� FORM.IPTOBEADDED� Trim� �
 � Len (Ljava/lang/Object;)I��
 � (I)Ljava/lang/Object;��
 �� 	CSRFTOKEN� FORM.CSRFTOKEN� checkCSRFToken� _autoscalarize�N
 � DATASERVTABKEYNAME� _factor4 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;��
 � *coldfusion/runtime/TransientVariableHolder� &(Lcoldfusion/runtime/NeoPageContext;)V �
�� (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag�� �	 � "coldfusion/tagext/lang/ImportedTag� l10n� 
../cftags/� admin� :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V ��
�� &coldfusion/runtime/AttributeCollection� id� error_req_keystore_pass� var� error_keystorepass� ([Ljava/lang/Object;)V �
�� setAttributecollection (Ljava/util/Map;)V��  coldfusion/tagext/lang/ModuleTag�
��
� ;
    You must provide a keystore file and a password
    � write� � java/io/Writer�
�� doAfterBody�
�� _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;��
 � doEndTag� #javax/servlet/jsp/tagext/TagSupport�
�� doCatch (Ljava/lang/Throwable;)V
� 	doFinally 
� User  X changed Flex integration settings. The old values were Enable Flash Remoting support : 
 RUNTIME _resolve �
  isEnabledFlashRemoting 8, Enable Remote Adobe LiveCycle Data Management access:  isEnabledFlexDataServices ,, Enable RMI over SSL for Data Management :  isEnabledRmiSSL ". Enable Flash Remoting support :  ENABLEFLASHREMOTING FORM.ENABLEFLASHREMOTING (Z)Ljava/lang/String; �!
 �" ENABLEFLEXASSEMBLER$ FORM.ENABLEFLEXASSEMBLER& ENABLERMISSL( FORM.ENABLERMISSL* getDataServiceId, '(Ljava/lang/Object;Ljava/lang/Object;)DY.
 / setDataServiceId1 setEnableFlexDataServices3 true5 FORM.KEYSTOREPASSWORD7 STATICPASSWORD9 setKeystorePassword; _factor0=�
 > FORM.KEYSTORE@ setKeystoreB getKeystoreD (Ljava/lang/Object;D)DYF
 G getKeystorePasswordI setEnableRmiSSLK _List $(Ljava/lang/Object;)Ljava/util/List;MN
 �O ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)ZQR
 S setEnableFlashRemotingU unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;WX coldfusion/runtime/NeoExceptionZ
[Y t36 [Ljava/lang/String; Any_]^	 a findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)Icd
[e bind '(Ljava/lang/String;Ljava/lang/Object;)Vgh
�i $class$coldfusion$tagext$io$OutputTag coldfusion.tagext.io.OutputTaglk �	 n coldfusion/tagext/io/OutputTagp
q error_flexassemblers 7
					Error attempting to update settings:<br/>
					u MESSAGEw D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; �y
 z EncodeForHTML| �
 } <br/>
					 DETAIL� 
				� _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V��
 �
q� coldfusion/tagext/QueryLoop�
��
�
q unbind� 
�� _factor1��
 � #class$coldfusion$tagext$lang$LogTag coldfusion.tagext.lang.LogTag�� �	 � coldfusion/tagext/lang/LogTag� audit� setFile� �
�� setApplication� �
�� cflog� text� setText� �
�� 0� Java� coldfusion.util.IPAddressUtils� ipUtils� validateIPAdress� ip_error_invalid� #
				The IP you attempted to add (�) is not valid.
				IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
				or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format.
			� ArrayLen��
 � (D)Ljava/lang/Object;��
 �� _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V��
 � [\+[:space:]\-]*� ALL� 	REReplace� �
 � FLEXASSEMBLERIPLIST� ,� 
ListAppend J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
 � t37�^	 � ip_error_add� %
						The IP you attempted to add (�) is not valid.
						IPs are four sets of numbers from 0 to 255 separated by periods (e.g., 127.0.0.1) in IPv4 addressing format
						or eight sets of hexadecimal numbers from 0 to FFFF seperated by colon (e.g., 0:0:0:0:0:0:0:1) in IPv6 addressing format. <br/>
						�  <br />
						� 
					� _factor2��
 �  added ip address � + where LiveCycle Data Services are running'� 1� _int��
 �� 	ListGetAt '(Ljava/lang/String;I)Ljava/lang/String;��
 � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I��
 � ListDeleteAt��
 � _double (Ljava/lang/Object;)D��
 �� ListLen (Ljava/lang/String;)I��
 � t38 ^	  fdsip_error_remove 
				An error occurred attempting to remove the requested IP(s).
				from the Flex Data Management configuration.<br />
				  <br />
				 
				 _factor3�
  t39^	  fdsip_error_get �
				An error occurred attempting to retrieve a list of restricted IP addresses
				from the Flex Data Management configuration.<br />
				 <br />
				 _factor5�
  cfusion
�

 



 flex_pagename! pagename# Flex integration% 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag(' �	 * !coldfusion/tagext/lang/IncludeTag, ../header.cfm. setTemplate0 �
-1 )class$coldfusion$tagext$html$form$FormTag #coldfusion.tagext.html.form.FormTag43 �	 6 #coldfusion/tagext/html/form/FormTag8 Flex:
9  cfform= action?
9g POSTB 	setMethodD �
9E
9 ../include/buttonbar.cfmH ../include/margintop.cfmJ ../include/errors.cfmL 

<h2 class="pageHeader">N pageHeader_flexintegrationP %Data & Services &gt; Flex IntegrationR 	</h2>

T 0
	<input type="hidden" name="csrftoken" value="V getCSRFTokenX s">	
	<p>
		<input name="EnableFlashRemoting"  type="CHECKBOX" class="text" value="true" id="EnableFlashRemoting" Z checked\ +>

		<b><label for="EnableFlashRemoting">^ enableFlashRem` Enable Flash Remotingb /</label></b><br>
		<font class="sentance">
		d enableFlashRem_descf �
			Lets a Flash client connect to this ColdFusion server and invoke ColdFusion Components (CFCs).
			NOTE: Disabling this feature also disables ColdFusion server monitoring and multiserver monitoring.
		h �
		</font>
	</p>
	<p>
		<input name="EnableFlexAssembler" type="CHECKBOX" class="text" value="true" id="EnableFlexAssembler" j +>

		<b><label for="EnableFlexAssembler">l enableFlexDSn 4Enable Remote Adobe LiveCycle Data Management accessp enableFlexDS_descr6
			Lets LiveCycle Data Services ES connect to this ColdFusion server through RMI
			and use CFCs to read and update data that supports a
			Flex application. If you are not using this feature, disable it.
			This does not affect LiveCycle Data Services ES integrated in to the ColdFusion installation.
		t 4
		</font>
	</p>
	<p>
		<table>
		<tr>
			<td>v serverIdentityLabelx Server Identityz _factor6|�
 } -:</td>
			<td><input name="identity" title=" "  type="text" value="� EncodeForHTMLAttribute� �
 � E" size="30" mansize="50" id="identity"></td>
		</tr>
		</table>
		� serverIdentity_info� �
			If you are running more than one instance of ColdFusion on this machine, you must
			configure each instance with a unique ID.
		� j
	</p>

	<p>
		<input name="EnableRmiSSL" type="CHECKBOX" class="text" value="true" id="EnableRmiSSL" � <>

		<label for="enable">
		<b><label for="EnableRmiSSL">� enablermissl� 'Enable RMI over SSL for Data Management� enablermissl_desc��
			Lets you use Secure Socket Layer (SSL) encryption for the RMI communication between Flex and ColdFusion.
			This is not required unless you are transmitting authentication information or confidential
			data between Flex and ColdFusion over an unsecured network. You must provide a keystore file and keystore password.
			For instructions on how to create a keystore file, see the online Help.
		� 0
		</font>
		<br/>
		<table>
		<tr>
			<td>� keystorePathLabel� Full path to keystore� -:</td>
			<td><input name="keystore" title="� " type="text" value="� _factor7��
 � 
ESAPIUTILS� encodeForHTMLAttributeFilePath� 9" size="50" id="keystore"></td>
		</tr>
		<tr>
			<td>� keystorePwdLabel� Keystore password� 5:</td>
			<td><input name="keystorepassword" title="� " type="password" value="� �" size="20" maxlength="50" id="keystorepassword" autocomplete="off"></td>
		</tr>
		</table>
	</p>
<br />

<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#� 	GRAYLIGHT� &" class="cellBlueTopAndBottom">
		<b>� selectIP� =Select IP addresses where LiveCycle Data Services are running� !</b>
	</td>
</tr>
<tr>
<td>
� fdsip_welcometext�Q
To secure the LiveCycle Data Services ES integration point,
the hosts that are allowed to perform Data Management operations are restricted.
If you are running LiveCycle Data Services ES on a different computer, specify its IP address here.
By default, only the local computer can perform Data Management operations in ColdFusion.
� �
</td>
</tr>
<tr>
	<td>
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
		<tr>
			<td class="cellBlueBottom">
				<label for="ipaddress">� 
ip_address� 
IP Address� �</label>
				<input type="text" maxlength="50" name="IPToBeAdded" size="20" id="ipaddress" >
		</tr>
		<tr>
			<td class="cellBlueBottom" bgcolor="#� 	BLUELIGHT� ">
				� _factor8��
 � 
add_button� Add� "
				<input type="submit" title="� " name="Add" value="  � �  " class="buttn">
			</td>
		</tr>
		</table>
		
	</td>
</tr>
</table>
<br><br>

<table border="0" cellpadding="5" cellspacing="0" width="100%">
<tr>
	<td bgcolor="#� >" class="cellBlueTopAndBottom">
		<b><label for="removelist">� fdsviewdeleteIP� QView or Remove selected IP addresses where LiveCycle Data Services ES are running� �</label></b>
	</td>
</tr>
<tr>
	<td>
		
		<table border="0" cellpadding="2" cellspacing="0" width="100%">
		<tr>
			<td class="cellBlueBottom">
				<select name="RestrictedIPList"  id="removelist" size="4" multiple style="width:20em">
					� P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; �
 � java/util/StringTokenizer� '(Ljava/lang/String;Ljava/lang/String;)V �
�� 	nextToken� �
�� 
						<option value="� ">� </option>
					� CFLOOP� checkRequestTimeout� �
 � hasMoreTokens ()Z��
�� T
				</select>
			</td>
		</tr>
		<tr>
			<td class="cellBlueBottom" bgcolor="#� remove_button  Remove Selected 1
				<input name="Remove"  type="submit" value=" p" class="buttn" id="removelist">
			</td>
		</tr>
		</table>
		
	</td>
</tr>
</table>
<br />
<br />

 _factor9�
 	 


 ../include/marginbottom.cfm 

<br><br>



9�
9�
9
9 	_factor10�
  ../footer.cfm metaData Ljava/lang/Object;	  getMetadata ()Ljava/lang/Object; this "Lcfflexintegration2ecfm1059429994; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; __factorParent out Ljavax/servlet/jsp/JspWriter; cookie0 !Lcoldfusion/tagext/net/CookieTag; silent20  Lcoldfusion/tagext/io/SilentTag; mode20 t7 t8 t9 Ljava/lang/Throwable; t10 t11 t12 t13 t14 module21 $Lcoldfusion/tagext/lang/ImportedTag; mode21 t17 t18 t19 t20 t21 t22 	include22 #Lcoldfusion/tagext/lang/IncludeTag; form46 %Lcoldfusion/tagext/html/form/FormTag; mode46 t26 	include44 t28 	include45 t30 t31 t32 t33 t34 t35 LineNumberTable java/lang/ThrowableR module36 mode36 t6 module37 mode37 t15 t16 module38 mode38 t23 t24 t25 t27 module39 mode39 	include23 	include24 	include25 module26 mode26 output43  Lcoldfusion/tagext/io/OutputTag; mode43 module40 mode40 module41 mode41 Ljava/lang/String; t40 Ljava/util/StringTokenizer; module42 mode42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 module27 mode27 module28 mode28 module29 mode29 module30 mode30 module31 mode31 t41 t42 module32 mode32 module33 mode33 module34 mode34 module35 mode35 t4 ,Lcoldfusion/runtime/TransientVariableHolder; module6 mode6 #Lcoldfusion/runtime/AbortException; Ljava/lang/Exception; __cfcatchThrowable0 output8 mode8 module7 mode7 t29 !coldfusion/runtime/AbortException� java/lang/Exception� runPage 	include47 object4 "Lcoldfusion/tagext/lang/ObjectTag; log9 Lcoldfusion/tagext/lang/LogTag; log15 __cfcatchThrowable3 output19 mode19 module18 mode18 object10 output12 mode12 module11 mode11 __cfcatchThrowable1 output14 mode14 module13 mode13 <clinit> t5 __cfcatchThrowable2 output17 mode17 module16 mode16 1     1                 "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     ~     �     �     �     �     �     �     �     �     �     � �    �   ] �   � �   ]^   k �   � �   �^    ^   ^   ' �   3 �        #   "     ��   "        !      #  �    �*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }**+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � �**�+,� � ��   "       � !    �$%   �&'     #   #     *� 
�   "        !   � #  	� 	 %  �*� �+� �� �:*� �ζ ���*�� �Y�S� � �� � �� ����*� �*� �� �� ���
� �*�+� ��:*� ���Y6��*,�M*,��� :�����*,�� :�����*� �* � �**�� �YS�E�5�{�L*� @�L* � �* � �**�� �YS�J�5�{�����H�� *� *�� �Y:S� �L*� y* � �**�� �YS�-�5�{�L* � �**� =�PR*�5�VX�\�� �**� y��G�\�~���Y��� 8W**� y���\�~���Y��� W**� }���\�~����� F*� y**� }���L*� �* � �**�� �YS�2�5Y**� }��S�{�L���a� � :	� 	�:
*,��M�
� � :� #�� � #:�� � :� �:��*, ��*��+� ���:* �� ��������Y�5Y�SY"SY�SY$S������Y6� 6*,�M,&�������� � :� �:*,��M�� � :� #�� � #:�� � :� �:��*�++� ��-:* �� �/�2��
� �*�7.+� ��9:* �� �;�<>@*�� �Y�S� � �� �AC�F��GY6� �*,�M*,�
� :� �� ��*,��*�+,� ��-:*�� ��2��
� :� _� ��*�+-� ��-:*�� �I�2��
� :� &� ^�,�����c� � :� �: *,��M� �� :!� #!�� � #:""�� � :#� #�:$��$*� ' � �BS � �BS �?BSBGBS � �nS � �nS �bnShknS � �}S � �}S �b}Shk}Snz}S}�}S�SS�3?S9<?S�3NS9<NS?KNSNSNS� �SA�SGz�S���S���S� �SA�SGz�S���S���S� �SA�SGz�S���S���S���S���S "  t %  � !    �( �   �)*   � �   �+,   �-.   �/ &   �0   �1   �23 	  �4 
  �5   �63   �73   �8   �9:   �; &   �<3   �=   �>   �?3   �@3   �A   �BC   �DE   �F &   �G   �HC   �I   �JC   �K   �L3   �M    �N !  �O3 "  �P3 #  �] $Q  � {                    E  E  L  L  L  L  E  E     � � � � � � � � � � � � � � � � � � � � � � � �	 �	 �	 �	 �* �* �7 �7 �7 �7 �3 �3 �	 �U �U �U �U �J �J �z �z �z �z �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �% �% � � � � �  �  �� �z � j � �� �� �� �� �w �w �_ �� �� �� �� �� �� �� �� �'�'��`�`�G�� � �� #   	 $  �,*6� �**�� �Y�S���5Y**� ���S�{� ��,���*��$+� ���:*9� ��������Y�5Y�SY�SY�SY�S������Y6� 6*,�M,��������� � :� �:*,��M�� � :� #�� � #:		�� � :
� 
�:��,**� ��� ��,���,**� ��� ��,���,**� ��� ��,���,*�� �Y�S� � ��,���*��%+� ���:*C� ��������Y�5Y�SY�S������Y6� 6*,�M,��������� � :� �:*,��M�� � :� #�� � #:�� � :� �:��,���*��&+� ���:*H� ��������Y�5Y�SY�S������Y6� 6*,�M,¶������� � :� �:*,��M�� � :� #�� � #:�� � :� �:��,Ķ�*��'+� ���:*V� ��������Y�5Y�SY�S������Y6� 6*,�M,ȶ������� � :� �:*,��M�� � : � # �� � #:!!�� � :"� "�:#��#,ʶ�,*�� �Y�S� � ��,ζ�*�   � � �S � � �S � � �S � � �S � � �S � � �S � � �S � � �S���S���S��S��S��S��SSSz��S���So��S���So��S���S���S���S>Z]S]b]S3}�S���S3}�S���S���S���S "  j $  � !    �( �   �)*   � �   �T:   �U &   �V3   �0   �1   �23 	  �43 
  �5   �W:   �X &   �83   �Y   �Z   �<3   �=3   �>   �[:   �\ &   �A3   �]   �^   �_3   �G3   �`   �a:   �b &   �K3   �L   �M    �N3 !  �O3 "  �P #Q   � . "6 "6 6 6 6 6  6 r9 r9 ~9 ~9 ;999999:::::1:1:1:1:0:GBGBGBGBFB�C�CdC_H_H(H#V#V�V�Z�Z�Z�Z�Z � #  
:  5  p*�++� ��-:* �� �I�2��
� �*�++� ��-:* �� �K�2��
� �*�++� ��-:* �� �M�2��
� �,O��*��+� ���:* �� ��������Y�5Y�SYQS������Y6� 6*,�M,S�������� � :	� 	�:
*,��M�
� � :� #�� � #:�� � :� �:��,U��*�o++� ��q:* �� ���rY6��*,�~� :���*,��� :���*,��� :���*��(� ���:*[� ��������Y�5Y�SY�SY�SY�S������Y6� 6*,�M,ն������� � :� �:*,��M�� � :� &��� � #:�� � :� �:��,׶�,**� ���� ��,ٶ�,**� ���� ��,۶�,*�� �Y�S� � ��,ݶ�*��)� ���:*i� ��������Y�5Y�SY�S������Y6� 6*,�M,�������� � :� �:*,��M�� � : � &�� �� � #:!!�� � :"� "�:#��#,��**� 5��� �:$�:%6&*'��:'��Y$%��:(� N(��N'-�L,��,**� )��� ��,��,**� )��� ��,������&`6&(�����,���,*�� �Y�S� � ��,ζ�*��*� ���:)*{� �)�����)��Y�5Y�SYSY�SYS���)�)��Y6*� 6*)*,�M,��)������ � :+� +�:,**,��M�,)� � :-� &� �-�� � #:.).�� � :/� /�:0)��0,��,**� q��� ��,������I��� :1� #1�� � #:22��� � :3� 3�:4���4*� 2 � �SS �".S(+.S �"=S(+=S.:=S=B=S36S6;6SYeS_beSYtS_btSeqtStytS)EHSHMHSkwSqtwSk�Sqt�Sw��S���S���S���S���S���S�� S�� S�� S  Sq�NS��NS��NS�YNS_kNSq�NS�BNSHKNSq�]S��]S��]S�Y]S_k]Sq�]S�B]SHK]SNZ]S]b]S "   5  p !    p( �   p)*   p �   pcC   pdC   peC   pf:   pg &   p23 	  p4 
  p5   p63   p73   p8   phi   pj &   p<   p=   p>   pk:   pl &   pA3   p]   p^   p_3   pG3   p`   pm:   pn &   pK3   pL   pM    pN3 !  pO3 "  pP #  p]o $  p�o %  p  & &  p  '  ppq (  pr: )  ps & *  pt3 +  pu ,  pv -  pw3 .  px3 /  py 0  pz 1  p{3 2  p|3 3  p} 4Q   C  �  �   � F � F � . � t � t � \ � � � � � � ��[�[�[�[�[�\�\�\�\�\�\�\�\�\�\�h�h�h�h�hii�i�s�s�s�s�t�t�t�t�t�t�t�t�t�ts�s'z'z'z'z&z|{|{�{�{D{|||||U � |� #    ,  �,W��,* �� �**� I�PY*�5Y*�� �Y�S� �S�V� ��,[��*� �**�� �YS��5�{��� 
,]��,_��*��+� ���:*� ��������Y�5Y�SYaS������Y6� 6*,�M,c�������� � :� �:*,��M�� � :� #�� � #:		�� � :
� 
�:��,e��*��+� ���:*� ��������Y�5Y�SYgS������Y6� 6*,�M,i�������� � :� �:*,��M�� � :� #�� � #:�� � :� �:��,k��*� �**�� �YS��5�{��� 
,]��,m��*��+� ���:*� ��������Y�5Y�SYoS������Y6� 6*,�M,q�������� � :� �:*,��M�� � :� #�� � #:�� � :� �:��,e��*��+� ���:*� ��������Y�5Y�SYsS������Y6� 6*,�M,u�������� � :� �:*,��M�� � : � # �� � #:!!�� � :"� "�:#��#,w��*��+� ���:$*� �$�����$��Y�5Y�SYySY�SYyS���$�$��Y6%� 6*$%,�M,{��$������ � :&� &�:'*%,��M�'$� � :(� #(�� � #:)$)�� � :*� *�:+$��+*� ( � � �S � � �S �	SS �	$S$S!$S$)$S���S���S���S���S���S���S���S���S���S���S}��S���S}��S���S���S���SLhkSkpkSA��S���SA��S���S���S���S8;S;@;S[gSadgS[vSadvSgsvSv{vS "  � ,  � !    �( �   �)*   � �   �~:   � &   �V3   �0   �1   �23 	  �43 
  �5   ��:   �� &   �83   �Y   �Z   �<3   �=3   �>   ��:   �� &   �A3   �]   �^   �_3   �G3   �`   ��:   �� &   �K3   �L   �M    �N3 !  �O3 "  �P #  ��: $  �� & %  � 3 &  � '  �p (  ��3 )  ��3 *  �t +Q   �    �  � ! � ! �  �  �  �  �  � I I I � � xss<mm611���� �� #    $  �,**� i��� ��,���,**� i��� ��,���,*� �**� y��� ����,���*�� +� ���:*� ��������Y�5Y�SY�S������Y6� 6*,�M,��������� � :� �:*,��M�� � :� #�� � #:		�� � :
� 
�:��,���*&� �**�� �YS��5�{��� 
,]��,���*��!+� ���:*)� ��������Y�5Y�SY�S������Y6� 6*,�M,��������� � :� �:*,��M�� � :� #�� � #:�� � :� �:��,e��*��"+� ���:*+� ��������Y�5Y�SY�S������Y6� 6*,�M,��������� � :� �:*,��M�� � :� #�� � #:�� � :� �:��,���*��#+� ���:*5� ��������Y�5Y�SY�SY�SY�S������Y6� 6*,�M,��������� � :� �:*,��M�� � : � # �� � #:!!�� � :"� "�:#��#,**� 1��� ��,���,**� 1��� ��,���*�   � � �S � � �S � � �S � � �S � � �S � � �S � � �S � � �S���S���S���S���S���S���S���S���S\x{S{�{SQ��S���SQ��S���S���S���S,HKSKPKS!kwSqtwS!k�Sqt�Sw��S���S "  j $  � !    �( �   �)*   � �   ��:   �� &   �V3   �0   �1   �23 	  �43 
  �5   ��:   �� &   �83   �Y   �Z   �<3   �=3   �>   ��:   �� &   �A3   �]   �^   �_3   �G3   �`   ��:   �� &   �K3   �L   �M    �N3 !  �O3 "  �P #Q   � .            4 4 4 4 4 4 4 4 , � � L&&&})})F)A+A+
+5555�5�5�5�5�5�5�6�6�6�6�6 =� #  I    �*� e	*7� �*� �� �� �*7� �**�� �YS��5�{� � �� �*7� �**�� �YS��5�{� � �� �*7� �**�� �YS��5�{� � �� �**� a ���#� �� �**� a%'���#� �� �**� a)+���#� ��L*� e**� e���L*� U*9� �**�� �YS�-�5�{�L**� U��*_� �YwS� �0�~� _*;� �**�� �YS�2�5Y*_� �YwS� �S�{W*=� �**�� �YS�4�5YBS�{W**� a%'��� ]*C� �**�� �YS��5�{���� +*D� �**�� �YS�4�5Y6S�{W� R*G� �**�� �YS��5�{��� +*H� �**�� �YS�4�5YBS�{W**� a8����Y��� -W*_� �YS� �*�� �Y:S� �0�~����� 7*N� �**�� �YS�<�5Y*_� �YS� �S�{W*�   "   *   � !    �( �   �)*   � � Q  6 �  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7   7   7   7   7  7  7  7  7 A 7 A 7  7  7  7  7 M 7 M 7 M 7 M 7  7  7  7  7 n 7 n 7  7  7  7  7 z 7 z 7 z 7 z 7  7  7  7  7 � 7 � 7  7  7  7  7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7  7  7  7  7 � 7 � 7  7  7  7  7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7  7  7  7  7 � 7 � 7  7  7  7  7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7 � 7  7  7  7  7   7 � 7 � 7 � 7 � 7   7 9 9 9 9 � 9# :# :+ :+ :# :# :d ;d ;J ;J ;J ;� =� =~ =~ =~ =# :� A� A� A� A� A� A� A� A� A� A� C� C� C� C� C� C� D� D� D� D� D� C G GL HL H2 H2 H2 H G� AU MU MU MU MY MY M[ M[ MT MT MT MT Ml Ml M{ M{ Ml Ml Ml Ml MT MT M� N� N� N� N� NT M �� #  	�  !  ���Y*� ���:*��+� ���:*2� ��������Y�5Y�SY�SY�SY�S������Y6� 6*,�M,�������� � :� �:*,��M�� � :	� &�	�� � #:

�� � :� �:��*+,�?� :���**� a�A��� 7*Q� �**�� �YS�C�5Y*_� �Y�S� �S�{W**� a)+��� �*T� �*T� �**�� �YS�E�5�{�����H�t|��Y��� >W*T� �*T� �**�� �YS�J�5�{�����H�t|����� .*U� �**�� �YS�L�5Y6S�{W� 3*� �6�L*� �*X� �**� m���P**� ]���T���L� +*[� �**�� �YS�L�5YBS�{W**� a ��� 4*`� �**�� �YS�V�5Y6S�{W� +*b� �**�� �YS�V�5YBS�{W��:�:�\:�b�f�     �           C�j*� �6�L*�o+� ��q:*h� ���rY6�-*��� ���:*i� ��������Y�5Y�SYtSY�SYtS������Y6� �*,�M,v��,*k� �**� E� �YxS�{� �~��,���,*l� �**� E� �Y�S�{� �~��*,��������� � :� �:*,��M�� � :� )� i� ��� � #:�� � :� �:���������� :� &� f�� � #:��� � :� �:���*� �*o� �**� m���P**� u���T���L� �� � :� �: ��� *� % j � �S � � �S _ � �S � � �S _ � �S � � �S � � �S � � �Ss��S���ShSSh&S&S#&S&+&S
ZSNZSTWZS
iSNiSTWiSZfiSiniS  ��� � ��� ����  ��� � ��� ����  ��S � ��S ���S��SN�ST��S���S "  L !  � !    �( �   �)*   � �   ���   ��:   �� &   �03   �1   �2 	  �43 
  �53   �6   �7   �8�   �Y�   ��3   ��i   �� &   ��:   �� &   �@3   �A   �]   �^3   �_3   �G   �`   �I3   ��3   �K   �L3   �M  Q  J � C 2 C 2 O 2 O 2  2 � P � P � P � P � P � P � P � P � P � P Q Q Q Q Q � P0 S0 S0 S0 S4 S4 S7 S7 S/ S/ SL TL TL TL Tm Tm TL TL TL TL T� T� T� T� T� T� T� T� T� T� TL TL T� U� U� U� U� U� W� W� W� W� W X X X X X X X X X X� XL T@ [@ [& [& [& [/ SI _I _I _I _M _M _P _P _H _H _y `y `_ `_ `_ `� b� b� b� b� bH _ � 5� g� g� g� g� g� gL iL iX iX i� k� k� k� k� k� k� k� k� k� l� l� l� l� l� l� l� l� l i� h� o� o� o� o� o� o� o� o� o� oz oz o   1 � #   �     I*� �� �L*� �N*-+�� �*�+/-� ��-:*�� ��2��
� ��   "   4    I !     I)*    I �    I � �    I�C Q     1� 1� �    �� #  �    .**� ��#*�� �Y%S�'Y)�+*�� �YS� � �/1�/�6�:**� a<>@�#**� �B�E*� }G�L*� �**� =�PR*�5�VX�\�� g*�a+� ��c:*� �e�hj�mo�rt�u��
� �*� }*� �***� !�Pw�5�{�L**� aw}�#*� m*� �*������**� a������Y��� W**� a������Y��� W**� a������Y��� W**� �����Y��� EW**� a������Y��� ,W*#� �*#� �*_� �Y�S� � ��������� m*� M@�L**� a����� *� M*_� �Y�S� �L*+� �**� -�P�*�5Y**� M��SY*�� �Y�S� �S�VW*�   "   4   . !    .( �   .)*   . �   .�� Q  b �                              "  "  (  (  (  (  >  >              K  K  K  K  O  O  R  R  U  U  J  J  J  \  \  \  \  `  `  [  [  [  j  j  j  j  f  f  v  v  v  v  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  v  �  �  �  �  �  �  �  �    �  �  �          " " " "" "" "% "% " " " " "7 "7 "7 "7 "; "; "> "> "6 "6 "6 "6 " " " " "P "P "P "P "T "T "W "W "O "O "O "O " " " " "i "i "i "i "h "h "h "h " " " " "| #| #| #| #� #� #� #� #{ #{ #{ #{ #� #� #� #� #� #� #� #� #� #� #{ #{ #{ #{ # # #� &� &� &� &� &� '� '� '� '� '� '� '� '� '� '� )� )� )� )� )� '� +� + + + + +� +� +� + " ! � #   
   �**� ���� \*+,��� �*��	+� ���:*r� ��������**� e��� �� ����
� �**� a������Y��� EW**� a������Y��� ,W*v� �*v� �*_� �Y�S� � ��������� �*+,��� �*��+� ���:* �� ���������'Y	�+* �� �*� ��/�/*_� �Y�S� � �/�/�6� ����
� �**� a������Y��� W**� a��������� *+,�� ���Y*� ���:*� 5*�� �YSY�S� �L��:�:�\:		��f�   �           C	�j*� �6�L*�o+� ��q:
* Ҷ �
�
�rY6�0*��
� ���:* Ӷ ��������Y�5Y�SYSY�SYS������Y6� �*,�M,��,* ֶ �**� E� �YxS�{� �~��,��,* ׶ �**� E� �Y�S�{� �~��*,
�������� � :� �:*,��M�� � :� )� i� ��� � #:�� � :� �:��
�����
��� :� &� o�� � #:
��� � :� �:
���**� m�5Y* ۶ �**� m�����c��S**� %���ħ �� � :� �:���*� }��S���Sr#S #Sr2S 2S#/2S272SfSZfS`cfSuSZuS`cuSfruSuzuS�����������S��SZ�S`��S���S "     � !    �( �   �)*   � �   ���   ���   �V�   �0�   �1�   ��3 	  ��i 
  �� &   ��:   �� &   �83   �Y   �Z   �<3   �=3   �>   �?   �@3   �A3   �]   �^3   �_ Q  r �  0  0  0  0   0   0 . r . r B r B r B r B r  r   0 e v e v e v e v i v i v l v l v d v d v d v d v ~ v ~ v ~ v ~ v � v � v � v � v } v } v } v } v � v � v � v � v � v � v � v � v � v � v } v } v } v } v d v d v � � � �  �  � � � � � � � � � � �0 �0 � � � � � � � d vQ �Q �Q �Q �U �U �X �X �P �P �P �P �j �j �j �j �n �n �q �q �i �i �i �i �P �P �P �� �� �� �� �� �� �� �� �� �� �� �� �V �V �b �b �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �� #  
�  '  2*� ���L*� 9B�L*�a
+� ��c:*z� ���me�h��r��u��
� �*{� �***� ��P��5Y*{� �*_� �Y�S� � ��S�{���� *� 96�L**� 9������*� �6�L*�o+� ��q:* �� ���rY6� *��� ���:* �� ��������Y�5Y�SY�SY�SY�S������Y6� ^*,�M,���,* �� �*_� �Y�S� � �~��,�������̨ � :	� 	�:
*,��M�
� � :� &� c�� � #:�� � :� �:��������� :� #�� � #:��� � :� �:���**� m�5Y* �� �**� m�����c��S**� A���ħ�*_� �Y�S* �� �*_� �Y�S� � ��@ȸ˶:��Y*� ���:*� 5*�� �YSY�S� �L**� 5��� D*�� �YSY�S* �� �**� 5��� �*_� �Y�S� � �ϸӶ:�2�8:�:�\:�ָf�               C�j*�o+� ��q:* �� ���rY6�X*��� ���:* �� ��������Y�5Y�SY�SY�SY�S������Y6� �*,�M,ڶ�,* �� �*_� �Y�S� � �~��,ܶ�,* �� �**� E� �YxS�{� �~��,޶�,* �� �**� E� �Y�S�{� �~��*,������w� � :� �:*,��M�� � :� )� i� ��� � #:�� � :� �: �� �������� :!� &� o!�� � #:""��� � :#� #�:$���$**� m�5Y* �� �**� m�����c��S**� Y���ħ �� � :%� %�:&���&*� 'A��S���S6��S���S6��S���S���S���S ���S���S���S ��S��S��S�SS�LOSOTOS�u�S{~�S�u�S{~�S���S���SIu�S{��S���SIu�S{��S���S���S���S������ ���S�uS{�S�S$S "  � '  2 !    2( �   2)*   2 �   2��   2�i   2� &   2�:   2� &   223 	  24 
  25   263   273   28   2Y   2Z3   2<3   2=   2>�   2?�   2@�   2�3   2�i   2� &   2�:   2� &   2`3   2I   2�   2K3   2L3   2M    2N !  2O3 "  2P3 #  2] $  2�3 %  2  &Q  � �  x  x  x  x   x   x  y  y  y  y 
 y 
 y + z + z 3 z 3 z ; z ; z C z C z  z ` { ` { w { w { w { w { w { w { _ { _ { _ { _ { _ { _ { � | � | � | � | � | � | _ { �  �  � � � � � � � � � � � � � �& �& �Z �Z �Z �Z �Z �Z �Z �Z �R � � � � �) �) �) �) �) �) �5 �5 �) �) �; �; �; �; �; �; � � �] �] �] �] �p �p �s �s �v �v �] �] �] �] �I �I �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � � �T �- �� �� �� �� �� �� � � �� �� � � � � � � �� �� � �I � �  �  #   �     ��� �� �� ��_� ��a̸ ���� �Y`S�bm� ��o�� ���� �Y`S��� �Y`S�� �Y`S�)� ��+5� ��7��Y�5���   "       � !   � #  � 	   ,��Y*� ���:*� )�L� �*� �* �� �*�� �YSY�S� � �* �� �*_� �Y�S� � �**� )���������L**� ������ G*�� �YSY�S* �� �*�� �YSY�S� � �**� �������:*� )**� )����c���L**� )��* �� �*_� �Y�S� � �����0�t|�����:�:�\:��f�   �           C�j*� �6�L*�o+� ��q:* �� ���rY6	�0*��� ���:
* �� �
�����
��Y�5Y�SYSY�SYS���
�
��Y6� �*
,�M,��,* ¶ �**� E� �YxS�{� �~��,��,* ö �**� E� �Y�S�{� �~��*,
��
������ � :� �:*,��M�
� � :� )� i� ��� � #:
�� � :� �:
���������� :� &� o�� � #:��� � :� �:���**� m�5Y* Ƕ �**� m�����c��S**� Q���ħ �� � :� �:���*� �FISINIS�o{Sux{S�o�Sux�S{��S���Sko�Su��S���Sko�Su��S���S���S���S � � SoSu�S�SS "   �   , !    ,( �   ,)*   , �   ,��   ,��   ,V�   ,�3   ,�i   ,� & 	  ,�: 
  ,� &   ,63   ,7   ,8   ,Y3   ,Z3   ,<   ,=   ,>3   ,?3   ,@   ,A3   ,] Q  � r  �  �  �  �  � % � % � % � % � E � E � E � E � X � X � X � X � E � E � E � E � % � % � % � % �  � o � o � � � � � � � � � � � � � � � � � � � � � � � � � } � o � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �  �I �I �I �I �E �E �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � � � � � �v �O �� �� �� �� �� �� �� �� �� �� � � � � � � �� �� �   �       �    �