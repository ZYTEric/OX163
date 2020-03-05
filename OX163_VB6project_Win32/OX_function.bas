Attribute VB_Name = "OX_function"
'-------------------------------------------------------------------------
'--------------------------------OX163���ú���----------------------------
'-------------------------------------------------------------------------

Private Declare Function InternetSetOption Lib "wininet.dll" Alias "InternetSetOptionA" (ByVal hInternet As Long, ByVal dwOption As Long, ByRef lpBuffer As Any, ByVal dwBufferLength As Long) As Long
Private Declare Function DeleteUrlCacheEntry Lib "wininet.dll" Alias "DeleteUrlCacheEntryA" (ByVal lpszUrlName As String) As Long 'ɾ�����ӻ���,unicode�ַ�����ʹ��UTF8EncodeURI����
Private Declare Function GetUrlCacheEntryInfo Lib "wininet.dll" Alias "GetUrlCacheEntryInfoA" (ByVal lpszUrlName As String, lpCacheEntryInfo As Any, lpdwCacheEntryInfoBufferSize As Long) As Long

Private Type INTERNET_PROXY_INFO
    dwAccessType    As Long
    lpszProxy      As String
    lpszProxyBypass As String
End Type

Private Const INTERNET_OPTION_PROXY = 38
Private Const INTERNET_OPTION_PROXY_USERNAME = 43
Private Const INTERNET_OPTION_PROXY_PASSWORD = 44
Private Const INTERNET_OPTION_SETTINGS_CHANGED = 39

Private Const INTERNET_OPEN_TYPE_PRECONFIG = 0
Private Const INTERNET_OPEN_TYPE_DIRECT = 1
Private Const INTERNET_OPEN_TYPE_PROXY = 3
Private Const INTERNET_OPEN_TYPE_PRECONFIG_WITH_NO_AUTOPROXY = 4

Dim options As INTERNET_PROXY_INFO

Public Enum OX_ntimeTypes
    OX_ntime_Now
    OX_ntime_Time
    OX_ntime_Timer
End Enum

Public Enum OX_ntimeFormat
    OX_ntime_Default
    OX_ntime_Hex
    OX_ntime_int
End Enum

Public Function OX_DeleteUrlCacheEntryW(ByRef DUCE_Url_String As String) As Long
    '1=delete OK; 0=else status
    OX_DeleteUrlCacheEntryW = DeleteUrlCacheEntry(UTF8EncodeURI(DUCE_Url_String))
End Function

Public Function OX_Url_InCacheW(ByVal DUCE_Url_String As String) As Boolean
     If GetUrlCacheEntryInfo(UTF8EncodeURI(DUCE_Url_String), ByVal 0&, 0) = 0 Then
         OX_Url_InCacheW = (err.LastDllError = 122)
     End If
End Function
'-------------------------------------------------------------------------
'�����������������ô������������-----------------------------------------
Public Sub Proxy_set()
    '�����һ�������ж�
    Static star_up_count As Boolean
    
    Dim inf As INTERNET_PROXY_INFO
    Dim fast_lab As String
    Form1.fast_down.Proxy = ""
    Form1.fast_down.username = ""
    Form1.fast_down.password = ""
    Form1.Proxy_img(0).Visible = False
    Form1.Proxy_img(1).Visible = False
    Form1.Proxy_img(2).Visible = False
    Form1.fast_set_PA.Checked = False
    Form1.fast_set_PB.Checked = False
    fast_lab = ""
    Form1.StatusBar.Panels(4).Text = "��������"
    
    Select Case sysSet.proxy_A_type
    Case 1
        
        Form1.fast_down.AccessType = icDirect
        
        inf.dwAccessType = INTERNET_OPEN_TYPE_DIRECT
        inf.lpszProxy = ""
        inf.lpszProxyBypass = ""
        Call InternetSetOption(0, INTERNET_OPTION_PROXY, inf, LenB(inf))
        Call InternetSetOption(0, INTERNET_OPTION_SETTINGS_CHANGED, "", 0)
        
    Case 2
        sysSet.proxy_A = Trim(Replace(Replace(sysSet.proxy_A, Chr(10), ""), Chr(13), ""))
        If Len(sysSet.proxy_A) > 4 Then
            
            If sysSet.web_proxy = 1 Then
                inf.dwAccessType = INTERNET_OPEN_TYPE_PROXY
                inf.lpszProxy = sysSet.proxy_A
                inf.lpszProxyBypass = ""
                Call InternetSetOption(0, INTERNET_OPTION_PROXY, inf, LenB(inf))
                Call InternetSetOption(0, INTERNET_OPTION_SETTINGS_CHANGED, "", 0)
            End If
            
            Form1.fast_down.AccessType = icNamedProxy
            Form1.fast_down.Proxy = sysSet.proxy_A
            
            sysSet.proxy_A_user = Trim(Replace(Replace(sysSet.proxy_A_user, Chr(10), ""), Chr(13), ""))
            sysSet.proxy_A_pw = Trim(Replace(Replace(sysSet.proxy_A_pw, Chr(10), ""), Chr(13), ""))
            
            If Len(sysSet.proxy_A_user) > 0 Then
                Form1.fast_down.username = sysSet.proxy_A_user
                If sysSet.web_proxy = 1 Then Call InternetSetOption(0, INTERNET_OPTION_PROXY_USERNAME, sysSet.proxy_A_user, LenB(sysSet.proxy_A_user))
            End If
            If Len(sysSet.proxy_A_pw) > 0 Then
                Form1.fast_down.password = sysSet.proxy_A_pw
                If sysSet.web_proxy = 1 Then Call InternetSetOption(0, INTERNET_OPTION_PROXY_PASSWORD, sysSet.proxy_A_user, LenB(sysSet.proxy_A_user))
            End If
            
            
        Else
            Form1.fast_down.AccessType = icUseDefault
        End If
        
    Case Else
        '�����һ������,ʹ��IE��������²�����
        If sysSet.web_proxy = 1 And star_up_count = True Then
            inf.dwAccessType = INTERNET_OPEN_TYPE_DIRECT
            inf.lpszProxy = ""
            inf.lpszProxyBypass = ""
            
            Call InternetSetOption(0, INTERNET_OPTION_PROXY, inf, LenB(inf))
            Call InternetSetOption(0, INTERNET_OPTION_SETTINGS_CHANGED, "", 0)
        End If
        
        Form1.fast_down.AccessType = icUseDefault
        
    End Select
    
    If sysSet.web_proxy = 0 And star_up_count = True Then
        inf.dwAccessType = INTERNET_OPEN_TYPE_DIRECT
        inf.lpszProxy = ""
        inf.lpszProxyBypass = ""
        
        Call InternetSetOption(0, INTERNET_OPTION_PROXY, inf, LenB(inf))
        Call InternetSetOption(0, INTERNET_OPTION_SETTINGS_CHANGED, "", 0)
    End If
    
    '-------------------------------------------------------------------------
    Form1.Inet1.Proxy = ""
    Form1.Inet1.username = ""
    Form1.Inet1.password = ""
    Form1.check_header.Proxy = ""
    Form1.check_header.username = ""
    Form1.check_header.password = ""
    
    Select Case sysSet.proxy_B_type
    Case 1 'icDirect
        Form1.Inet1.AccessType = icDirect
        Form1.check_header.AccessType = icDirect
    Case 2 'icNamedProxy
        sysSet.proxy_B = Trim(Replace(Replace(sysSet.proxy_B, Chr(10), ""), Chr(13), ""))
        If Len(sysSet.proxy_B) > 4 Then
            Form1.Inet1.AccessType = icNamedProxy
            Form1.Inet1.Proxy = sysSet.proxy_B
            Form1.check_header.AccessType = icNamedProxy
            Form1.check_header.Proxy = sysSet.proxy_B
            sysSet.proxy_B_user = Trim(Replace(Replace(sysSet.proxy_B_user, Chr(10), ""), Chr(13), ""))
            sysSet.proxy_B_pw = Trim(Replace(Replace(sysSet.proxy_B_pw, Chr(10), ""), Chr(13), ""))
            If Len(sysSet.proxy_B_user) > 0 Then Form1.Inet1.username = sysSet.proxy_B_user: Form1.check_header.username = sysSet.proxy_B_user
            If Len(sysSet.proxy_B_pw) > 0 Then Form1.Inet1.password = sysSet.proxy_B_pw: Form1.check_header.password = sysSet.proxy_B_pw
        Else 'icUseDefault
            Form1.Inet1.AccessType = icUseDefault
            Form1.check_header.AccessType = icUseDefault
        End If
        
    Case Else
        Form1.Inet1.AccessType = icUseDefault
        Form1.check_header.AccessType = icUseDefault
    End Select
    
    If sysSet.proxy_A_type = 2 Then Form1.fast_set_PA.Checked = True: fast_lab = "A"
    If sysSet.proxy_B_type = 2 Then Form1.fast_set_PB.Checked = True: fast_lab = fast_lab & "B"
    If fast_lab <> "" Then Form1.StatusBar.Panels(4).Text = "����/����" & fast_lab
    If star_up_count = False Then star_up_count = True
