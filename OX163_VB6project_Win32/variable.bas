Attribute VB_Name = "OX_variable"
'-----------------------------------------------------------
'-----------------OX163����ȫ������-------------------------
'-----------------------------------------------------------

Public Const title_info = "OX163 plus(0.6.2build160617 beta)"
Public Const ver_info = 62
'Public Const update_host_info = "http://shj.ugschina.com/163/|����Ĭ��" & vbCrLf & "http://shanhaijing.net/163/|����Ĭ��" & vbCrLf & "http://163.shanhaijing.net/163/|���ڱ���" & vbCrLf & "http://www.ugschina.com/163/|���ⱸ��"
Public Const update_host_info1 = "http://shj.ugschina.com/163/"
Public Const update_host_info2 = "Ĭ��"

'POPMENU�˵�XYλ��ƫ����-------------------------------------------------------------
Public OX_POPMENU_X As Long ' 5 * Screen.TwipsPerPixelX
Public OX_POPMENU_Y As Long ' 5 * Screen.TwipsPerPixelY

'------------------------------------------------------------------------------------
Public Const NIM_ADD = &H0
Public Const NIM_MODIFY = &H1
Public Const NIM_DELETE = &H2
Public Const NIF_MESSAGE = &H1
Public Const NIF_ICON = &H2
Public Const NIF_TIP = &H4

Public Const WM_MOUSEMOVE = &H200
Public Const WM_LBUTTONDOWN = &H201
Public Const WM_LBUTTONUP = &H202
Public Const WM_LBUTTONDBLCLK = &H203
Public Const WM_RBUTTONDOWN = &H204
Public Const WM_RBUTTONUP = &H205
Public Const WM_RBUTTONDBLCLK = &H206
Public Const WM_MBUTTONDOWN = &H207
Public Const WM_MBUTTONUP = &H208
Public Const WM_MBUTTONDBLCLK = &H209

Public Const SW_RESTORE = 9
Public Const SW_SHOW = 5
Public Const SW_HIDE = 0

Public Const WM_SYSCOMMAND = &H112
Public Const SC_RESTORE = &HF120&

'������ǰ�˲���----------------------------------------
Public Type NOTIFYICONDATA
    cbSize As Long
    hwnd As Long
    uId As Long
    uFlags As Long
    ucallbackMessage As Long
    hIcon As Long
    szTip As String * 256
End Type

Public TrayI As NOTIFYICONDATA


'BrowserW���ݡ��жϲ���----------------------------------
Public BrowserW_url As String
Public BrowserW_load_ok As Boolean

'�����С------------------------------------------------
Public windows_destop_Width As Long
Public windows_destop_Height As Long

'��·���ж�------------------------------------------------
Public OX_G_Disable8dot3 As String

'�ⲿ�ű��ű�ͷ��������Ҫ�����Լ�������-------------------
Type include_ScriptCode
    OX163_vbs_var As String
    OX163_vbs_fn As String
    OX163_js_var As String
    OX163_js_fn As String
End Type

'�ű����ô��ݲ���
Public in_Script_Code As include_ScriptCode
'������ű����Ʋ���
Public OX163_WebBrowser_scriptCode As String

'ȫ�ֳ�����Ŀ¼
Public App_path As String

'ȫ�ִ������
Public OX_Global_Err_Num As Integer

'����log
Public OX_Start_log As String

