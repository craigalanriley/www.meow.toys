����  - 
SourceFile 5/CFIDE/administrator/cftags/resources/archives_en.cfm cfarchives_en2ecfm821952295  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   
ATTRIBUTES Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   BSUCCESS   	   com.macromedia.SourceModTime  U�@ pageContext #Lcoldfusion/runtime/NeoPageContext; ! "	  # getOut ()Ljavax/servlet/jsp/JspWriter; % & javax/servlet/jsp/JspContext (
 ) ' parent Ljavax/servlet/jsp/tagext/Tag; + ,	  - 3class$coldfusion$tagext$lang$ProcessingDirectiveTag Ljava/lang/Class; -coldfusion.tagext.lang.ProcessingDirectiveTag 1 forName %(Ljava/lang/String;)Ljava/lang/Class; 3 4 java/lang/Class 6
 7 5 / 0	  9 _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; ; <
  = -coldfusion/tagext/lang/ProcessingDirectiveTag ? _setCurrentLineNo (I)V A B
  C setSuppresswhitespace (Z)V E F
 @ G 	hasEndTag I F coldfusion/tagext/GenericTag K
 L J 
doStartTag ()I N O
 @ P $class$coldfusion$tagext$io$SilentTag coldfusion.tagext.io.SilentTag S R 0	  U coldfusion/tagext/io/SilentTag W
 X P 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; Z [
  \ doAfterBody ^ O
 L _ _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; a b
  c doEndTag e O #javax/servlet/jsp/tagext/TagSupport g
 h f doCatch (Ljava/lang/Throwable;)V j k
 L l 	doFinally n 
 L o 	__HTSWT_0 Lcoldfusion/util/FastHashtable; q r	  s java/lang/String u ID w _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; y z
  { __caseValue 4(Lcoldfusion/util/FastHashtable;Ljava/lang/Object;)I } ~
   Archive Wizard � write (Ljava/lang/String;)V � � java/io/Writer �
 � � Build CAR File Archive � Deploy Wizard � Archives and Deployment � �Sorry, but in order to use this application, you must enable session variables.
You may do so by enabling session variables on the "Memory Variables" page. � 3Packaging &amp; Deployment &gt; ColdFusion Archives � �
Enter the path or browse to the appropriate CAR file to deploy the files to this server and
update the relevant server settings.
 � Deploy an Existing Archive � Browse Server � Browse Server Directory � Deploy  � Deploy Archive � �
ColdFusion lets you define applications for organizing work,
archiving files, migrating and deploying sites. You can create and
store ColdFusion Archive definitions to archive, migrate, or redeploy
applications at a later date.
 � Create an archive �  A valid archive name is required � Create � Create an Archive � Archive Name � Current Archive Definition List � Actions � Edit Archive Definition � Build Archive � Delete Archive � Edit Archive Information � -Are you sure you want to delete this archive? � No Archives have been defined � Archive Information � Files and Directories � Dir/Files to Include � Dir/Files to Exclude � CFX Tags � Directory Mappings � Data Sources � Collections � Event Gateways � Event Gateway Types � Event Gateway Settings � Applets � Scheduled Tasks � Settings � Web Services � Rest Services � PDF Services � Pre-Restore To Do List � Post-Restore To Do List � Close Window � Assoc. Files/Dirs � Server Settings � CF Mappings � CF Collections � Java Applets � Archive To Do List � Archive Summary � Archive Applets � 
Select All � Deselect All � Registered Java Applets � Name � Code � Path � Category � Details %Archive ColdFusion Directory Mappings )Included Files and Directories in Archive Logical Path Directory Path	 Archive CFX Registered CFX Tags Class Path or Library Path Archive Data Sources DSN and Data Source Settings Driver Registered Gateway Instances Registered Gateway Types Type Gateway Settings Cancel Apply! Archive File Browser# 0Include/Exclude Associated Files and Directories% Add Path' Browse) Included Paths+ Remove path from archive- (No files have been added to this archive/ )Excluded Files and Directories in Archive1 Excluded Paths3 'Remove path from archive seclusion list5 -No files have been excluded from this archive7 Description9 �
Click Select All to create an archive definition that backs up all objects on your ColdFusion Server. Click Deselect All to create an archive definition that does not archive any objects.
; �<b>WARNING:</b> The Java settings (under Server Settings) contain system-specific paths that are used to start ColdFusion. If you deploy these settings to another machine and the paths are invalid, ColdFusion will fail to start.= Archive PDF Services? Registered PDF ServicesA 	Host NameC Archive REST ServicesE Registered REST ServicesG REST Service NameI 	REST PathK Archive SettingsM 'You changes have been saved as Archive:O Archive Schedule BuildQ Archive Scheduled TasksS Registered Scheduled TasksU DateW URLY General Server Settings[ �Examples: limit the number of simultaneously processed requests; timeout requests
after X seconds.  See the Settings section of the ColdFusion Administrator for more
details.] Caching_ yExamples: set template cache size; limit the maximum number of cached queries. See the Caching section
for more details.a Basic Securityc �Examples: enable and assign ColdFusion Administrator/Studio passwords; restrict use of certain tags. See the
Basic Security section for more details.e 	Variablesg YExamples: enable client and memory variables. See the Variables section for more details.i Java and JVMk �Examples: specify the JVM location; specify JVM arguments. For more information, see the online Help for the Java &amp; JVM page.m �<b>WARNING:</b> The Java settings contain system-specific paths that are used to start ColdFusion. If you deploy these settings to another machine and the paths are invalid, ColdFusion will fail to start.o Lockingq �Examples: specify whether simultaneous access to variables is allowed; configure variable scope lock
settings. See the Locking section for more details.s Loggingu �Examples: set the server administrator e-mail address; log the names of pages that take over a
specified length of time to return. See the Logging section for more details.w Maily wExamples: specify the mail server; log all e-mail messages sent by ColdFusion. See the Mail section
 for more details.{ 	Debugging} �Examples: display the names and values of all CGI, URL, form, and cookie variables; display