End Sub

'-------------------------------------------------------------------------
'debug�����ú���----------------------------------------------------------

Public Sub OX_Debug_File(ByVal Debug_file_String As String)
    If Dir(App_path & "\debug", vbDirectory) = "" Then
        MkDir App_path & "\debug"
    End If
    Dim FileNumber
    FileNumber = FreeFile ' ȡ��δʹ�õ��ļ��š�
    Open App_path & "\debug\OX163_Debug_" & Int(Timer() * 1000000) & ".txt" For Output As #FileNumber ' �����ļ�����
    Print #FileNumber, Debug_file_String ' ����ı����ļ��С�
    Close #FileNumber   ' �ر��ļ���
End Sub

'-------------------------------------------------------------------------
'����Ĭ������-------------------------------------------------------------
Public Function OX_Default_Setting() As sysSetting
    '�汾
    OX_Default_Setting.ver = ver_info
    '���·�����
    OX_Default_Setting.update_host = "http://shj.ugschina.com/163/" 'Ĭ�ϲ���
    '��������
    OX_Default_Setting.downloadblock = 10240
    '������
    OX_Default_Setting.autocheck = True
    'ִ��ʱ�˳�ѯ��
    OX_Default_Setting.askquit = True
    'ִ��ʱ��ʾ�б�
    OX_Default_Setting.listshow = False
    '���浽Ĭ���ļ���
    OX_Default_Setting.savedef = True
    '���غ���ļ���
    OX_Default_Setting.openfloder = True
    '�������ʱ���ٴ�ѯ������
    OX_Default_Setting.change_psw = True
    '����������ǰ��
    OX_Default_Setting.always_top = False
    '��ֹ��������
    OX_Default_Setting.new_ie_win = True
    '����������OX163��
    OX_Default_Setting.ox163_ie_win = True
    '���ӳ�ʱ
    OX_Default_Setting.time_out = 30
    '���Դ���
    OX_Default_Setting.retry_times = 5
    '��������б�ʽ
    OX_Default_Setting.list_type = 1
    '�Զ�У��αͼ
    OX_Default_Setting.fix_rar = 1
    'αͼ�ļ����б�
    OX_Default_Setting.fix_rar_name = "RAR|ZIP|7Z|PNG|BMP"
    'ϵͳ����
    OX_Default_Setting.sysTray = False
    '�Ƿ���Ĭ��·��
    OX_Default_Setting.def_path_tf = False
    'Ĭ��·��
    OX_Default_Setting.def_path = ""
    '�ⲿ�ű�ִ�з�ʽ
    OX_Default_Setting.include_script = "delay"
    '�ű��б�
    OX_Default_Setting.include_scriptlist = "sys_163,1|sys_include,1"
    'ctrl+c�Ȳ����趨
    OX_Default_Setting.list_copy = True
    '�������ļ��Ƚ�
    OX_Default_Setting.file_compare = 1
    '�ײ���Ϣ��
    OX_Default_Setting.bottom_StatusBar = True
    '��163�����֤�����
    OX_Default_Setting.new163passcode_def(0) = "wehi"
    OX_Default_Setting.new163passcode_def(1) = "1530930"
    OX_Default_Setting.new163passcode_def(2) = "asd"
    '�б���Ƿ�ȫѡ
    OX_Default_Setting.check_all = True
    '���������A for start fast
    OX_Default_Setting.proxy_A = ""
    OX_Default_Setting.proxy_A_user = ""
    OX_Default_Setting.proxy_A_pw = ""
    '���������B for inet1 and header ckeck
    OX_Default_Setting.proxy_B = ""
    OX_Default_Setting.proxy_B_user = ""
    OX_Default_Setting.proxy_B_pw = ""
    '���������ʹ�÷�ʽ 0-icUseDefault,1-icDirect,2-icNamedProxy
    OX_Default_Setting.proxy_A_type = 0
    OX_Default_Setting.proxy_B_type = 0
    '���������AӦ�������������
    OX_Default_Setting.web_proxy = 1
    '����ʱ������URLΪ�����ļ���
    OX_Default_Setting.url_folder = False
    'ʹ����163��������������
    OX_Default_Setting.new163pass_rules = True
    'Unicode�ļ�/�ļ����ַ�����
    OX_Default_Setting.Unicode_File = 0
    OX_Default_Setting.Unicode_Str = 0
    'IE��ʷ��������
    OX_Default_Setting.DelCache_BefDL = 0
    OX_Default_Setting.DelCache_AftDL = 0
    'httpͷǿ�Ʒ���no-cache
    Cache_no_cache = 0
    'httpͷǿ�Ʒ���no-store
    Cache_no_store = 0
    '�û�����(User-Agent)
    Customize_UA = OX_UA_Const(0)
    '����Cache_no_cache Cache_no_store Customize_UA���HTTPͷ��Ϣ
    OX_Default_Setting.OX_HTTP_Head = "User-Agent: " & OX_UA_Const(0)
    '�б���ק����
    OX_Default_Setting.OX_List_Drag = False
    '�ضϹ����ļ���
    OX_Default_Setting.OX_Cut_Filelen = True