'ϵͳ����------------------------------------------------
Type sysSetting
    '�汾
    ver As Integer
    '���·�����
    update_host As String
    '��������
    downloadblock As Long
    '������
    autocheck As Boolean
    'ִ��ʱ�˳�ѯ��
    askquit As Boolean
    'ִ��ʱ��ʾ�б�
    listshow As Boolean
    '���浽Ĭ���ļ���
    savedef As Boolean
    '���غ���ļ���
    openfloder As Boolean
    '�������ʱ���ٴ�ѯ������
    change_psw As Boolean
    '����������ǰ��
    always_top As Boolean
    '��ֹ��������
    new_ie_win As Boolean
    '����������OX163��
    ox163_ie_win As Boolean
    '���ӳ�ʱ
    time_out As Integer
    '���Դ���
    retry_times As Integer
    '��������б�ʽ
    list_type As Byte
    '�Զ�У��αͼ
    fix_rar As Byte
    'αͼ�ļ����б�
    fix_rar_name As String
    'ϵͳ����
    sysTray As Boolean
    '�Ƿ���Ĭ��·��
    def_path_tf As Boolean
    'Ĭ��·��
    def_path As String
    '�ⲿ�ű�ִ�з�ʽ
    include_script As String
    '�ű��б�
    include_scriptlist As String
    'ctrl+c�Ȳ����趨
    list_copy As Boolean
    '�������ļ��Ƚ�
    file_compare As Integer
    '�ײ���Ϣ��
    bottom_StatusBar As Boolean
    '��163�����֤�����
    new163passcode_def(2) As String
    '�б���Ƿ�ȫѡ
    check_all As Boolean
    '���������A for start fast
    proxy_A As String
    proxy_A_user As String
    proxy_A_pw As String
    '���������B for inet1 and header ckeck
    proxy_B As String
    proxy_B_user As String
    proxy_B_pw As String
    '���������ʹ�÷�ʽ 0-icUseDefault,1-icDirect,2-icNamedProxy
    proxy_A_type As Byte
    proxy_B_type As Byte
    '���������AӦ�������������
    web_proxy As Byte
    '����ʱ������URLΪ�����ļ���
    url_folder As Boolean
    'ʹ����163��������������
    new163pass_rules As Boolean
    'Unicode�ļ�/�ļ����ַ�����
    Unicode_File As Byte
    'Unicode�ı�����
    Unicode_Str As Byte
    'IE��ʷ��������
    DelCache_BefDL As Byte
    DelCache_AftDL As Byte
    'httpͷǿ�Ʒ���no-cache
    Cache_no_cache As Byte
    'httpͷǿ�Ʒ���no-store
    Cache_no_store As Byte
    '�û�����(User-Agent)
    Customize_UA As String
    '����Cache_no_cache Cache_no_store Customize_UA���HTTPͷ��Ϣ
    OX_HTTP_Head As String
    '�б���ק����
    OX_List_Drag As Boolean
    '�ضϹ����ļ���
    OX_Cut_Filelen As Boolean
End Type

Public sysSet As sysSetting

Public Function OX_UA_Const(Const_Type As Byte) As String

'Internet Explorer 5(Windows 98)
'Internet Explorer 8(Windows XP)
'Internet Explorer 9(Window 7)
'Internet Explorer 10(Windows 8)
'Internet Explorer 11(Windows 8.1)
'Internet Explorer 11(Windows 10)
'Google Chrome 24((Windows 7)
'Mozilla Firefox 31((Windows 7)
'Opera 12.16((Windows 7)
'�Զ���

Select Case Const_Type
Case 1
OX_UA_Const = "Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)"

Case 2
OX_UA_Const = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)"

Case 3
OX_UA_Const = "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)"

Case 4
OX_UA_Const = "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; Touch)"

Case 5
OX_UA_Const = "Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko"

Case 6
OX_UA_Const = "Mozilla/5.0 (Windows NT 6.4; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko"

Case 7
OX_UA_Const = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17"

Case 8
OX_UA_Const = "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Firefox/31.0"

Case 9
OX_UA_Const = "Opera/9.80 (Windows NT 6.1; WOW64) Presto/2.12.388 Version/12.16"

Case 10
OX_UA_Const = "Mozilla/5.0 (Linux; U; Android 4.0.3; zh-cn) AppleWebkit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

Case 11
OX_UA_Const = "Mozilla/5.0 (iPhone; CPU OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Mobile/11A465"

Case Else
OX_UA_Const = "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/7.0)"

End Select

End Function