detailed processing time; See the Debugging section for more details. Charting� fExamples: How many charts to cache,  maximum number of charting threads, cache location, type of cache� Custom Tag Paths� &Examples: The custom tag path settings� Watcher Settings� jExamples: Causes ColdFusion to watch its configuration files and automatically reload them if they change.� Server Monitor Settings� !Examples: Server monitor Settings� System Probes� {Examples: System probes can monitor the health of a web application by checking the contents of a URL at a regular interval� Update Settings� RExamples: Update site URL, auto check for updates, update email notifications etc.� Web Sockets� LExamples: Update websocket properties like sockettime, port maxframesize etc� Web Service� Examples: Web Services Version� PDF Service� ?Examples: Enable using webkit implementation for PDF conversion� Remote Inspection Settings� ,Examples: Enable Remote Inspection settings � Pre-restore List� Post-restore List� Archive Solr Collection� Registered Solr Collections� Collection Directory� Archive Web Services� Registered Web Services� Web Service Name� WSDL URL� Back� Next� Close� Archive Location� Build Status� Build Status Log� Build Successful� �Reading the log file has timed out. \nThis doesn't mean there is an error. \nPlease check the archive log file to verify build process finished.� Archive File Location� Choose Archive File Location� �
Select or enter the path and file name (with a .car extension) to use for this archive.<br />
Note: If this file already exists, it will be overwritten.
� Deploy Location� Deploy Status� Deploy Status Log� Deploy Successful� 'Select Archive to Deploy on this Server� �
To restore an archive, specify the retrieval method 
(Local, HTTP, or FTP), the current location of the 
archive (.car) file, and the destination for the .car file. � Deploy Locations� Directory Path Translation� Deploy� Severity� Time� Message� ?
Archive file must be a valid archive (.car extension)<br />
� i
Invalid archive name.  Archive names can only contain letters, numbers, dots, underscores and dashes.
� FBuild completed with errors, \nPlease check logs for more information � ^
Invalid archive name. Please make sure that a file with a .car extension is defined.<br />
� GDeploy completed with errors, \nPlease check logs for more information � 
Malformed URL found.
� Settings Never Migrated� RDS� Sandbox Security� Secure Profile� Corba Connectors� Font Management� Default Datasources Debug Output Settings Mappings Default ScriptSrc Directory Enable RDS Service	 "Enable ColdFusion Sandbox Security 0Enable Secure Profile, All Secure Default Values Registered CORBA Connectors User Defined Fonts Connector Port "Active ColdFusion Mappings > CFIDE 'Password, KeyPassword, KeystorePassword zPlease check the Archive Summary page to see the list of settings that will not be migrated under Settings Never Migrated. false set (Ljava/lang/Object;)V coldfusion/runtime/Variable 
! coldfusion/runtime/SwitchTable#
$ 	 JAVA_EXAMPLES& addStringCase 5(Ljava/lang/String;I)Lcoldfusion/runtime/SwitchTable;()
$* 	VARIABLES, EDIT_ARCHIVE_DEF. 	DEBUGGING0 WEBSERVICENAME2 IGNOREKEY_CORBA4 CLSBTNDW6 MONITORING_EXAMPLES8 EVENTGATEWAYS: UPDATES< ARCHIVENAMEREQUIRED> MAIL_EXAMPLES@ L10N_ARCHSETB BUILD_STATUSD IGNOREDSETTINGSF ADD_PATHH RESTPATHJ SCHEDULED_TASKSL IGNOREVAL_SETTINGSN WEBSOCKET_SETTINGSP NXBTNDWR ARCH_NOARCHT L10N_SOLRARCHDATAV ARCHIVE_AVCX DETAILSZ APPLICATION_NAME\ ARCHIVE_AND_DEPLOY^ 
ARCHIVE_DS` DESELECT_ALLb REMOVE_PATH_FROM_ARCHIVEd ARCHIVENAMEf DESCRIPTIONh DEPLOYj BROWSE_SERVERl L10N_DEPLOYSTATn AR_DATp IGNOREKEY_DEBUGr BUILDWIZARD_SUMMARY_PAGETITLEt CATEGORYv AR_SEVx COLLECTION_DIRECTORYz DEBUGGING_EXAMPLES| -NO_FILES_HAVE_BEEN_EXCLUDED_FROM_THIS_ARCHIVE~ L10N_ARCHIVENAME� WATCHER� !BUILDARCHIVE_PICKFILE_DESCRIPTION� REGISTEREDWEB� IGNOREVAL_RDS� ACTIONS� L10N_DEPLOYARCHIVE� TYPE� DELETE_ARCHIVE� ARCHIVE_SET� RESTSERVICENAME� PATH� AR_MES� REGISTEREDCFX� SERVER_SETTINGS_EXAMPLES� REGISTEREDEVENTGATEWAYS� WATCHER_EXAMPLES� ARCHIVE_PDFSERVICES� WEBSERVICES� EVENTGATEWAYSETTINGS� REMOTEINSPECTION� ARCHIVE_AST� IGNOREKEY_FONT� IGNOREKEY_SETTINGS� DEPLOYSUCCESSFUL� PROBE_EXAMPLES� PICKCARLOCATION� BUILDARCHIVE� ARCHIVE_CFX� CACHING� ARCHIVE_ASB� DIRFILES_TO_EXCLUDE� IGNOREVAL_SECURE� IGNOREVAL_FONT� LOCKING� JAVA_JVM� ARCHIVE_SUMMARY� IGNOREKEY_MAIL� IGNOREKEY_MAPPING� LOGGING� L10N_ARCHSSCHED� LOCKING_EXAMPLES� DEPLOY_ARCHIVE� 'REMOVE_PATH_FROM_ARCHIVE_SECLUSION_LIST� AR_TIM� ARCHIVE_INFORMATION� NAME� ARCHIVE_WIZARD� PICKLOCATIONINSTRUCTIONS� IGNOREVAL_MAIL� L10N_CRNTARCHIVES� NEXT� CLOSE� L10N_DEPLOYSUM� PROBE� IGNOREKEY_SECURE� MAIL� SETTINGS� CLASS_PATH_OR_LIBRARY_PATH� GATEWAYSETTINGS� ARCHIVE_INFO� CLOSE_WINDOW� ARCHIVE_ERROR_CREATE� VARIABLES_EXAMPLES� REGISTEREDEVENTGATEWAYSTYPES  WEBSERVICE_SETTINGS EDIT_ARCHIVE_TIP ARCHIVE_FILE_BROWSER_PAGENAME L10N_ARCHEXCLUDE L10N_DEPLFILETITLE
 DATA_SOURCES L10N_DEPLDIRPATH DELETE_ARCHIVE_TIP DESCRIPTION_PAGE_INFORMATION ARCHIVE_APP DEPLOYWITHERRORS PDFSERVICE_SETTINGS L10N_DEPLOYLOC ARCHIVE_WEBSERVICES L10N_ARCHPRE DEPLOYEARCHIVE  ARCHIVE_ERROR_DEPLOY" PREVIOUS_CF_ARCHIVE_FILES$ BUILDWIZARD_STATUS_PAGETITLE& JAVA_WARNING_GLOBAL( IGNORED_SETTINGS_WARNING* DEPLOY_WIZARD, IGNOREVAL_MAPPING. WSDLURL0 BACK2 MUST_HAVE_SESSION_VARS4 ARCHIVES_PAGEHEADER6 JAVA_WARNING8 CODE: 
YCHBSAARCH< ARCHIVE_ARSET> JAVA_APPLETS@ CFX_TAGSB BROWSWSERVERTIPD BASIC_SECURITYF BUTTON_CANCELH PRE_RESTORE_TO_DO_LISTJ 
MONITORINGL (NO_FILES_HAVE_BEED_ADDED_TO_THIS_ARCHIVEN SERVER_SETTINGSP INCLUDED_PATHSR IGNOREKEY_SANDBOXT 
WEBSERVICEV DATEX ARCHIVE_EVENTGATEWAYSZ BUILDSUCCESSFUL\ BASIC_SECURITY_EXAMPLES^ CREATEARCHIVETIP` DIRECTORY_MAPPINGSb 
DEBUGGING1d CARFILENAME_ERRORf DRIVERh DIRECTORY_PATHj L10N_DEPLFILEl IGNOREVAL_CORBAn BUILD_ARCHIVE_TIPp DIRFILES_TO_INCLUDEr 
WEBSOCKETSt ARCHIVE_HEADERv CHARTING_EXAMPLESx RESTSERVICESz #INCLUDE_EXCLUDE_ASSOC_FILES_FOLDERS| ARCHIVE_URL_ERROR~ 
SELECT_ALL� L10N_ARCHSUM� BUILDREADLOGTIMEOUT� COLLECTIONS� UPDATES_EXAMPLES� ARCHIVE_TDLIST� L10N_ARCHINCLUDE� L10N_CREATEARCHIVE� 
PDFSERVICE� BUTTON_APPLY� BUILDWITHERRORS� DEPLOYWIZARD_STATUS_PAGETITLE� PICK_ARCHIVE_FILE� BROWSWSERVER� BUILD_ARCHIVE� IGNOREVAL_DEBUG� CUSTOMTAGPATHS� POST_RESTORE_TO_DO_LIST� L10N_ARCHPOST� DELETE_ARCHIVE_CONFIRMATION� BROWSE� PAGENAME� IGNOREKEY_RDS� CACHING_EXAMPLES� LOGICAL_PATH� IGNOREVAL_SANDBOX� EVENTGATEWAYTYPES� VERITY_COLLECTIONS� REGISTEREDPDFSERVICES� REMOTEINSPECT� L10N_ARCHJAVAAPP� CREATEARCHIVE� BUILDWIZARD_PICKFILE_PAGETITLE� ARCHIVE_TO_DO_LIST� LOGGING_EXAMPLES� EXCLUDED_PATHS� CF_MAPPINGS� NAME_AND_FILE_LOCATION� HOSTNAME� DEPLOYEARCHIVETIP� APPLETS� FILES_AND_DIRECTORIES� IGNOREKEY_DAEFDATASRC� REGISTEREDREST� L10N_ARCHDATA1Z1� BKBTNDW� CUSTOMTAGPATHS_EXAMPLES� PDFSERVICES� ARCHIVE_DIRMAP� ARCHIVE_RESTSERVICES�
 @ l
 @ o metaData Ljava/lang/Object;��	 � &coldfusion/runtime/AttributeCollection� java/lang/Object� ([Ljava/lang/Object;)V �
�� getMetadata ()Ljava/lang/Object; this Lcfarchives_en2ecfm821952295; LocalVariableTable varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage out Ljavax/servlet/jsp/JspWriter; value processingdirective1 /Lcoldfusion/tagext/lang/ProcessingDirectiveTag; mode1 I silent0  Lcoldfusion/tagext/io/SilentTag; mode0 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 t14 t15 t16 t17 LineNumberTable java/lang/Throwable <clinit> 1                 / 0    R 0    q r   ��    ��  �   "     ��   �       ��       �   Q     *+,� **+,� � **+,� � �   �        ��     ��    ��  ��  �      *� $� *L*� .N*� :-� >� @:*� D� H� M� QY6��*� V� >� X:*� D� M� YY6� /*+� ]L� `���� � :� �:	*+� dL�	� i� :
� &�p
�� � #:� m� � :� �:� p�� t**� � vYxS� |� ��   �       �  �  �  �  �  �  �  �  �  �  �  �  �  �  �          (  1  :  C  L  U  ^  g  p  y  �  �  �  �  �  �  �  �  �  �  �  �  �  �     	      $  -  6  ?  H  Q  Z  c  l  u  ~  �  �  �  �  �  �  �  �  �  �  �  �  �     
      (  2  <  F  P  Y  c  m  w  �  �  �  �  �  �  �  �  �  �  �  �  �        !  +  5  ?  I  S  ]  g  q  {  �  �  �  �  �  �  �  �  �  �  �  �  �        $  .  8  B  L  V  `  j  t  ~  �  �  �  �  �  �  �  �  �  �  �  �  	   	
  	  	  	(  	2  	<  	F  	O  	Y  	c  	m  	w  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  	�  
  
  
  
   
*  
4  
>  
G  
Q  
[  
e  
o  
x  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�  
�        "  +  5  ?  I  S  ]  g  q  {  �  �  �  �  �  �  �  �  �  �+�� ��j+�� ��a+�� ��X+�� ��O+�� ��F+�� ��=+�� ��4+�� ��++�� ��"+�� ��+�� ��+�� ��+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ��w+�� ��n+�� ��e+�� ��\+�� ��S+�� ��J+¶ ��A+Ķ ��8+ƶ ��/+ȶ ��&+ʶ ��+̶ ��+ζ ��+ж ��+Ҷ ���+Զ ���+ֶ ���+ض ���+ڶ ���+ܶ ���+޶ ���+� ���+� ���+�� ���+� ���+� ���+� ���+� ���+� ��{+� ��r+� ��i+� ��`+�� ��W+�� ��N+�� ��E+�� ��<+�� ��3+�� ��*+� ��!+ � ��+� ��+� ��+� ���+� ���+
� ���+� ���+� ���+� ���+� ���+� ���+� ���+̶ ���+� ���+� ���+� ���+� ��x+ � ��n+"� ��d+$� ��Z+&� ��P+(� ��F+*� ��<+,� ��2+.� ��(+0� ��+2� ��+4� ��
+6� �� +8� ���+:� ���+<� ���+>� ���+@� ���+B� ���+D� ���+F� ���+H� ���+J� ���+L� ���+N� ���+P� ��~+R� ��t+�� ��k+T� ��a+V� ��W+X� ��M+Z� ��C+N� ��9+\� ��/+^� ��%+`� ��+b� ��+d� ��+f� ���+h� ���+j� ���+l� ���+n� ���+p� ���+r� ���+t� ���+v� ���+x� ���+z� ���+|� ���+~� ���+�� ��{+�� ��q+�� ��g+�� ��]+�� ��S+�� ��I+�� ��?+�� ��5+�� ��++�� ��!+�� ��+�� ��+�� ��+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+�� ���+� ���+�� ���+�� ���+�� ���+�� ���+�� ��x+�� ��n+�� ��d+�� ��Z+�� ��P+�� ��F+�� ��<+�� ��2+¶ ��(+Ķ ��+ƶ ��+ȶ ��
+ʶ �� +̶ ���+ζ ���+ж ���+� ���+�� ���+�� ���+�� ���+� ���+Ҷ ���+Զ ���+ֶ ���+ض ���+�� ���+ڶ ��w+ܶ ��m+Ҷ ��c+޶ ��Y+� ��O+� ��E+� ��;+X� ��1+� ��'+� ��+� ��+� ��	+� �� �+� �� �+� �� �+�� �� �+�� �� �+ֶ �� �+�� �� �+�� �� �+�� �� �+�� �� �+ � �� �+� �� �+� �� �+� �� ~+z� �� t+� �� j+
� �� `+� �� V+� �� L+� �� B+� �� 8+� �� .+� �� $+� �� +� �� *� �"� � `��b� i� :� #�� � #:�� � :� �:���  \ q t t y t Q � � � � � Q � � � � � � � � � � � , �� ������ , �� ����������� �   �   ��    ��   ��    + ,   ��                � 	  � 
  	   
   �   �         �   � � 7  �  �  �  � ` i r { � � !� #� (� *� ,� .� 0� 2� 9� ;� =� ?� A C E G I& K/ M8 OA QJ SS U\ We Yn [w ]� _� a� c� e� g� i� k� m� o� q� s� u� w� y� { }  �" �+ �4 �= �F �O �X �a �j �s �| �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �  �* �3 �= �G �Q �[ �e �o �y �� �� �� �� �� �� �� �� �� �� �� �� �� � � � �# �- �7 �A �K �U �_ �h �r �|����	���������	!	#	&	&(	0+	:-	D0	N2	X5	b7	l9	v;	�=	�?	�A	�C	�E	�G	�I	�K	�M	�O	�Q	�S	�U
W
Y
[
 ]
)_
3a
=c
Ge
Qg
[i
ek
om
yo
�q
�s
�u
�w
�y
�{
�}
�
��
��
��
��
�����!�+�5�?�I�R�\�f�p�z������������������������������#�-�7�A�K�U�_�i�s�}��������������������������� �           �   #     *� 
�   �       ��      �  �    q2� 8� :T� 8� V�$Y�%'|�+-y�+/�+1 ��+3 ��+5 ζ+7 ��+9 ��+;&�+= ��+?�+A ��+Cs�+E ��+G ɶ+IW�+Ki�+M*�+O Զ+Q ��+S ��+U�+W ��+Y ��+[C�+]�+_�+aK�+c<�+eZ�+g�+i`�+k ��+mm�+o ��+q ��+s Ѷ+u ��+wB�+y ��+{ ��+} ��+_�+��+� ��+� ��+� ��+� ն+��+��+�Q�+��+�j�+�h�+�@�+� ¶+�I�+�t�+�O�+� ��+�c�+�,�+�(�+� ��+�n�+� ϶+� ʶ+� ��+� ��+� ��+��+�H�+�u�+�l�+�!�+� ׶+� ٶ+�~�+�{�+�9�+� Ӷ+� Ҷ+� ��+�o�+��+� ��+�^�+� ��+�2�+�>�+��+� ��+� ܶ+��+� ��+� ��+� ��+� ��+� Ͷ+� ��+�+�+�J�+�R�+��+�1�+� Ķ+�z�+P�+ ��+�+U�+	\�+ ��+$�+ ��+�+a�+:�+ Ƕ+ ��+ ��+ ��+ ��+!
�+# ö+%�+' ��+)b�++ ݶ+-�+/ ۶+1 ��+3 ��+5�+7�+9}�+;?�+=k�+?r�+A7�+C"�+E	�+Gw�+IS�+K/�+M ��+O[�+Q4�+SY�+U ̶+W ��+Yp�+[N�+] ��+_x�+a�+c#�+e ��+g ƶ+iM�+kG�+m ��+o ض+q�+s �+u ��+w�+y ��+{-�+}V�+ ȶ+�;�+�A�+� ��+�%�+� ��+� ��+�E�+��+� ��+�T�+� Ŷ+� ��+� ��+��+��+� ڶ+� ��+�0�+� ��+��+�X�+� ��+� ˶+�v�+�F�+Zq�+� ֶ+�'�+�6�+�d�+� ��+�=�+��+� ��+�8�+� ��+�]�+�5�+�3�+�e�+��+�)�+��+� ж+�g�+�L�+� ��+� ��+�.�+�D�+�f�+� t��Y�����   �      q��             