End Function


'-------------------------------------------------------------------------
'��������д��INI----------------------------------------------------------
Public Function OX_WriteIni_Setting(ByRef OX_SysSet As sysSetting)
    On Error Resume Next
    OX_Global_Err_Num = 0
    '-----[maincenter]-----
    '�汾
    WriteIniStr "maincenter", "ver", ver_info
    '���·�����
    WriteIniStr "maincenter", "update_host", OX_SysSet.update_host
    '��������
    WriteIniStr "maincenter", "downloadblock", OX_SysSet.downloadblock
    '������
    WriteIniTF "maincenter", "autocheck", OX_SysSet.autocheck
    'ִ��ʱ�˳�ѯ��
    WriteIniTF "maincenter", "askquit", OX_SysSet.askquit
    'ִ��ʱ��ʾ�б�
    WriteIniTF "maincenter", "listshow", OX_SysSet.listshow
    '���浽Ĭ���ļ���
    WriteIniTF "maincenter", "savedef", OX_SysSet.savedef
    '���غ���ļ���
    WriteIniTF "maincenter", "openfloder", OX_SysSet.openfloder
    '�������ʱ���ٴ�ѯ������
    WriteIniTF "maincenter", "change_psw", OX_SysSet.change_psw
    '����������ǰ��
    WriteIniTF "maincenter", "always_top", OX_SysSet.always_top
    '��ֹ��������
    WriteIniTF "maincenter", "new_ie_win", OX_SysSet.new_ie_win
    '����������OX163��
    WriteIniTF "maincenter", "ox163_ie_win", OX_SysSet.ox163_ie_win
    '���ӳ�ʱ
    WriteIniStr "maincenter", "time_out", OX_SysSet.time_out
    '���Դ���
    WriteIniStr "maincenter", "retry_times", OX_SysSet.retry_times
    '��������б�ʽ
    WriteIniStr "maincenter", "list_type", OX_SysSet.list_type
    '�Զ�У��αͼ
    WriteIniStr "maincenter", "fix_rar", OX_SysSet.fix_rar
    'αͼ�ļ����б�
    WriteIniStr "maincenter", "fix_rar_name", OX_SysSet.fix_rar_name
    'ϵͳ����
    WriteIniTF "maincenter", "sysTray", OX_SysSet.sysTray
    '�Ƿ���Ĭ��·��
    WriteIniTF "maincenter", "def_path_tf", OX_SysSet.def_path_tf
    'Ĭ��·��
    WriteIniStr "maincenter", "def_path", OX_SysSet.def_path
    '�ⲿ�ű�ִ�з�ʽ
    WriteIniStr "maincenter", "include_script", OX_SysSet.include_script
    '�ű��б�
    WriteIniStr "maincenter", "include_scriptList", OX_SysSet.include_scriptlist
    'ctrl+c�Ȳ����趨
    WriteIniTF "maincenter", "list_copy", OX_SysSet.list_copy
    '�������ļ��Ƚ�
    WriteIniStr "maincenter", "file_compare", OX_SysSet.file_compare
    '�ײ���Ϣ��
    WriteIniTF "maincenter", "bottom_StatusBar", OX_SysSet.bottom_StatusBar
    '��163�����֤�����
    WriteIniStr "maincenter", "new163passcode_user", OX_SysSet.new163passcode_def(0)
    WriteIniStr "maincenter", "new163passcode_album", OX_SysSet.new163passcode_def(1)
    WriteIniStr "maincenter", "new163passcode_pw", OX_SysSet.new163passcode_def(2)
    '�б���Ƿ�ȫѡ
    WriteIniTF "maincenter", "check_all", OX_SysSet.check_all
    '����ʱ������URLΪ�����ļ���
    WriteIniTF "maincenter", "url_folder", OX_SysSet.url_folder
    'ʹ����163��������������
    WriteIniTF "maincenter", "new163pass_rules", OX_SysSet.new163pass_rules
    'Unicode�ļ�/�ļ����ַ�����
    WriteIniStr "maincenter", "Unicode_File", OX_SysSet.Unicode_File
    WriteIniStr "maincenter", "Unicode_Str", OX_SysSet.Unicode_Str
    'IE��ʷ��������
    WriteIniStr "maincenter", "DelCache_BefDL", OX_SysSet.DelCache_BefDL
    WriteIniStr "maincenter", "DelCache_AftDL", OX_SysSet.DelCache_AftDL
    'httpͷǿ�Ʒ���no-cache
    WriteIniStr "maincenter", "Cache_no_cache", OX_SysSet.Cache_no_cache
    'httpͷǿ�Ʒ���no-cstore
    WriteIniStr "maincenter", "Cache_no_store", OX_SysSet.Cache_no_store
    '�û�����(User-Agent)
    WriteIniStr "maincenter", "Customize_UA", OX_SysSet.Customize_UA
    '�б���ק����
    WriteIniTF "maincenter", "OX_List_Drag", OX_SysSet.OX_List_Drag
    '�ضϹ����ļ���
    WriteIniTF "maincenter", "OX_Cut_Filelen", OX_SysSet.OX_Cut_Filelen
    
    '-----[proxyset]-----
    '���������ʹ�÷�ʽ 0-icUseDefault,1-icDirect,2-icNamedProxy
    Select Case OX_SysSet.proxy_A_type
    Case 1
        WriteIniStr "proxyset", "proxy_A_type", "icDirect"
    Case 2
        WriteIniStr "proxyset", "proxy_A_type", "icNamedProxy"
    Case Else
        WriteIniStr "proxyset", "proxy_A_type", "icUseDefault"
    End Select
    
    Select Case OX_SysSet.proxy_B_type
    Case 1
        WriteIniStr "proxyset", "proxy_B_type", "icDirect"
    Case 2
        WriteIniStr "proxyset", "proxy_B_type", "icNamedProxy"
    Case Else
        WriteIniStr "proxyset", "proxy_B_type", "icUseDefault"
    End Select
    '���������A for start fast
    WriteIniStr "proxyset", "proxy_A", OX_SysSet.proxy_A
    WriteIniStr "proxyset", "proxy_A_user", OX_SysSet.proxy_A_user
    WriteIniStr "proxyset", "proxy_A_pw", OX_SysSet.proxy_A_pw
    '���������B for inet1 and header ckeck
    WriteIniStr "proxyset", "proxy_B", OX_SysSet.proxy_B
    WriteIniStr "proxyset", "proxy_B_user", OX_SysSet.proxy_B_user
    WriteIniStr "proxyset", "proxy_B_pw", OX_SysSet.proxy_B_pw
    '���������AӦ�������������
    WriteIniStr "proxyset", "web_proxy", OX_SysSet.web_proxy
    
    '-----end-----
    If OX_Global_Err_Num <> 0 Then
        OX_WriteIni_Setting = OX_Global_Err_Num
    Else
        OX_WriteIni_Setting = 0
    End If
End Function

Public Function OX_GetIni_Setting(ByRef OX_SysSet As sysSetting)
    On Error Resume Next
    OX_Global_Err_Num = 0
    
    OX_SysSet.update_host = GetIniStr("maincenter", "update_host")
    If OX_SysSet.update_host = "" Then OX_SysSet.update_host = "http://shj.ugschina.com/163/"
    
    OX_SysSet.downloadblock = CLng(GetIniStr("maincenter", "downloadblock"))
    OX_SysSet.time_out = CInt(GetIniStr("maincenter", "time_out"))
    OX_SysSet.retry_times = CInt(GetIniStr("maincenter", "retry_times"))
    
    OX_SysSet.list_type = CByte(GetIniStr("maincenter", "list_type"))
    OX_SysSet.fix_rar = CByte(GetIniStr("maincenter", "fix_rar"))
    OX_SysSet.fix_rar_name = Trim(GetIniStr("maincenter", "fix_rar_name"))
    
    OX_SysSet.Unicode_File = CByte(GetIniStr("maincenter", "Unicode_File"))
    OX_SysSet.Unicode_Str = CByte(GetIniStr("maincenter", "Unicode_Str"))
    
    OX_SysSet.DelCache_BefDL = CByte(GetIniStr("maincenter", "DelCache_BefDL"))
    OX_SysSet.DelCache_AftDL = CByte(GetIniStr("maincenter", "DelCache_AftDL"))
    
    OX_SysSet.Cache_no_cache = CByte(GetIniStr("maincenter", "Cache_no_cache"))
    OX_SysSet.Cache_no_store = CByte(GetIniStr("maincenter", "Cache_no_store"))
    
    OX_SysSet.include_script = GetIniStr("maincenter", "include_script")
    OX_SysSet.include_scriptlist = OX_Check_include_scriptlist(GetIniStr("maincenter", "include_scriptList"), False)
    
    OX_SysSet.new163passcode_def(0) = GetIniStr("maincenter", "new163passcode_user")
    OX_SysSet.new163passcode_def(1) = GetIniStr("maincenter", "new163passcode_album")
    OX_SysSet.new163passcode_def(2) = GetIniStr("maincenter", "new163passcode_pw")
    
    If OX_SysSet.new163passcode_def(0) = "" Or OX_SysSet.new163passcode_def(1) = "" Or OX_SysSet.new163passcode_def(2) = "" Then
        OX_SysSet.new163passcode_def(0) = "wehi"
        OX_SysSet.new163passcode_def(1) = "1530930"
        OX_SysSet.new163passcode_def(2) = "asd"
    End If
    
    OX_SysSet.autocheck = GetIniTF("maincenter", "autocheck")
    OX_SysSet.askquit = GetIniTF("maincenter", "askquit")
    OX_SysSet.listshow = GetIniTF("maincenter", "listshow")
    OX_SysSet.savedef = GetIniTF("maincenter", "savedef")
    OX_SysSet.openfloder = GetIniTF("maincenter", "openfloder")
    OX_SysSet.change_psw = GetIniTF("maincenter", "change_psw")
    OX_SysSet.always_top = GetIniTF("maincenter", "always_top")
    OX_SysSet.new_ie_win = GetIniTF("maincenter", "new_ie_win")
    OX_SysSet.ox163_ie_win = GetIniTF("maincenter", "ox163_ie_win")
    OX_SysSet.sysTray = GetIniTF("maincenter", "sysTray")
    OX_SysSet.OX_List_Drag = GetIniTF("maincenter", "OX_List_Drag")
    OX_SysSet.OX_Cut_Filelen = GetIniTF("maincenter", "OX_Cut_Filelen")
    
    OX_SysSet.new163pass_rules = GetIniTF("maincenter", "new163pass_rules")
    
    OX_SysSet.list_copy = GetIniTF("maincenter", "list_copy")
    
    OX_SysSet.file_compare = CInt(GetIniStr("maincenter", "file_compare"))
    
    OX_SysSet.def_path_tf = GetIniTF("maincenter", "def_path_tf")

    If sysSet.def_path_tf = True Then
        OX_SysSet.def_path = GetIniStr("maincenter", "def_path")
        If Mid(sysSet.def_path, 2, 2) <> ":\" And Len(sysSet.def_path) > 2 Then GoTo reset_path
        If Right(sysSet.def_path, 1) = "\" Then sysSet.def_path = Mid(sysSet.def_path, 1, Len(sysSet.def_path) - 1): WriteIniStr "maincenter", "def_path", sysSet.def_path
        If (GetFileAttributesAPI(sysSet.def_path) = -1) Then GoTo reset_path
    Else
reset_path:
        sysSet.def_path_tf = False
        OX_SysSet.def_path = ""
    End If
    
    OX_SysSet.bottom_StatusBar = GetIniTF("maincenter", "bottom_StatusBar")
    
    OX_SysSet.check_all = GetIniTF("maincenter", "check_all")
    
    OX_SysSet.url_folder = GetIniTF("maincenter", "url_folder")
    
    OX_SysSet.Customize_UA = Trim(GetIniStr("maincenter", "Customize_UA"))
    If OX_SysSet.Customize_UA = "" Then OX_SysSet.Customize_UA = OX_UA_Const(0)
    
    OX_SysSet.proxy_A = GetIniStr("proxyset", "proxy_A_type")
    Select Case OX_SysSet.proxy_A
    Case "icDirect"
        OX_SysSet.proxy_A_type = 1
    Case "icNamedProxy"
        OX_SysSet.proxy_A_type = 2
    Case Else
        OX_SysSet.proxy_A_type = 0
    End Select
    
    OX_SysSet.proxy_B = GetIniStr("proxyset", "proxy_B_type")
    Select Case OX_SysSet.proxy_B
    Case "icDirect"
        OX_SysSet.proxy_B_type = 1
    Case "icNamedProxy"
        OX_SysSet.proxy_B_type = 2
    Case Else
        OX_SysSet.proxy_B_type = 0
    End Select
    
    OX_SysSet.web_proxy = GetIniStr("proxyset", "web_proxy")
    Select Case OX_SysSet.web_proxy
    Case "0"
        OX_SysSet.web_proxy = 0
    Case Else
        OX_SysSet.web_proxy = 1
    End Select
    
    OX_SysSet.proxy_A = Trim(GetIniStr("proxyset", "proxy_A"))
    OX_SysSet.proxy_A_user = Trim(GetIniStr("proxyset", "proxy_A_user"))
    OX_SysSet.proxy_A_pw = GetIniStr("proxyset", "proxy_A_pw")
    OX_SysSet.proxy_B = Trim(GetIniStr("proxyset", "proxy_B"))
    OX_SysSet.proxy_B_user = Trim(GetIniStr("proxyset", "proxy_B_user"))
    OX_SysSet.proxy_B_pw = GetIniStr("proxyset", "proxy_B_pw")
    OX_SysSet.ver = ver_info
    
    If CInt(GetIniStr("maincenter", "ver")) <> ver_info Then
        OX_GetIni_Setting = OX_WriteIni_Setting(OX_SysSet)
    End If
    
    If OX_Global_Err_Num <> 0 Then
        OX_GetIni_Setting = OX_Global_Err_Num
        OX_Global_Err_Num = 0
    Else
        OX_GetIni_Setting = 0
    End If
    
    '����Cache_no_cache Cache_no_store Customize_UA���HTTPͷ��Ϣ
    OX_SysSet.OX_HTTP_Head = IIf(Trim(OX_SysSet.Customize_UA) <> "", "User-Agent: " & OX_SysSet.Customize_UA, OX_UA_Const(0)) & IIf(OX_SysSet.Cache_no_cache = 1, vbCrLf & "Pragma: no-cache", "") & IIf(OX_SysSet.Cache_no_store = 1, vbCrLf & "Cache-Control: no-store", "")
End Function

'-------------------------------------------------------------------------
'�����ı��ļ������Զ����ַ�����-------------------------------------------

Public Function load_normal_file(file_name, unicode_charset) As String
    On Error Resume Next
    Dim fileline As String
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set file = fso.OpenTextFile(file_name, 1, False, unicode_charset)
    load_normal_file = file.Readall
    file.Close
    Set file = Nothing
    Set fso = Nothing
End Function

'-------------------------------------------------------------------------
'����ANSI�ű�������Ĭ��ʹ�ã�---------------------------------------------

Public Function load_Script(file_name) As String
    On Error Resume Next
    
    Dim ADO_Stream As Object
    Set ADO_Stream = CreateObject("ADODB.Stream")
    
    With ADO_Stream
        .Type = 2 '1-������ 2-�ı�
        .Charset = "GB2312"
        .Open
        .LoadFromFile file_name
        load_Script = .ReadText
        .Close
    End With
    Set ADO_Stream = Nothing
    
    '    Dim fileline As String
    '    Dim fso As Object, file As Object
    '    Set fso = CreateObject("Scripting.FileSystemObject")
    '    Set file = fso.OpenTextFile(file_name, 1, False, 0)
    '    load_Script = file.Readall
    '    file.Close
    '    Set fso = Nothing
    
    '    Open file_name For Input As #5
    '    Do While Not EOF(5)
    '    Line Input #5, fileline
    '    load_Script = load_Script + fileline & vbCrLf
    '    DoEvents
    '    Loop
    '    Close #5
    '    load_Script = Left(load_Script, Len(load_Script) - 2)
End Function

'-------------------------------------------------------------------------
'��ʽ��ͼƬ�ߴ��ı���1920*1080��------------------------------------------

Public Function fix_Pix(ByVal pix_str) As String
    fix_Pix = ""
    pix_str = Split(pix_str, "x")
    For i = 0 To UBound(pix_str)
        DoEvents
        fix_Pix = fix_Pix & Format$(Int(pix_str(i)), "0000") & "x"
    Next i
    fix_Pix = Mid(fix_Pix, 1, Len(fix_Pix) - 1)
End Function

'-------------------------------------------------------------------------
'������Ƿ�Ϊ�ļ���-------------------------------------------------------

Public Function is_fileName(ByVal file_name As String) As Boolean
    is_fileName = True
    If InStr(file_name, Chr(92)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(47)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(34)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(63)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(58)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(42)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(60)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(62)) > 0 Then is_fileName = False: Exit Function
    If InStr(file_name, Chr(124)) > 0 Then is_fileName = False: Exit Function
    
    If Left(file_name, 1) = "." Then is_fileName = False: Exit Function
    If Right(file_name, 1) = "." Then is_fileName = False: Exit Function
End Function

'-------------------------------------------------------------------------
'��url��ʽ��Ϊ�ɱ�����ļ�����ʽ------------------------------------------

Public Function rename_URL(ByVal old_url)
    '�ܣ���������������
    '\/"?:*<>|
    If IsNull(old_url) Or IsEmpty(old_url) Then
        rename_URL = ""
        Exit Function
    End If
    If Left(old_url, 1) = "." Then old_url = Mid(old_url, 2)
    
    code_E = Array("��", "��", Chr(-23646), "��", "��", "��", "��", "��", "��")
    code_F = Array(Chr(92), Chr(47), Chr(34), Chr(63), Chr(58), Chr(42), Chr(60), Chr(62), Chr(124))
    
    rename_URL = old_url
    
    For i = 0 To 8
        rename_URL = Replace(rename_URL, code_F(i), code_E(i))
    Next
    
End Function

'-------------------------------------------------------------------------
'��url�ļ�����ʽ��ʽ��Ϊ����url-------------------------------------------

Public Function rename_URLfile(ByVal old_url)
    If IsNull(old_url) Or IsEmpty(old_url) Then
        rename_URLfile = ""
        Exit Function
    End If
    If Left(old_url, 1) = "." Then old_url = Mid(old_url, 2)
    
    code_E = Array("��", "��", Chr(-23646), "��", "��", "��", "��", "��", "��")
    code_F = Array(Chr(92), Chr(47), Chr(34), Chr(63), Chr(58), Chr(42), Chr(60), Chr(62), Chr(124))
    
    rename_URLfile = old_url
    
    For i = 0 To 8
        rename_URLfile = Replace(rename_URLfile, code_E(i), code_F(i))
    Next
    
End Function

'-------------------------------------------------------------------------
'ȡ���ļ������ʽ---------------------------------------------------------

Public Function GetEncoding(ByVal fileName) As String
    On Error GoTo err
    
    Dim fBytes(1) As Byte, freeNum As Integer
    freeNum = FreeFile
    
    Open fileName For Binary Access Read As #freeNum
    Get #freeNum, , fBytes(0)
    Get #freeNum, , fBytes(1)
    Close #freeNum
    
    If fBytes(0) = &HFF And fBytes(1) = &HFE Then GetEncoding = "Unicode"
    If fBytes(0) = &HFE And fBytes(1) = &HFF Then GetEncoding = "UnicodeBigEndian"
    If fBytes(0) = &HEF And fBytes(1) = &HBB Then GetEncoding = "UTF-8"
err:
End Function
'-------------------------------------------------------------------------
'����ļ��Ƿ�ΪUTF-8����BOM/��BOM�Կɣ���ȡ�ļ�BOMͷ/ǰ4Kbit�ж�----------
'-------------------------------------------------------------------------
'��δʹ��-----------------------------------------------------------------
''-------------------------------------------------------------------------
'Function is_valid_utf8(ByVal file)
'is_valid_utf8 = False
''��Byte()����ת��String�ַ���
'Dim ado, a(), i, n, Bin, s, re
'Set ado = CreateObject("ADODB.Stream")
'ado.Type = 1: ado.Open
'ado.LoadFromFile file
'n = ado.Size - 1
'' �����ļ�/���ƶ�ȡ4Kbit
'If n > 1024 * 4 - 1 Then n = 1024 * 4 - 1 '4Kbit
'' ʹ��BOM�ж�
'Bin = ado.Read(2)
'If AscB(MidB(Bin, 1, 1)) = &HEF And AscB(MidB(Bin, 2, 1)) = &HBB Then
'is_valid_utf8 = True: Exit Function
'End If
''��Byte()����ת��String�ַ���
'ReDim a(n): ado.Position = 0
'For i = 0 To n
'a(i) = ChrW(AscB(ado.Read(1)))
'Next
''ʹ��������ʽ�ж�
'Set re = New Regexp
's = "[\xC0-\xDF]([^\x80-\xBF]|$)"
's = s & "|[\xE0-\xEF].{0,1}([^\x80-\xBF]|$)"
's = s & "|[\xF0-\xF7].{0,2}([^\x80-\xBF]|$)"
's = s & "|[\xF8-\xFB].{0,3}([^\x80-\xBF]|$)"
's = s & "|[\xFC-\xFD].{0,4}([^\x80-\xBF]|$)"
's = s & "|[\xFE-\xFE].{0,5}([^\x80-\xBF]|$)"
's = s & "|[\x00-\x7F][\x80-\xBF]"
's = s & "|[\xC0-\xDF].[\x80-\xBF]"
's = s & "|[\xE0-\xEF]..[\x80-\xBF]"
's = s & "|[\xF0-\xF7]...[\x80-\xBF]"
's = s & "|[\xF8-\xFB]....[\x80-\xBF]"
's = s & "|[\xFC-\xFD].....[\x80-\xBF]"
's = s & "|[\xFE-\xFE]......[\x80-\xBF]"
's = s & "|^[\x80-\xBF]"
're.Pattern = s
'is_valid_utf8 = (Not re.Test(Join(a, "")))
'End Function


'-------------------------------------------------------------------------
'�ı�ת������ΪUTF-8��ʽ����δʹ�ã�--------------------------------------

Public Sub FileTo_UTF8File(fileName As String)
    Dim fBytes() As Byte, uniString As String, freeNum As Integer
    Dim ADO_Stream As Object
    
    freeNum = FreeFile
    
    ReDim fBytes(FileLen(fileName))
    Open fileName For Binary Access Read As #freeNum
    Get #freeNum, , fBytes
    Close #freeNum
    
    uniString = StrConv(fBytes, vbUnicode)
    
    Set ADO_Stream = CreateObject("ADODB.Stream")
    With ADO_Stream
        .Type = 2
        .mode = 3
        .Charset = "utf-8"
        .Open
        .WriteText uniString
        .SaveToFile fileName, 2
        .Close
    End With
    Set ADO_Stream = Nothing
End Sub
'-------------------------------------------------------------------------
'�趨�������-------------------------------------------------------------

Public Function OX_ntime(OX_ntime_T As OX_ntimeTypes, OX_ntime_F As OX_ntimeFormat)
    Dim OX_ntime_D As Double
    Select Case OX_ntime_T
    Case OX_ntime_Time
        OX_ntime_D = CDbl(Time())
    Case OX_ntime_Timer
        OX_ntime_D = CDbl(Timer())
    Case Else
        OX_ntime_D = CDbl(Now())
    End Select
    OX_ntime = OX_ntime_D
    
    Select Case OX_ntime_F
    Case OX_ntime_Hex
        OX_ntime_D = CDbl(Replace(OX_ntime_D, ".", ""))
        Do While OX_ntime_D > 268435455
            OX_ntime_D = OX_ntime_D - 268435455
        Loop
        OX_ntime = Hex(OX_ntime_D)
    Case OX_ntime_int
        OX_ntime = Int(Replace(OX_ntime_D, ".", ""))
    End Select
    
    OX_ntime = Trim(OX_ntime)
End Function

'-------------------------------------------------------------------------
'����OX163�ű�˳����----------------------------------------------------
Public Function OX_Check_include_scriptlist(ByVal OX_sCIS As String, OX_CIS_tf As Boolean) As String '"CIS" means "Check Include Scriptlist",��OX_CIS_tf=false��ʱ��,Ϊ��ȡд������,OX_CIS_tf=TrueʱΪ������������ű�˳��
    Dim spilt_string1
    Dim split_i As Integer
    Dim Check_CIS As String
    Dim OX_CIS_first As Boolean
    Dim OX_CIS_sys163 As Boolean
    Dim OX_CIS_sysinc As Boolean
    
    OX_CIS_first = False
    OX_CIS_sys163 = False
    OX_CIS_sysinc = False
    
    spilt_string1 = Split(OX_sCIS, "|")
    
    For split_i = 0 To UBound(spilt_string1)
        
        spilt_string1(split_i) = Trim(spilt_string1(split_i))
        
        If spilt_string1(split_i) <> "" And InStr(spilt_string1(split_i), ",") > 0 And InStr(spilt_string1(split_i), "\") < 1 Then
            
            Check_CIS = Trim(Mid(spilt_string1(split_i), InStr(spilt_string1(split_i), ",") + 1))
            spilt_string1(split_i) = Trim(Mid(spilt_string1(split_i), 1, InStr(spilt_string1(split_i), ",") - 1))
            If Check_CIS <> "1" Then Check_CIS = "0"
            
            Select Case LCase(spilt_string1(split_i))
                
            Case "sys_163"
                
                If OX_CIS_tf = True And Check_CIS = "0" Then
                    spilt_string1(split_i) = ""
                ElseIf OX_CIS_tf = True And Check_CIS = "1" Then
                    spilt_string1(split_i) = "sys_163"
                Else
                    OX_CIS_sys163 = True
                    spilt_string1(split_i) = "sys_163," & Check_CIS
                End If
                
            Case "sys_include"
                
                If OX_CIS_tf = True And Check_CIS = "0" Then
                    spilt_string1(split_i) = ""
                ElseIf OX_CIS_tf = True And Check_CIS = "1" Then
                    spilt_string1(split_i) = "sys\include.txt"
                Else
                    OX_CIS_sysinc = True
                    spilt_string1(split_i) = "sys_include," & Check_CIS
                End If
                
            Case Else
                
                If LCase(spilt_string1(split_i)) Like "?*.txt" Then
                    If Dir(App_path & "\include\custom\" & spilt_string1(split_i)) = "" Then
                        spilt_string1(split_i) = ""
                    Else
                        If OX_CIS_tf = True And Check_CIS = "0" Then
                            spilt_string1(split_i) = ""
                        ElseIf OX_CIS_tf = True And Check_CIS = "1" Then
                            spilt_string1(split_i) = "custom\" & spilt_string1(split_i)
                        Else
                            spilt_string1(split_i) = spilt_string1(split_i) & "," & Check_CIS
                        End If
                    End If
                Else
                    spilt_string1(split_i) = ""
                End If
                
            End Select
            
        Else
            spilt_string1(split_i) = ""
        End If
        
        If OX_CIS_first = False And spilt_string1(split_i) <> "" Then
            OX_CIS_first = True
        ElseIf OX_CIS_first = True And spilt_string1(split_i) <> "" Then
            spilt_string1(split_i) = "|" & spilt_string1(split_i)
        End If
        
    Next
    
    OX_Check_include_scriptlist = Join(spilt_string1, "")
    If OX_CIS_tf = False Then
        If OX_Check_include_scriptlist = "" Then
            OX_Check_include_scriptlist = "sys_163,1|sys_include,1"
        ElseIf OX_CIS_sys163 = False Or OX_CIS_sysinc = False Then
            If OX_CIS_sysinc = False Then OX_Check_include_scriptlist = "sys_include,1|" & OX_Check_include_scriptlist
            If OX_CIS_sys163 = False Then OX_Check_include_scriptlist = "sys_163,1|" & OX_Check_include_scriptlist
        End If
    End If
End Function

'-------------------------------------------------------------------------
'����OX163�ű�Ĭ�Ϻ���----------------------------------------------------
Public Sub OX_load_Script_Code(sourceScriptInfo As ScriptInfo, sourceScriptApp As ScriptControl)
    On Error Resume Next
    Dim OX_load_Script_Code_STR As String
    If LCase(Trim(sourceScriptInfo.Language)) = "vbscript" Then
        sourceScriptInfo.Language = "vbscript"
        sourceScriptApp.Language = "vbscript"
        sourceScriptApp.Reset
        OX_load_Script_Code_STR = in_Script_Code.OX163_vbs_var & load_Script(App_path & "\include\sys\" & sourceScriptInfo.fileName) & in_Script_Code.OX163_vbs_fn
    Else
        sourceScriptInfo.Language = "javascript"
        sourceScriptApp.Language = "javascript"
        sourceScriptApp.Reset
        OX_load_Script_Code_STR = in_Script_Code.OX163_js_var & load_Script(App_path & "\include\sys\" & sourceScriptInfo.fileName) & in_Script_Code.OX163_js_fn
    End If
    Call sourceScriptApp.AddCode(OX_load_Script_Code_STR)
End Sub

Public Sub load_in_Script_Code()
    On Error Resume Next
    in_Script_Code.OX163_vbs_var = ""
    If Dir(App_path & "\include\sys\OX163_vbs_var.vbs") <> "" Then
        in_Script_Code.OX163_vbs_var = vbCrLf & load_Script(App_path & "\include\sys\OX163_vbs_var.vbs") & vbCrLf
    Else
        in_Script_Code.OX163_vbs_var = vbCrLf & "Dim OX163_urlpage_Referer,OX163_urlpage_Cookies" & vbCrLf
    End If
    
    in_Script_Code.OX163_vbs_fn = ""
    If Dir(App_path & "\include\sys\OX163_vbs_fn.vbs") <> "" Then
        in_Script_Code.OX163_vbs_fn = vbCrLf & load_Script(App_path & "\include\sys\OX163_vbs_fn.vbs") & vbCrLf
    Else
        in_Script_Code.OX163_vbs_fn = vbCrLf & "Function set_urlpagecookies(byVal set_str)" & vbCrLf & "On Error Resume Next" & vbCrLf & "OX163_urlpage_Cookies = set_str" & vbCrLf & "End Function" & vbCrLf
    End If
    
    in_Script_Code.OX163_js_var = ""
    If Dir(App_path & "\include\sys\OX163_js_var.vbs") <> "" Then
        in_Script_Code.OX163_js_var = vbCrLf & load_Script(App_path & "\include\sys\OX163_js_var.vbs") & vbCrLf
    Else
        in_Script_Code.OX163_js_var = vbCrLf & "var OX163_urlpage_Referer='';var OX163_urlpage_Cookies='';" & vbCrLf
    End If
    
    in_Script_Code.OX163_js_fn = ""
    If Dir(App_path & "\include\sys\OX163_js_fn.vbs") <> "" Then
        in_Script_Code.OX163_js_fn = vbCrLf & load_Script(App_path & "\include\sys\OX163_js_fn.vbs") & vbCrLf
    Else
        in_Script_Code.OX163_js_fn = vbCrLf & "function set_urlpagecookies(set_str){OX163_urlpage_Cookies=set_str;}" & vbCrLf
    End If
    
    OX163_WebBrowser_scriptCode = ""
    If Dir(App_path & "\include\sys\OX163_Web_Browser_ctrl.vbs") <> "" Then
        OX163_WebBrowser_scriptCode = load_Script(App_path & "\include\sys\OX163_Web_Browser_ctrl.vbs")
        OX163_WebBrowser_scriptCode = Trim(OX163_WebBrowser_scriptCode)
    End If
End Sub

Public Sub OX_SetIE_Ver(ByRef IE_ver As Byte)
On Error Resume Next
err.Clear
Select Case IE_ver
Case 8
 Shell "regedit " & App_path & "\regfile\use_IE8.reg", vbNormalFocus
Case 9
 Shell "regedit " & App_path & "\regfile\use_IE9.reg", vbNormalFocus
Case 10
 Shell "regedit " & App_path & "\regfile\use_IE10.reg", vbNormalFocus
Case 11
 Shell "regedit " & App_path & "\regfile\use_IE11.reg", vbNormalFocus
Case Else
 Shell "regedit " & App_path & "\regfile\clear_OX163.reg", vbNormalFocus
End Select
If err.Number <> 0 Then MsgBox "����:" & err.Number & vbCrLf & err.Descriptionr & vbCrLf & "�����Դ�regfileĿ¼ֱ�Ӳ���", vbOKOnly, "����"
err.Clear
End Sub

'���������������Ӳ˵�����
Public Sub OX_Get_urllist()
On Error Resume Next
Dim list_str As String, file_path As String, i As Integer
Dim split_str
file_path = App_path & "\include\sys\urllist.txt"
If OX_Dirfile(file_path) = True Then
    list_str = load_normal_file(file_path, -1)
    split_str = Split(list_str, vbCrLf)
    For i = 0 To UBound(split_str)
        If split_str(i) = "-" Then
            Form1.Web_Toolbar.Buttons(9).ButtonMenus.Add , , "-"
        ElseIf InStr(split_str(i), "|") > 1 Then
            Form1.Web_Toolbar.Buttons(9).ButtonMenus.Add , "shj_urllist_" & i, Trim(Mid(split_str(i), 1, InStr(split_str(i), "|") - 1))
            Form1.Web_Toolbar.Buttons(9).ButtonMenus(Form1.Web_Toolbar.Buttons(9).ButtonMenus.count).Tag = Trim(Mid(split_str(i), InStr(split_str(i), "|") + 1))
        ElseIf InStr(split_str(i), ":") > 1 Then
            Form1.Web_Toolbar.Buttons(9).ButtonMenus.Add , "shj_urllist_" & i, Trim(split_str(i))
            Form1.Web_Toolbar.Buttons(9).ButtonMenus(Form1.Web_Toolbar.Buttons(9).ButtonMenus.count).Tag = Trim(split_str(i))
        End If
    Next
End If
End Sub

'��ȡָ����ҳ����cookie
Public Function OX_Get_Cookie_Str(url As String, Cookie_Name As String) As String
    Dim ex_split
    ex_split = Split(GetCookie(url), ";")
    OX_Get_Cookie_Str = ""
    For i = 0 To UBound(ex_split)
        ex_split(i) = Trim(ex_split(i))
        If InStr(LCase(ex_split(i)), LCase(Cookie_Name & "=")) = 1 Then If Mid(ex_split(i), Len(Cookie_Name) + 2) <> "" Then OX_Get_Cookie_Str = Mid(ex_split(i), Len(Cookie_Name) + 2): Exit For
    Next
End Function
'
'Public Function OX_Destop_DPI() As Integer
'On Error Resume Next
'Dim wss As Object, LogPixels
'    Set wss = CreateObject("WScript.Shell")
'    LogPixels = ""
'    OX_Destop_DPI = 100
'    LogPixels = wss.RegRead("HKEY_CURRENT_USER\ControlPanel\Desktop\LogPixels")
'    '��ȡע����Ϣ
'    If IsNumeric(LogPixels) Then
'        OX_Destop_DPI = CInt(LogPixels) * 100 / 96
'    End If
'    If OX_Destop_DPI < 0 Then OX_Destop_DPI = 100
'    OX_DPI_Zoom = OX_Destop_DPI / 100
'End Function

'Private Sub Form_Set_DPI()
'MsgBox Screen.TwipsPerPixelX
'If Screen.TwipsPerPixelX <> 15 Then
'MsgBox top_Picture(0).Width
'    For i = 0 To 1
'        top_Picture(i).Width = top_Picture(i).Width * 15 / Screen.TwipsPerPixelX
'        top_Picture(i).Height = top_Picture(i).Height * 15 / Screen.TwipsPerPixelX
'    Next
'MsgBox top_Picture(0).Width
'    For i = 0 To 2
'        Proxy_img(i).Width = Proxy_img(i).Width * 15 / Screen.TwipsPerPixelX
'        Proxy_img(i).Height = Proxy_img(i).Height * 15 / Screen.TwipsPerPixelX
'    Next
'    homepage.Width = homepage.Width * OX_DPI_Zoom
'    homepage.Height = homepage.Height * OX_DPI_Zoom
'    Web_Browser_Close.Width = Web_Browser_Close.Width * 15 / Screen.TwipsPerPixelX
'    Web_Browser_Close.Height = Web_Browser_Close.Height * 15 / Screen.TwipsPerPixelX
'End If
'End Sub
