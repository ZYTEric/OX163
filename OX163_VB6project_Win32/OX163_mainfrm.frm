VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "OX163"
   ClientHeight    =   11550
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   16965
   ForeColor       =   &H00FF0000&
   Icon            =   "OX163_mainfrm.frx":0000
   LinkTopic       =   "Form1"
   OLEDropMode     =   1  'Manual
   ScaleHeight     =   11550
   ScaleWidth      =   16965
   StartUpPosition =   2  '��Ļ����
   Begin VB.Timer view_command_Click_timer 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   960
      Top             =   8040
   End
   Begin VB.PictureBox Form_Laoding 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00400000&
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      FillColor       =   &H00581C00&
      ForeColor       =   &H00FFFFFF&
      Height          =   1455
      Left            =   12960
      MousePointer    =   11  'Hourglass
      ScaleHeight     =   1455
      ScaleWidth      =   3015
      TabIndex        =   36
      Top             =   0
      Width           =   3015
      Begin VB.Label Form_LaodingLab 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         BackStyle       =   0  'Transparent
         Caption         =   "������..."
         BeginProperty Font 
            Name            =   "����"
            Size            =   21.75
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   480
         MousePointer    =   11  'Hourglass
         TabIndex        =   37
         Top             =   600
         Width           =   2070
      End
   End
   Begin VB.TextBox url_web_html 
      Height          =   375
      Left            =   9840
      MultiLine       =   -1  'True
      TabIndex        =   35
      Text            =   "OX163_mainfrm.frx":406A
      Top             =   8160
      Visible         =   0   'False
      Width           =   2535
   End
   Begin MSComctlLib.ImageList ImageLibrary_Over 
      Left            =   8280
      Top             =   7920
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   25
      ImageHeight     =   25
      MaskColor       =   12632256
      UseMaskColor    =   0   'False
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   21
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":45B4
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":465C
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4711
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":47BB
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4866
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":48D7
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4956
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4A04
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4A9D
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4B3F
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4BEA
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4C99
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4D4E
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4DFB
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4EA6
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4F4B
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":4FF4
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":50A1
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5136
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":51CE
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":528E
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageLibrary_Normal 
      Left            =   7560
      Top             =   7920
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   25
      ImageHeight     =   25
      MaskColor       =   12632256
      UseMaskColor    =   0   'False
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   21
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5767
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":580F
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":58C4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":596E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5A19
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5A8A
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5B0F
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5BBD
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5C56
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5CF8
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5DA3
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5E52
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5F07
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":5FB4
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":605F
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":6104
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":61AD
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":625A
            Key             =   ""
         EndProperty
         BeginProperty ListImage19 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":62EF
            Key             =   ""
         EndProperty
         BeginProperty ListImage20 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":6387
            Key             =   ""
         EndProperty
         BeginProperty ListImage21 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "OX163_mainfrm.frx":6447
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox url_Filelist_Close 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   6840
      MouseIcon       =   "OX163_mainfrm.frx":6922
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":6C2C
      ScaleHeight     =   285
      ScaleWidth      =   285
      TabIndex        =   28
      ToolTipText     =   "Close Url List "
      Top             =   650
      Visible         =   0   'False
      Width           =   315
   End
   Begin VB.TextBox cookies_text 
      Height          =   975
      Left            =   5400
      TabIndex        =   26
      Top             =   7560
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.PictureBox Proxy_img 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   2
      Left            =   3480
      MouseIcon       =   "OX163_mainfrm.frx":6C8D
      MousePointer    =   14  'Arrow and Question
      Picture         =   "OX163_mainfrm.frx":6F97
      ScaleHeight     =   180
      ScaleWidth      =   1020
      TabIndex        =   24
      ToolTipText     =   "����B�����ñ�����"
      Top             =   0
      Visible         =   0   'False
      Width           =   1020
   End
   Begin VB.PictureBox Proxy_img 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   1
      Left            =   2400
      MouseIcon       =   "OX163_mainfrm.frx":7075
      MousePointer    =   14  'Arrow and Question
      Picture         =   "OX163_mainfrm.frx":737F
      ScaleHeight     =   180
      ScaleWidth      =   1020
      TabIndex        =   23
      ToolTipText     =   "����A�����ñ�����"
      Top             =   0
      Visible         =   0   'False
      Width           =   1020
   End
   Begin VB.PictureBox Proxy_img 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   0
      Left            =   4560
      MouseIcon       =   "OX163_mainfrm.frx":745D
      MousePointer    =   14  'Arrow and Question
      Picture         =   "OX163_mainfrm.frx":7767
      ScaleHeight     =   180
      ScaleWidth      =   1020
      TabIndex        =   22
      ToolTipText     =   "����A��B�����ö�������"
      Top             =   0
      Visible         =   0   'False
      Width           =   1020
   End
   Begin InetCtlsObjects.Inet fast_down 
      Left            =   600
      Top             =   7440
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      RequestTimeout  =   30
   End
   Begin VB.FileListBox url_Filelist 
      Appearance      =   0  'Flat
      Height          =   1830
      Left            =   1600
      System          =   -1  'True
      TabIndex        =   20
      Top             =   650
      Visible         =   0   'False
      Width           =   5220
   End
   Begin MSComctlLib.StatusBar StatusBar 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   21
      Top             =   11295
      Width           =   16965
      _ExtentX        =   29924
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
            Enabled         =   0   'False
            Object.Width           =   53
            MinWidth        =   53
            Object.Tag             =   "ref"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   2
            Enabled         =   0   'False
            Object.Width           =   794
            MinWidth        =   2
            Text            =   "0/0"
            TextSave        =   "0/0"
            Object.Tag             =   "ref"
            Object.ToolTipText     =   "�������м�¼"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Bevel           =   0
            Object.Width           =   26891
            MinWidth        =   353
            Text            =   "��Ϣ��������鿴"
            TextSave        =   "��Ϣ��������鿴"
            Object.Tag             =   "info"
            Object.ToolTipText     =   "��Ϣ��������鿴"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   2
            Enabled         =   0   'False
            Object.Width           =   1588
            MinWidth        =   882
            Text            =   "��������"
            TextSave        =   "��������"
            Object.Tag             =   "fastmode"
            Object.ToolTipText     =   "��������"
         EndProperty
      EndProperty
      MousePointer    =   99
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MouseIcon       =   "OX163_mainfrm.frx":784A
   End
   Begin InetCtlsObjects.Inet check_header 
      Left            =   1800
      Top             =   7440
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      RequestTimeout  =   10
   End
   Begin VB.Timer Form_Start_Timer 
      Interval        =   200
      Left            =   480
      Top             =   8040
   End
   Begin VB.PictureBox homepage 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Left            =   5760
      MouseIcon       =   "OX163_mainfrm.frx":7B64
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":7E6E
      ScaleHeight     =   165
      ScaleMode       =   0  'User
      ScaleWidth      =   675
      TabIndex        =   19
      ToolTipText     =   "go to Homepage"
      Top             =   0
      Width           =   930
   End
   Begin VB.PictureBox Frame_search 
      BorderStyle     =   0  'None
      Height          =   360
      Left            =   9360
      ScaleHeight     =   360
      ScaleWidth      =   2895
      TabIndex        =   15
      ToolTipText     =   "Ctrl+F"
      Top             =   315
      Visible         =   0   'False
      Width           =   2895
      Begin VB.TextBox find_text 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   0
         TabIndex        =   16
         TabStop         =   0   'False
         Top             =   30
         Width           =   1935
      End
      Begin VB.Image find_next 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":7F1E
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":8228
         Stretch         =   -1  'True
         ToolTipText     =   "Next(PageDown)"
         Top             =   0
         Width           =   375
      End
      Begin VB.Image find_prev 
         Height          =   375
         Left            =   2520
         MouseIcon       =   "OX163_mainfrm.frx":82C1
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":85CB
         Stretch         =   -1  'True
         ToolTipText     =   "Previous(PageUp)"
         Top             =   0
         Width           =   375
      End
   End
   Begin MSComctlLib.ListView List1 
      Height          =   1095
      Left            =   45
      TabIndex        =   14
      ToolTipText     =   "Shift or Ctrl to MultiSelect"
      Top             =   960
      Visible         =   0   'False
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   1931
      View            =   3
      Arrange         =   1
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      NumItems        =   4
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Key             =   "list_picID"
         Object.Tag             =   "picID_mark"
         Text            =   "���"
         Object.Width           =   1764
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Key             =   "list_picName"
         Object.Tag             =   "picName_mark"
         Text            =   "�ļ���"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Key             =   "list_picDisc"
         Object.Tag             =   "picDisc_mark"
         Text            =   "��������"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Key             =   "list_picUrl"
         Object.Tag             =   "picUrl_mark"
         Text            =   "ͼƬ��ַ"
         Object.Width           =   2117
      EndProperty
   End
   Begin InetCtlsObjects.Inet update 
      Left            =   1200
      Top             =   7440
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      RequestTimeout  =   15
   End
   Begin VB.TextBox text_sortname 
      Height          =   270
      Left            =   120
      TabIndex        =   12
      Text            =   $"OX163_mainfrm.frx":8668
      Top             =   8520
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.PictureBox top_Picture 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   1
      Left            =   6840
      MouseIcon       =   "OX163_mainfrm.frx":8671
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":897B
      ScaleHeight     =   180
      ScaleWidth      =   675
      TabIndex        =   11
      ToolTipText     =   "Always on top"
      Top             =   0
      Visible         =   0   'False
      Width           =   675
   End
   Begin VB.PictureBox top_Picture 
      AutoRedraw      =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   0
      Left            =   7680
      MouseIcon       =   "OX163_mainfrm.frx":8A0D
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":8D17
      ScaleHeight     =   180
      ScaleWidth      =   675
      TabIndex        =   10
      ToolTipText     =   "Always on top"
      Top             =   0
      Width           =   675
   End
   Begin VB.Frame Frame2 
      Caption         =   "����б�"
      Height          =   3535
      Left            =   60
      OLEDropMode     =   1  'Manual
      TabIndex        =   5
      Top             =   2880
      Width           =   7980
      Begin MSComctlLib.ListView user_list 
         Height          =   2460
         Left            =   45
         TabIndex        =   8
         ToolTipText     =   "Shift or Ctrl to MultiSelect"
         Top             =   840
         Width           =   7695
         _ExtentX        =   13573
         _ExtentY        =   4339
         View            =   3
         Arrange         =   1
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   0   'False
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   7
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Key             =   "book_sort"
            Object.Tag             =   "sort_mark"
            Text            =   "���"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Key             =   "book_name"
            Object.Tag             =   "name_mark"
            Text            =   "�������"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Key             =   "book_psw"
            Object.Tag             =   "psw_mark"
            Text            =   "�������"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Key             =   "book_ID"
            Object.Tag             =   "ID_mark"
            Text            =   "���/����"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   2
            SubItemIndex    =   4
            Key             =   "book_number"
            Object.Tag             =   "number_mark"
            Text            =   "ͼƬ����"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Key             =   "book_disc"
            Object.Tag             =   "disc_mark"
            Text            =   "���-�������"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Key             =   "book_undown"
            Object.Tag             =   "undown_mark"
            Text            =   "��ֹ�����б�"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label lblProgressInfo2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Height          =   180
         Left            =   3720
         TabIndex        =   30
         Top             =   240
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Label count2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "����"
            Size            =   7.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   180
         Left            =   0
         TabIndex        =   25
         Top             =   600
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Image user_list_find 
         Height          =   375
         Left            =   2640
         MouseIcon       =   "OX163_mainfrm.frx":8DA8
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":90B2
         Stretch         =   -1  'True
         ToolTipText     =   "Find Keyword"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image user_list_save 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":9147
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":9451
         Stretch         =   -1  'True
         ToolTipText     =   "Save Checked Files"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Image user_list_output 
         Height          =   375
         Left            =   1560
         MouseIcon       =   "OX163_mainfrm.frx":94EE
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":97F8
         Stretch         =   -1  'True
         ToolTipText     =   "Outup Download List"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Image albumslist_back 
         Height          =   375
         Left            =   1080
         MouseIcon       =   "OX163_mainfrm.frx":9895
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":9B9F
         Stretch         =   -1  'True
         ToolTipText     =   "Back"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000010&
         X1              =   2520
         X2              =   2520
         Y1              =   240
         Y2              =   600
      End
      Begin VB.Image list_check 
         Height          =   375
         Left            =   3120
         MouseIcon       =   "OX163_mainfrm.frx":9C28
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":9F32
         Stretch         =   -1  'True
         ToolTipText     =   "Range Checked Albums on Top"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label count1 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "����"
            Size            =   7.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   180
         Left            =   0
         TabIndex        =   9
         Top             =   600
         Width           =   480
      End
      Begin VB.Image list_back1 
         Height          =   375
         Left            =   1080
         MouseIcon       =   "OX163_mainfrm.frx":9FCD
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":A2D7
         Stretch         =   -1  'True
         ToolTipText     =   "Back"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image save_all 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":A360
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":A66A
         Stretch         =   -1  'True
         ToolTipText     =   "Save Checked Albums"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image out_all 
         Height          =   375
         Left            =   1560
         MouseIcon       =   "OX163_mainfrm.frx":A707
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":AA11
         Stretch         =   -1  'True
         ToolTipText     =   "Outup Download List"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image stop2 
         Height          =   375
         Left            =   600
         MouseIcon       =   "OX163_mainfrm.frx":AAB0
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":ADBA
         Stretch         =   -1  'True
         ToolTipText     =   "Stop"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label_name1 
         AutoSize        =   -1  'True
         BackColor       =   &H000000AA&
         Caption         =   "Label1"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Left            =   480
         TabIndex        =   7
         Top             =   610
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.Label Label_text1 
         AutoSize        =   -1  'True
         Caption         =   "Label1"
         Height          =   180
         Left            =   1200
         TabIndex        =   6
         Top             =   610
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.Image open_set1 
         Height          =   375
         Left            =   120
         MouseIcon       =   "OX163_mainfrm.frx":AE4C
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":B156
         Stretch         =   -1  'True
         ToolTipText     =   "Setup"
         Top             =   240
         Width           =   375
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "����û�����ַ"
      Height          =   855
      Left            =   60
      OLEDropMode     =   1  'Manual
      TabIndex        =   0
      Top             =   70
      Width           =   12735
      Begin SHDocVwCtl.WebBrowser url_input_web 
         Height          =   315
         Left            =   1560
         TabIndex        =   34
         Top             =   275
         Visible         =   0   'False
         Width           =   6015
         ExtentX         =   10610
         ExtentY         =   556
         ViewMode        =   0
         Offline         =   0
         Silent          =   0
         RegisterAsBrowser=   0
         RegisterAsDropTarget=   1
         AutoArrange     =   0   'False
         NoClientEdge    =   0   'False
         AlignLeft       =   0   'False
         NoWebView       =   0   'False
         HideFileNames   =   0   'False
         SingleClick     =   0   'False
         SingleSelection =   0   'False
         NoFolders       =   0   'False
         Transparent     =   0   'False
         ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
         Location        =   "http:///"
      End
      Begin VB.TextBox url_input 
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1560
         OLEDropMode     =   1  'Manual
         TabIndex        =   1
         Text            =   "http://"
         Top             =   275
         Width           =   6735
      End
      Begin VB.Label lblProgressInfo1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Height          =   180
         Left            =   3240
         TabIndex        =   31
         Top             =   240
         Visible         =   0   'False
         Width           =   90
      End
      Begin VB.Image search163 
         Height          =   375
         Left            =   600
         MouseIcon       =   "OX163_mainfrm.frx":B1EE
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":B4F8
         Stretch         =   -1  'True
         ToolTipText     =   "Search Albums"
         Top             =   240
         Width           =   375
      End
      Begin VB.Line Line2 
         BorderColor     =   &H80000010&
         Visible         =   0   'False
         X1              =   2520
         X2              =   2520
         Y1              =   240
         Y2              =   600
      End
      Begin VB.Image list1_find 
         Height          =   375
         Left            =   2640
         MouseIcon       =   "OX163_mainfrm.frx":B592
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":B89C
         Stretch         =   -1  'True
         ToolTipText     =   "Find Keyword"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Image view_command 
         Height          =   375
         Left            =   1080
         MouseIcon       =   "OX163_mainfrm.frx":B931
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":BC3B
         Stretch         =   -1  'True
         ToolTipText     =   "View Web"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label list_count 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "����"
            Size            =   7.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   175
         Left            =   0
         TabIndex        =   4
         Top             =   620
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Image list_stop 
         Height          =   375
         Left            =   600
         MouseIcon       =   "OX163_mainfrm.frx":BCD6
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":BFE0
         Stretch         =   -1  'True
         ToolTipText     =   "Stop"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image list_output 
         Height          =   375
         Left            =   1560
         MouseIcon       =   "OX163_mainfrm.frx":C072
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":C37C
         Stretch         =   -1  'True
         ToolTipText     =   "Outup Download List"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image image_save 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":C41B
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":C725
         Stretch         =   -1  'True
         ToolTipText     =   "Save Checked Files"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image list_back 
         Height          =   375
         Left            =   1080
         MouseIcon       =   "OX163_mainfrm.frx":C7C2
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":CACC
         Stretch         =   -1  'True
         ToolTipText     =   "Back"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label_text 
         AutoSize        =   -1  'True
         Caption         =   "Label1"
         Height          =   180
         Left            =   1200
         TabIndex        =   3
         Top             =   610
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.Label Label_name 
         AutoSize        =   -1  'True
         BackColor       =   &H000000AA&
         Caption         =   "Label1"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Left            =   480
         TabIndex        =   2
         Top             =   610
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.Image makelist_command 
         Appearance      =   0  'Flat
         Height          =   375
         Left            =   8520
         MouseIcon       =   "OX163_mainfrm.frx":CB55
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":CE5F
         Stretch         =   -1  'True
         ToolTipText     =   "Go & List"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image open_set 
         Height          =   375
         Left            =   120
         MouseIcon       =   "OX163_mainfrm.frx":CEFD
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":D207
         Stretch         =   -1  'True
         ToolTipText     =   "Setup"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image url_list_show 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   8280
         MouseIcon       =   "OX163_mainfrm.frx":D29F
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":D5A9
         Stretch         =   -1  'True
         ToolTipText     =   "Show Url List"
         Top             =   285
         Width           =   240
      End
   End
   Begin VB.Timer Inet1_Timer 
      Enabled         =   0   'False
      Interval        =   30000
      Left            =   0
      Top             =   8040
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   0
      Top             =   7440
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      URL             =   "http://"
      RequestTimeout  =   20
   End
   Begin SHDocVwCtl.WebBrowser Web_Search 
      Height          =   6120
      Left            =   60
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   960
      Visible         =   0   'False
      Width           =   7950
      ExtentX         =   14023
      ExtentY         =   10795
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   0
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.PictureBox web_Picture 
      BorderStyle     =   0  'None
      Height          =   5535
      Left            =   8160
      ScaleHeight     =   5535
      ScaleWidth      =   7575
      TabIndex        =   17
      Top             =   2160
      Visible         =   0   'False
      Width           =   7575
      Begin VB.PictureBox Web_Browser_Close 
         AutoRedraw      =   -1  'True
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   7200
         MouseIcon       =   "OX163_mainfrm.frx":DA74
         MousePointer    =   99  'Custom
         ScaleHeight     =   375
         ScaleWidth      =   375
         TabIndex        =   29
         ToolTipText     =   "Close Web Browser"
         Top             =   0
         Width           =   375
         Begin VB.Image Web_Browser_Close_i 
            Height          =   375
            Left            =   0
            Picture         =   "OX163_mainfrm.frx":DD7E
            Stretch         =   -1  'True
            Top             =   0
            Width           =   450
         End
      End
      Begin VB.PictureBox web_Title_Picture 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   6960
         ScaleHeight     =   255
         ScaleWidth      =   1935
         TabIndex        =   32
         Top             =   90
         Width           =   1935
         Begin VB.Label web_Title_Lab 
            AutoSize        =   -1  'True
            Height          =   180
            Left            =   0
            TabIndex        =   33
            Top             =   0
            Width           =   90
         End
      End
      Begin MSComctlLib.ImageList Web_Browser_Image2 
         Left            =   720
         Top             =   4920
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   19
         ImageHeight     =   19
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   7
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":DDF3
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":DE62
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":DED0
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":DF46
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":DFB7
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E033
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E0A4
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.ImageList Web_Browser_Image1 
         Left            =   0
         Top             =   4920
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   19
         ImageHeight     =   19
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   7
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E11A
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E189
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E1F7
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E26D
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E2DE
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E35A
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":E3CB
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar Web_Toolbar 
         Height          =   375
         Left            =   0
         TabIndex        =   27
         Top             =   0
         Width           =   7575
         _ExtentX        =   13361
         _ExtentY        =   661
         ButtonWidth     =   1429
         ButtonHeight    =   661
         AllowCustomize  =   0   'False
         Wrappable       =   0   'False
         Style           =   1
         TextAlignment   =   1
         ImageList       =   "Web_Browser_Image1"
         HotImageList    =   "Web_Browser_Image2"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   10
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "����"
               Key             =   "Web_Toolbar_Back"
               Description     =   "Back"
               Object.ToolTipText     =   "������һҳ"
               ImageIndex      =   1
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "ǰ��"
               Key             =   "Web_Toolbar_Forward"
               Description     =   "Forward"
               Object.ToolTipText     =   "ǰ������һҳ"
               ImageIndex      =   2
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "ˢ��"
               Key             =   "Web_Toolbar_refresh"
               Description     =   "Refresh"
               Object.ToolTipText     =   "ˢ��ҳ��"
               ImageIndex      =   3
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "ֹͣ"
               Key             =   "Web_Toolbar_Stop"
               Description     =   "Stop"
               Object.ToolTipText     =   "ֹͣ����ҳ��"
               ImageIndex      =   4
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "��ҳ"
               Key             =   "Web_Toolbar_Save"
               Description     =   "Save As"
               Object.ToolTipText     =   "������ҳ"
               ImageIndex      =   5
               Style           =   5
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
                  NumButtonMenus  =   2
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "Web_Toolbar_Source"
                     Text            =   "Դ����"
                  EndProperty
                  BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "Web_Toolbar_htm"
                     Text            =   "���뻺��"
                  EndProperty
               EndProperty
            EndProperty
            BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "����"
               Key             =   "Web_Toolbar_Support"
               Description     =   "Support"
               Object.ToolTipText     =   "ҳ�湤��"
               ImageIndex      =   6
               Style           =   5
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
                  NumButtonMenus  =   6
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_image"
                     Text            =   "��ҳͼƬ"
                  EndProperty
                  BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_163"
                     Text            =   "163ͨ��֤"
                  EndProperty
                  BeginProperty ButtonMenu3 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Text            =   "-"
                  EndProperty
                  BeginProperty ButtonMenu4 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_ie"
                     Text            =   "����IE�汾"
                  EndProperty
                  BeginProperty ButtonMenu5 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_ua"
                     Text            =   "�鿴׼ȷUA"
                  EndProperty
                  BeginProperty ButtonMenu6 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_eht"
                     Text            =   "ȥ��EHT��è"
                  EndProperty
               EndProperty
            EndProperty
            BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "����"
               Key             =   "Web_Toolbar_Link"
               Description     =   "Link"
               Object.ToolTipText     =   "֧�ֵ���վ"
               ImageIndex      =   7
               Style           =   5
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
                  NumButtonMenus  =   5
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_hp"
                     Object.Tag             =   "http://www.shanhaijing.net/163/"
                     Text            =   "�����ҳ"
                  EndProperty
                  BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_forum"
                     Object.Tag             =   "http://www.ugschina.com/forum/"
                     Text            =   "�����̳"
                  EndProperty
                  BeginProperty ButtonMenu3 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Text            =   "-"
                  EndProperty
                  BeginProperty ButtonMenu4 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_edit"
                     Text            =   "��������"
                  EndProperty
                  BeginProperty ButtonMenu5 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Text            =   "-"
                  EndProperty
               EndProperty
            EndProperty
            BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
         EndProperty
      End
      Begin SHDocVwCtl.WebBrowser Web_Browser 
         Height          =   4575
         Left            =   0
         TabIndex        =   18
         Top             =   360
         Visible         =   0   'False
         Width           =   7575
         ExtentX         =   13361
         ExtentY         =   8070
         ViewMode        =   0
         Offline         =   0
         Silent          =   0
         RegisterAsBrowser=   0
         RegisterAsDropTarget=   1
         AutoArrange     =   0   'False
         NoClientEdge    =   0   'False
         AlignLeft       =   0   'False
         NoWebView       =   0   'False
         HideFileNames   =   0   'False
         SingleClick     =   0   'False
         SingleSelection =   0   'False
         NoFolders       =   0   'False
         Transparent     =   0   'False
         ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
         Location        =   "http:///"
      End
   End
   Begin VB.Image open_lock 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   7080
      MouseIcon       =   "OX163_mainfrm.frx":E441
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":E74B
      Stretch         =   -1  'True
      ToolTipText     =   "Input Passwrd"
      Top             =   8040
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image process_Image 
      Height          =   150
      Index           =   2
      Left            =   6600
      Picture         =   "OX163_mainfrm.frx":E7B4
      Stretch         =   -1  'True
      Top             =   7200
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image process_Image 
      Height          =   150
      Index           =   1
      Left            =   6360
      Picture         =   "OX163_mainfrm.frx":E804
      Top             =   7200
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image process_Image 
      Height          =   150
      Index           =   0
      Left            =   6120
      Picture         =   "OX163_mainfrm.frx":E851
      Stretch         =   -1  'True
      Top             =   7200
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image ico 
      Height          =   1080
      Index           =   1
      Left            =   4080
      Picture         =   "OX163_mainfrm.frx":E89C
      Stretch         =   -1  'True
      Top             =   7320
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Image ico 
      Height          =   1080
      Index           =   0
      Left            =   2880
      Picture         =   "OX163_mainfrm.frx":12906
      Stretch         =   -1  'True
      Top             =   7320
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Menu menu 
      Caption         =   "����б����"
      Visible         =   0   'False
      Begin VB.Menu menu_psw 
         Caption         =   "��д����(&P)"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_pswc 
         Caption         =   "��������(&C)"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_pswv 
         Caption         =   "ճ������(&V)"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_1 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_sel 
         Caption         =   "���ѡ��(&S)"
      End
      Begin VB.Menu menu_unsel 
         Caption         =   "����ѡ��(&D)"
      End
      Begin VB.Menu menu_qsel 
         Caption         =   "ȡ��ѡ��(&F)"
      End
      Begin VB.Menu menu_2 
         Caption         =   "-"
      End
      Begin VB.Menu menu_all 
         Caption         =   "���ȫ��(&A)"
      End
      Begin VB.Menu menu_unall 
         Caption         =   "����ȫ��(&Z)"
      End
      Begin VB.Menu menu_quit 
         Caption         =   "ȡ��ȫ��(&Q)"
      End
      Begin VB.Menu menu_3 
         Caption         =   "-"
      End
      Begin VB.Menu menu_spsw 
         Caption         =   "���ѡ������"
      End
      Begin VB.Menu menu_cpsw 
         Caption         =   "���ȫ������"
      End
      Begin VB.Menu menu_4 
         Caption         =   "-"
      End
      Begin VB.Menu menu_delall 
         Caption         =   "ȫɾδ�����"
      End
   End
   Begin VB.Menu menu_pic 
      Caption         =   "ͼƬ�б����"
      Visible         =   0   'False
      Begin VB.Menu menu_pic_sel 
         Caption         =   "���ѡ��(&S)"
      End
      Begin VB.Menu menu_pic_unsel 
         Caption         =   "����ѡ��(&D)"
      End
      Begin VB.Menu menu_pic_qsel 
         Caption         =   "ȡ��ѡ��(&F)"
      End
      Begin VB.Menu menu_pic1 
         Caption         =   "-"
      End
      Begin VB.Menu menu_pic_all 
         Caption         =   "���ȫ��(&A)"
      End
      Begin VB.Menu menu_pic_unall 
         Caption         =   "����ȫ��(&Z)"
      End
      Begin VB.Menu menu_pic_quit 
         Caption         =   "ȡ��ȫ��(&Q)"
      End
      Begin VB.Menu menu_pic2 
         Caption         =   "-"
      End
      Begin VB.Menu menu_pic_delall 
         Caption         =   "ȫɾδ�����"
      End
   End
   Begin VB.Menu TrayMenu 
      Caption         =   "ϵͳͼ��˵�"
      Visible         =   0   'False
      Begin VB.Menu tray_quit 
         Caption         =   "�˳�����"
      End
      Begin VB.Menu menu_5 
         Caption         =   "-"
      End
      Begin VB.Menu auto_shutdown 
         Caption         =   "�Զ��ػ�"
      End
      Begin VB.Menu menu_12 
         Caption         =   "-"
      End
      Begin VB.Menu tray_path 
         Caption         =   "����·��"
      End
      Begin VB.Menu tray_p 
         Caption         =   "����·��"
         Begin VB.Menu tray_dir 
            Caption         =   "����·��"
         End
         Begin VB.Menu tray_dirsys 
            Caption         =   "ϵͳ�ű�·��"
         End
         Begin VB.Menu tray_dircustom 
            Caption         =   "�Զ��ű�·��"
         End
      End
      Begin VB.Menu tray_8to31 
         Caption         =   "��·������"
      End
      Begin VB.Menu menu_6 
         Caption         =   "-"
      End
      Begin VB.Menu tray_recover 
         Caption         =   "��ԭ����"
      End
      Begin VB.Menu tray_exit 
         Caption         =   "�رղ˵�"
      End
   End
   Begin VB.Menu setMenu 
      Caption         =   "�趨�˵�"
      Visible         =   0   'False
      Begin VB.Menu setProgram 
         Caption         =   "��������"
      End
      Begin VB.Menu setProgram_quick 
         Caption         =   "��������"
         Enabled         =   0   'False
         Visible         =   0   'False
         Begin VB.Menu setProgram_Scrpit 
            Caption         =   "�ű�����"
         End
         Begin VB.Menu setProgram_Proxy 
            Caption         =   "��������"
         End
         Begin VB.Menu setProgram_Lst 
            Caption         =   "��������"
         End
         Begin VB.Menu setProgram_File 
            Caption         =   "�ļ�����"
         End
      End
      Begin VB.Menu menu11 
         Caption         =   "-"
      End
      Begin VB.Menu tray_script1 
         Caption         =   "���½ű�"
      End
      Begin VB.Menu menu_11 
         Caption         =   "-"
      End
      Begin VB.Menu input_file 
         Caption         =   "�����ļ�"
         Begin VB.Menu input_lst 
            Caption         =   "�����б�(LST,HTM,TXT+BAT)"
         End
      End
      Begin VB.Menu menu_7 
         Caption         =   "-"
      End
      Begin VB.Menu tray_path1 
         Caption         =   "����·��"
      End
      Begin VB.Menu tray_p1 
         Caption         =   "����·��"
         Begin VB.Menu tray_dir1 
            Caption         =   "����·��"
         End
         Begin VB.Menu tray_dirsys1 
            Caption         =   "ϵͳ�ű�·��"
         End
         Begin VB.Menu tray_dircustom1 
            Caption         =   "�Զ��ű�·��"
         End
      End
      Begin VB.Menu tray_8to3 
         Caption         =   "��·������"
      End
      Begin VB.Menu menu_8 
         Caption         =   "-"
      End
      Begin VB.Menu auto_shutdown1 
         Caption         =   "�Զ��ػ�"
      End
      Begin VB.Menu menu_9 
         Caption         =   "-"
      End
      Begin VB.Menu tray_exit1 
         Caption         =   "�رղ˵�"
      End
   End
   Begin VB.Menu searchMenu 
      Caption         =   "����ѡ��"
      Visible         =   0   'False
      Begin VB.Menu search_internt 
         Caption         =   "ҳ������"
      End
      Begin VB.Menu search_local 
         Caption         =   "��������"
      End
   End
   Begin VB.Menu out_lst_menu 
      Caption         =   "����ѡ��"
      Visible         =   0   'False
      Begin VB.Menu out_lst_stand 
         Caption         =   "��������б�"
      End
      Begin VB.Menu out_lst_one 
         Caption         =   "���������б�"
      End
   End
   Begin VB.Menu rename_rules 
      Caption         =   "��������"
      Visible         =   0   'False
      Begin VB.Menu rename_defult 
         Caption         =   "Ĭ������[ԭ��]"
      End
      Begin VB.Menu rename_order 
         Caption         =   "��������[0->9]"
      End
      Begin VB.Menu rename_desc 
         Caption         =   "��������[9->0]"
      End
   End
   Begin VB.Menu fast_set 
      Caption         =   "��������"
      Visible         =   0   'False
      Begin VB.Menu fast_set_PA 
         Caption         =   "����A-����ҳ��"
      End
      Begin VB.Menu fast_set_PB 
         Caption         =   "����B-����ͼƬ"
      End
      Begin VB.Menu fast_set2 
         Caption         =   "-"
      End
      Begin VB.Menu fast_set_web 
         Caption         =   "����web�����"
      End
      Begin VB.Menu fast_set3 
         Caption         =   "-"
      End
      Begin VB.Menu fast_set_dir 
         Caption         =   "����Ĭ��·��"
      End
      Begin VB.Menu fast_set4 
         Caption         =   "-"
      End
      Begin VB.Menu fast_set_ListDrag 
         Caption         =   "������ק����"
      End
      Begin VB.Menu fast_set5 
         Caption         =   "-"
      End
      Begin VB.Menu process_set 
         Caption         =   "��-����"
         Begin VB.Menu process_h 
            Caption         =   "��"
         End
         Begin VB.Menu process_mh 
            Caption         =   "��"
            Checked         =   -1  'True
         End
         Begin VB.Menu process_m 
            Caption         =   "��"
         End
      End
      Begin VB.Menu fast_set1 
         Caption         =   "-"
      End
      Begin VB.Menu fast_set_c 
         Caption         =   "�رղ˵�"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim mouse_dic As Byte 'last is 25
Public form_height As Integer
Dim url_temp As String
Dim down_count As Byte
Public form_quit As Boolean
Dim m_lngDocSize As Double
Dim old_FileSize As Double
Dim download_FileName As String
Dim download_FileFullName As String
Dim strURL As String
Dim download_ok As Boolean
Dim psw_v As String
Dim Html_Temp As String
Dim retry_time As Integer
Dim down_len As Long
Dim now_tray As Boolean
Dim Open_path As String
Dim Open_path_set As String
Dim auto_shutdown_tf As Boolean
Dim htmlCharsetType As String
Dim url_Referer As String
Dim urlpage_Referer As String
Public pass_code As String
Dim pw_163 As String
Dim out_lst_type_tf As Boolean
Dim start_fast_method As String
Dim rename_rules_val As Byte
Dim show_inform(1) As String
Public show_StatusBar As Byte
Dim proxy_warning As Integer
Dim url_text_keyupdown As Boolean
Dim Web_Browser_header_tf As Boolean
Dim Content_Range As String
Dim new_win As Boolean
Public OX_Script_Type As String
Dim stop_check_header As Boolean
Dim mouse_button_flag As Integer
Dim list_scoll_id As Double
Dim list_scoll_idm As Double
Dim s136_title As String
Dim s136_newwin As Boolean
'Dim form_IsDelay_TF As Boolean '�Ƿ�������ʱ�ȴ�

'---------------------------------------------------------------------------------------------------------
'��ʼ-----------------------------------��꾭���ռ��ж�--------------------------------------------------

Private Sub Change_Main_Image(Image_ID As Byte)
    On Error Resume Next
    Dim ImageLibrary_obj As Object
    Dim LI_ID As Byte
    list_scoll_id = 0
    list_scoll_idm = 0
    For i = 1 To 2
        If i = 1 Then Set ImageLibrary_obj = ImageLibrary_Normal: LI_ID = mouse_dic
        If i = 2 Then Set ImageLibrary_obj = ImageLibrary_Over: LI_ID = Image_ID
        Select Case LI_ID
        Case 0
        Case 1
            If auto_shutdown_tf Then
                open_set.Picture = ImageLibrary_obj.ListImages(2).Picture
                open_set1.Picture = ImageLibrary_obj.ListImages(2).Picture
            Else
                open_set.Picture = ImageLibrary_obj.ListImages(1).Picture
                open_set1.Picture = ImageLibrary_obj.ListImages(1).Picture
            End If
        Case 2
            
        Case 3
            search163.Picture = ImageLibrary_obj.ListImages(3).Picture
        Case 4
            view_command.Picture = ImageLibrary_obj.ListImages(4).Picture
        Case 5
            url_Filelist_Close.Picture = ImageLibrary_obj.ListImages(5).Picture
        Case 6
            Web_Browser_Close_i.Picture = ImageLibrary_obj.ListImages(6).Picture
        Case 7
            makelist_command.Picture = ImageLibrary_obj.ListImages(7).Picture
        Case 8
            albumslist_back.Picture = ImageLibrary_obj.ListImages(8).Picture
            list_back.Picture = ImageLibrary_obj.ListImages(8).Picture
            list_back1.Picture = ImageLibrary_obj.ListImages(8).Picture
        Case 9
            list_stop.Picture = ImageLibrary_obj.ListImages(9).Picture
            stop2.Picture = ImageLibrary_obj.ListImages(9).Picture
        Case 10
            list_output.Picture = ImageLibrary_obj.ListImages(10 + sysSet.list_type).Picture
            out_all.Picture = ImageLibrary_obj.ListImages(10 + sysSet.list_type).Picture
            user_list_output.Picture = ImageLibrary_obj.ListImages(10 + sysSet.list_type).Picture
        Case 11
            
        Case 12
            
        Case 13
            save_all.Picture = ImageLibrary_obj.ListImages(13).Picture
            user_list_save.Picture = ImageLibrary_obj.ListImages(13).Picture
            image_save.Picture = ImageLibrary_obj.ListImages(13).Picture
        Case 14
            list_check.Picture = ImageLibrary_obj.ListImages(14).Picture
        Case 15
            user_list_find.Picture = ImageLibrary_obj.ListImages(15).Picture
            list1_find.Picture = ImageLibrary_obj.ListImages(15).Picture
        Case 16
            find_next.Picture = ImageLibrary_obj.ListImages(16).Picture
        Case 17
            find_prev.Picture = ImageLibrary_obj.ListImages(17).Picture
        Case 18
            'top_Picture(0).Picture = ImageLibrary_obj.ListImages(18).Picture
            top_Picture(0).PaintPicture ImageLibrary_obj.ListImages(18).Picture, 0, 0, top_Picture(0).ScaleWidth, top_Picture(0).ScaleHeight
            'top_Picture(1).Picture = ImageLibrary_obj.ListImages(19).Picture
            top_Picture(1).PaintPicture ImageLibrary_obj.ListImages(19).Picture, 0, 0, top_Picture(1).ScaleWidth, top_Picture(1).ScaleHeight
            'If ImageLibrary_obj.ListImages(19).Picture.Width <> top_Picture(1).ScaleWidth Then ImageLibrary_obj.ListImages(19).Picture = top_Picture(1).Picture
        Case 19
        Case 19
            
        Case 20
            'homepage.Picture = ImageLibrary_obj.ListImages(20).Picture
            homepage.PaintPicture ImageLibrary_obj.ListImages(20).Picture, 0, 0, homepage.ScaleWidth, homepage.ScaleHeight
        Case 21
            url_list_show.Picture = ImageLibrary_obj.ListImages(21).Picture
        End Select
    Next
    mouse_dic = Image_ID
End Sub

Private Sub Form_LostFocus()
    list_scoll_id = 0
    list_scoll_idm = 0
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Label_text1.Visible = False
        Label_name1.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub Web_Toolbar_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub StatusBar_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub Frame1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub Frame2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text1.Visible = False
        Label_name1.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub Label_name_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub Label_name1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text1.Visible = False
        Label_name1.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub Label_text_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub Label_text1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text1.Visible = False
        Label_name1.Visible = False
        Change_Main_Image 0
    End If
End Sub

Private Sub url_Filelist_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Change_Main_Image 0
    End If
End Sub
'1
Private Sub open_set_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 1 Then
        Label_name = " ����˵�: "
        Label_text = "��������-�ű�����-�Զ��ػ�-·���鿴"
        label_rebuld
        Change_Main_Image 1
    End If
End Sub

Private Sub open_set1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 1 Then
        Label_name1 = " ����˵�: "
        Label_text1 = "��������-�ű�����-�Զ��ػ�-·���鿴"
        label_rebuld1
        Change_Main_Image 1
    End If
End Sub
'2
Private Sub url_input_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 2 Then
        Label_name = " ��д����: "
        Label_text = "��д163����û�������������(Ctrl+�س������ҳ)"
        label_rebuld
        Change_Main_Image 2
    End If
End Sub
'3
Private Sub search163_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 3 Then
        Label_name = " �������: "
        Label_text = "������ر�163�������"
        label_rebuld
        Change_Main_Image 3
    End If
End Sub
'4
Private Sub view_command_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 4 Then
        Label_name = " �鿴��ҳ: "
        Label_text = "�򿪵�ǰ��ַ������"
        label_rebuld
        Change_Main_Image 4
    End If
End Sub
'5
Private Sub url_Filelist_Close_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 5 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Change_Main_Image 5
    End If
End Sub
'6
Private Sub Web_Browser_Close_i_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 6 Then
        Label_name = " �ر���ҳ: "
        Label_text = "�ر���ҳ�����"
        label_rebuld
        Change_Main_Image 6
    End If
End Sub
'7
Private Sub makelist_command_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 7 Then
        Label_name = " ��������: "
        Label_text = "���ɸ����������б�"
        label_rebuld
        Change_Main_Image 7
    End If
End Sub
'8
Private Sub albumslist_back_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 8 Then
        Label_name1 = " �����б�: "
        Label_text1 = "��������б�"
        label_rebuld1
        Change_Main_Image 8
    End If
End Sub

Private Sub list_back_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 8 Then
        Label_name = " ������ҳ: "
        Label_text = "���س�ʼ����"
        label_rebuld
        Change_Main_Image 8
    End If
End Sub

Private Sub list_back1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 8 Then
        Label_name1 = " ������ҳ: "
        Label_text1 = "���س�ʼ����"
        label_rebuld1
        Change_Main_Image 8
    End If
End Sub
'9
Private Sub list_stop_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 9 Then
        Label_name = " ȫ��ֹͣ: "
        Label_text = "������ǰ�����б�"
        label_rebuld
        Change_Main_Image 9
    End If
End Sub

Private Sub stop2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 9 Then
        Label_name1 = " ȫ��ֹͣ:"
        Label_text1 = "������ǰ�����б�"
        label_rebuld1
        Change_Main_Image 9
    End If
End Sub
'10
Private Sub list_output_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 10 Then
        Label_name = " �����б�: "
        If sysSet.list_type = 1 Then
            Label_text = "����HTML��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        ElseIf sysSet.list_type = 2 Then
            Label_text = "����TXT+BAT��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        Else
            Label_text = "����LST��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        End If
        label_rebuld
        Change_Main_Image 10
    End If
End Sub

Private Sub out_all_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 10 Then
        Label_name1 = " �����б�: "
        If sysSet.list_type = 1 Then
            Label_text1 = "����HTML��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        ElseIf sysSet.list_type = 2 Then
            Label_text1 = "����TXT+BAT��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        Else
            Label_text1 = "����LST��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        End If
        label_rebuld1
        Change_Main_Image 10
    End If
End Sub

Private Sub user_list_output_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 10 Then
        Label_name1 = " �����б�:"
        If sysSet.list_type = 1 Then
            Label_text1 = "����HTML��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        ElseIf sysSet.list_type = 2 Then
            Label_text1 = "����TXT+BAT��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        Else
            Label_text1 = "����LST��ʽ�����б� (��������>�������пɸ��ĺͲ鿴˵��)"
        End If
        label_rebuld1
        Change_Main_Image 10
    End If
End Sub
'11
Private Sub find_text_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 11 Then
        Label_name1 = " ��������: "
        Label_text1 = "��д��Ҫ���ҵ��ı�"
        label_rebuld1
        Label_name = " ��������: "
        Label_text = "������һ��ƥ���ַ�"
        label_rebuld
        Change_Main_Image 11
    End If
End Sub
'12

Private Sub user_list_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error GoTo ErrorHandle
    If mouse_dic <> 12 Then
        Label_name1 = " ����б�: "
        Label_text1 = "���б��б�Ǹ�ѡ��ȷ��������ᣨ�Ҽ��г���ϸ�˵���"
        label_rebuld1
        Change_Main_Image 12
    End If
    
    If list_scoll_id > 0 Then
        Dim ids As Double
        ids = user_list.HitTest(x, y).Index - list_scoll_id
        '�������,��Ļ�Ϲ�
        If ids > 0 Then
            Do While user_list.HitTest(x, y).Index - list_scoll_id > 0
                list_scoll_idm = list_scoll_idm + 1
                user_list.ListItems(list_scoll_id - list_scoll_idm).EnsureVisible
                DoEvents
            Loop
            list_scoll_idm = 0
            list_scoll_id = user_list.HitTest(x, y).Index
        ElseIf ids < 0 Then
            Do While user_list.HitTest(x, y).Index - list_scoll_id < -0
                list_scoll_idm = list_scoll_idm + 1
                user_list.ListItems(list_scoll_id + list_scoll_idm).EnsureVisible
                DoEvents
            Loop
            list_scoll_idm = 0
            list_scoll_id = user_list.HitTest(x, y).Index
        End If
    End If
    Exit Sub
ErrorHandle:
    list_scoll_idm = 0
    
End Sub

Private Sub List1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error GoTo ErrorHandle
    If mouse_dic <> 12 Then
        Label_name = " �б��嵥: "
        Label_text = "�ڵ�ǰ�б�ɾ����ѡ����Ҫ���ļ�"
        label_rebuld
        label_rebuld1
        Change_Main_Image 12
    End If
    
    If list_scoll_id > 0 Then
        Dim ids As Double
        ids = List1.HitTest(x, y).Index - list_scoll_id
        '�������,��Ļ�Ϲ�
        If ids > 0 Then
            Do While List1.HitTest(x, y).Index - list_scoll_id > 0
                list_scoll_idm = list_scoll_idm + 1
                List1.ListItems(list_scoll_id - list_scoll_idm).EnsureVisible
                DoEvents
            Loop
            list_scoll_idm = 0
            list_scoll_id = List1.HitTest(x, y).Index
        ElseIf ids < 0 Then
            Do While List1.HitTest(x, y).Index - list_scoll_id < -0
                list_scoll_idm = list_scoll_idm + 1
                List1.ListItems(list_scoll_id + list_scoll_idm).EnsureVisible
                DoEvents
            Loop
            list_scoll_idm = 0
            list_scoll_id = List1.HitTest(x, y).Index
        End If
    End If
    Exit Sub
ErrorHandle:
    list_scoll_idm = 0
    
End Sub
'13
Private Sub save_all_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 13 Then
        Label_name1 = " �������: "
        Label_text1 = "�����б��е�ȫ���ļ�"
        label_rebuld1
        Change_Main_Image 13
    End If
End Sub

Private Sub user_list_save_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 13 Then
        Label_name1 = " ����ͼƬ: "
        Label_text1 = "�����б��б���ѡ���ļ�"
        label_rebuld1
        Change_Main_Image 13
    End If
End Sub

Private Sub image_save_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 13 Then
        Label_name = " ����ͼƬ: "
        Label_text = "�����б��б���ѡ���ļ�"
        label_rebuld
        Change_Main_Image 13
    End If
End Sub
'14
Private Sub list_check_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 14 Then
        Label_name1 = " ���б��: "
        Label_text1 = "���ѱ��ѡ���������������Ϸ�"
        label_rebuld1
        Change_Main_Image 14
    End If
End Sub
'15
Private Sub user_list_find_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 15 Then
        Label_name1 = " ��������: "
        Label_text1 = "�����б��е��ı����ݣ�Ctrl+F��"
        label_rebuld1
        Change_Main_Image 15
    End If
End Sub

Private Sub list1_find_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 15 Then
        Label_name1 = " ��������: "
        Label_text1 = "�����б��е��ı����ݣ�Ctrl+F��"
        label_rebuld1
        Change_Main_Image 15
    End If
End Sub
'16
Private Sub find_next_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 16 Then
        Label_name1 = " ��������: "
        Label_text1 = "������һ��ƥ���ַ���PageDown��"
        label_rebuld1
        Label_name = " ��������: "
        Label_text = "������һ��ƥ���ַ���PageDown��"
        label_rebuld
        Change_Main_Image 16
    End If
End Sub
'17
Private Sub find_prev_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 17 Then
        Label_name1 = " ��������: "
        Label_text1 = "������һ��ƥ���ַ���PageUp��"
        label_rebuld1
        Label_name = " ��������: "
        Label_text = "������һ��ƥ���ַ���PageUp��"
        label_rebuld
        Change_Main_Image 17
    End If
End Sub
'18
Private Sub top_Picture_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 18 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Label_text1.Visible = False
        Label_name1.Visible = False
        Change_Main_Image 18
    End If
End Sub
'19
Private Sub list_count_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 19 Then
        Label_name = " �б�ͳ��: "
        Label_text = "�б��й��� " & list_count.caption & " ����¼"
        label_rebuld
        Change_Main_Image 19
    End If
End Sub

Private Sub count1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 19 Then
        Label_name1 = " �б�ͳ��: "
        Label_text1 = "�б��й��� " & count1.caption & " ����¼"
        label_rebuld1
        Change_Main_Image 19
    End If
End Sub

Private Sub count2_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 19 Then
        Label_name1 = " �б�ͳ��: "
        Label_text1 = "�б��й��� " & count2.caption & " ����¼"
        label_rebuld1
        Change_Main_Image 19
    End If
End Sub
'20
Private Sub homepage_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 20 Then
        Label_text.Visible = False
        Label_name.Visible = False
        Label_text1.Visible = False
        Label_name1.Visible = False
        Change_Main_Image 20
    End If
End Sub
'21
Private Sub url_list_show_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 21 Then
        url_list_show.Picture = ImageLibrary_Over.ListImages(21).Picture
        Label_name = " ��ʷ����: "
        Label_text = "�鿴�ɹ���������ʷ����"
        label_rebuld
        Change_Main_Image 21
    End If
End Sub

'����-----------------------------------��꾭���ռ��ж�--------------------------------------------------
'---------------------------------------------------------------------------------------------------------

Private Sub Timer_Open_Floder()
    OX_Finish_Download.Show
    OX_Finish_Download.Floders = url_temp
    url_temp = ""
End Sub

Private Function ScriptDownload(ByVal mode As DownloadMode) As Boolean
    On Error Resume Next
    Dim doc As Object
    Select Case mode
    Case OX_INET
        Call fast_down.Cancel
        download_ok = False
        Call start_fast
        Do While download_ok = False
            If form_quit = True Then Download = True: Exit Function
            DoEvents
            Sleep 10
        Loop
    Case OX_WEB
        BrowserW.Show
        Do While BrowserW_load_ok = False
            DoEvents
            Sleep 10
        Loop
        Do While BrowserW.WebBrowser.Busy
            If form_quit = True Then BrowserW.WebBrowser.Stop: BrowserW.Hide: Download = True: Exit Function
            DoEvents
            Sleep 10
        Loop
        download_ok = False
        Call startBrowser_fast
        Call delay(1)
        Do While BrowserW.WebBrowser.Busy
            If form_quit = True Then BrowserW.WebBrowser.Stop: BrowserW.Hide: Download = True: Exit Function
            DoEvents
            Sleep 10
        Loop
        DoEvents
        Set doc = BrowserW.WebBrowser.Document
        'Set objhtml = doc.Body.createtextrange
        'Html_Temp =doc.Body.OuterHtml
        err.Clear
        Html_Temp = doc.All(0).outerHTML
        If err.Number <> 0 Or Trim(Html_Temp) = "" Then Html_Temp = doc.All(1).outerHTML
        BrowserW.WebBrowser.Stop
        BrowserW.Hide
        download_ok = True
    Case Else
    End Select
    Download = False
End Function

Private Sub CheckScriptError()
    If err.Number <> 0 Then
        Call MsgBox("����" & vbCrLf & err.Description, vbOKOnly + vbExclamation, "ִ�нű�����")
        err.Clear
    End If
End Sub

Private Sub DisplayCaption(caption As String)
    OX_RunningInformation_Setting caption
End Sub



'---------------------�Զ��ػ�����---------------------------------------------
Private Sub auto_shutdown_Click()
    If auto_shutdown_tf = False Then
        auto_shutdown_tf = True
        auto_shutdown.Checked = True
        auto_shutdown1.Checked = True
    Else
        auto_shutdown_tf = False
        auto_shutdown.Checked = False
        auto_shutdown1.Checked = False
    End If
    Change_Main_Image 0
End Sub

Private Sub auto_shutdown1_Click()
    Call auto_shutdown_Click
End Sub
'------------------------------------------------------------------------------


Private Sub check_header_StateChanged(ByVal State As Integer)
    On Error Resume Next
    If form_quit = True Then check_header.Cancel
    Dim file_size
    'DoEvents
    
    Select Case State
    Case icResponseCompleted
        '��ȡҳ���ļ���С
        OX_RunningInformation_Setting "��ȡҳ���ļ���С"
        If m_lngDocSize = 0 And stop_check_header = False Then
            '35756 �����������
            file_size = check_header.GetHeader("Content-length")
            Content_Range = ""
            Content_Range = check_header.GetHeader("Content-Range")
            
            If file_size = 2 And (LCase(Content_Range) Like "bytes 0-?*/?*") Then
                file_size = Mid(Content_Range, InStrRev(Content_Range, "/") + 1)
                If IsNumeric(file_size) = False Then file_size = ""
            End If
            
            If LenB(file_size) > 0 Then
                m_lngDocSize = CDbl(file_size)
                If IsNumeric(m_lngDocSize) = False Then
                    m_lngDocSize = 0
                    OX_RunningInformation_Setting "ERROR �ļ���Сδ֪"
                    
                ElseIf m_lngDocSize < 1 Then
                    '��ȡԶ�����ݳ���
                    m_lngDocSize = 0
                    OX_RunningInformation_Setting "ERROR �ļ���Сδ֪"
                    
                End If
                
            Else   'NOT LEN(INET1.GETHEADER("CONTENT-LENGTH"))...
                'ERROR
                m_lngDocSize = 0
                OX_RunningInformation_Setting "ERROR �ļ���Сδ֪"
            End If
            If m_lngDocSize = 0 Then m_lngDocSize = 1
        End If
        check_header.Cancel
    End Select
End Sub

Public Sub fast_down_StateChanged(ByVal State As Integer)
    On Error Resume Next
    Static ic_error_time As Byte
    
    If form_quit = True Then fast_down.Cancel
    DoEvents
    
    Dim vtData As Variant '���ݱ���
    Dim binBuffer() As Byte
    Dim firt_byte As Boolean
    Dim buff() As Byte
    Dim file_size
    Dim file_size_long As Double
    Dim gzip_tf As Boolean
    
    Select Case State
        
    Case icResponseCompleted
        
        '����ļ���С--------------------------------------
        file_size = fast_down.GetHeader("Content-length")
        If LenB(file_size) > 0 Then
            file_size_long = CDbl(file_size)
        Else
            file_size_long = 0
        End If
        
        If IsNumeric(file_size_long) = False Then
            file_size_long = 0
        ElseIf file_size_long < 1 Then
            file_size_long = 0
        End If
        '----------------------------------------------
        
        
        OX_RunningInformation_Setting "��ʼ����" & strURL
        If file_size_long > 204800 Then
            '-------------------------------------------------
            '����ļ���С�����,ֱ�Ӷ��������Сд�뻺��
            ReDim buff(file_size_long - 1) As Byte
            Dim file_size_tmp As Double
            Dim at_all_long
            
            file_size_tmp = 0
            at_all_long = Int(file_size_long / 1024)
            
            Do   '�ӻ�������ȡ����
                DoEvents
                vtData = fast_down.GetChunk(25600, icByteArray)
                binBuffer = vtData
                
                For i = 0 To 25600 - 1
                    DoEvents
                    buff(i + file_size_tmp) = binBuffer(i)
                Next
                
                file_size_tmp = file_size_tmp + 25600
                
                OX_RunningInformation_Setting "��������(" & Int(file_size_tmp / 1024) & "/" & at_all_long & "KB)" & vbCrLf & strURL, 3
                
                If form_quit = True Then fast_down.Cancel: download_ok = True
            Loop Until (LenB(vtData) = 0)
            
            '-------------------------------------------------
        Else
            '-------------------------------------------------
            'δ֪�ļ���С�����,ʹ�ú���д�뻺�������������С(���ļ����ٶ���)
            firt_byte = False
            
            Do   '�ӻ�������ȡ����
                DoEvents
                vtData = fast_down.GetChunk(25600, icByteArray)
                binBuffer = vtData
                If firt_byte = False Then
                    buff = vtData
                    firt_byte = True
                Else
                    buff = UniteByteArray(buff, binBuffer)
                End If
                
                OX_RunningInformation_Setting "��������(" & Int(UBound(buff) / 1024) & "KB)" & vbCrLf & strURL, 3
                
                If form_quit = True Then fast_down.Cancel: download_ok = True
            Loop Until (LenB(vtData) = 0)
            '-------------------------------------------------
        End If
        
        OX_RunningInformation_Setting download_FileName & vbCrLf & "�������(" & Int(UBound(buff) / 1024) & "KB)" & strURL
        lblProgressInfo1.Visible = False
        lblProgressInfo2.Visible = False
        
        file_size = fast_down.GetHeader("Content-Encoding")
        If InStr(LCase(file_size), "gzip") > 0 Then
            Dim a As Boolean
            a = UnCompressGzipByte(buff)
            Html_Temp = bin2str(buff)
        Else
            Html_Temp = bin2str(buff)
        End If
        
        ic_error_time = 0
        If sysSet.DelCache_AftDL = 1 Or sysSet.DelCache_AftDL = 3 Then OX_DeleteUrlCacheEntryW strURL
        download_ok = True
    Case icError
        '������ͨ�ų���
        If ic_error_time <= sysSet.retry_times Then
            ic_error_time = ic_error_time + 1
            Call start_fast
        Else
            ic_error_time = 0
            If fast_down.ResponseCode = 12031 Then
                Dim start_GFW_time As Date
                start_GFW_time = Now()
                DoEvents
                Do While DateDiff("s", start_GFW_time, Now()) < 180
                    If form_quit = True Then Exit Do
                    OX_RunningInformation_Setting "��ҳ����ܷǷ����ȴ�" & (179 - DateDiff("s", start_GFW_time, Now())) & "���ָ���������"
                    DoEvents
                    Sleep 100
                    DoEvents
                Loop
            End If
            Html_Temp = ""
            download_ok = True
        End If
        
    End Select
    
End Sub
Private Function bin2str(ByVal binstr)
    On Error Resume Next
    
    Dim file_long As Double
    
    file_long = UBound(binstr)
    If file_long > 2048000 Then
        OX_RunningInformation_Setting "����ת��ҳ���ı�(���ı����󣬿�����ɳ�������������ĵȴ�)"
    Else
        OX_RunningInformation_Setting "����ת��ҳ���ı�"
    End If
    
    '    Const adTypeBinary = 1
    '    Const adTypeText = 2
    '    Dim BytesStream, StringReturn
    '    Set BytesStream = CreateObject("ADODB.Stream") '����һ��������
    '    With BytesStream
    '
    '        '���淶
    '        '.Type = adTypeText
    '        '.Open
    '        '.WriteText binstr
    '        '.Position = 0
    '        '.Charset = htmlCharsetType
    '        '.Position = 2
    '        'StringReturn = .ReadText
    '        '.Close
    '
    '        .Type = adTypeBinary
    '        .Open
    '        .Write binstr
    '        .Position = 0
    '        .Type = adTypeText
    '        .Charset = htmlCharsetType
    '        StringReturn = .ReadText
    '        .Close
    '    End With
    '    Set BytesStream = Nothing
    bin2str = OX_Bin2CharsetTypeStr(binstr, htmlCharsetType)
End Function


Private Function UniteByteArray(bBa1() As Byte, bBa2() As Byte) As Byte()
    On Error Resume Next
    Dim bUb() As Byte
    Dim iUbd1 As Double
    Dim iUbd2 As Double
    Dim i As Double
    
    iUbd1 = UBound(bBa1)
    iUbd2 = UBound(bBa2)
    ReDim bUb(0 To iUbd1 + iUbd2 + 1) As Byte
    For i = 0 To iUbd1
        DoEvents
        bUb(i) = bBa1(i)
    Next i
    For i = iUbd1 + 1 To UBound(bUb)
        DoEvents
        bUb(i) = bBa2(i - iUbd1 - 1)
    Next i
    UniteByteArray = bUb
End Function




Private Sub find_next_Click()
    On Error Resume Next
    Dim check_i As Integer
    If Trim(find_text.Text = "") Then Exit Sub
    find_unselect_Click
    If user_list.Visible = True And List1.Visible = False Then
        
        check_i = 0
        If user_list.SelectedItem.Index > 0 And user_list.SelectedItem.Index < user_list.ListItems.count Then check_i = user_list.SelectedItem.Index
        user_list.SelectedItem.Selected = False
        For i = check_i + 1 To user_list.ListItems.count
            DoEvents
            If InStr(LCase(user_list.ListItems(i).ListSubItems(1).Text & user_list.ListItems(i).ListSubItems(5).Text), find_text.Text) > 0 Then
                user_list.SelectedItem.Selected = False
                user_list.ListItems(i).EnsureVisible
                user_list.ListItems(i).Selected = True
                Exit Sub
            End If
            user_list.ListItems(i).Selected = True
            user_list.ListItems(i).Selected = False
        Next
        
    ElseIf user_list.Visible = False And List1.Visible = True Then
        
        check_i = 0
        If List1.SelectedItem.Index > 0 And List1.SelectedItem.Index < List1.ListItems.count Then check_i = List1.SelectedItem.Index
        List1.SelectedItem.Selected = False
        For i = check_i + 1 To List1.ListItems.count
            DoEvents
            If InStr(LCase(List1.ListItems(i).ListSubItems(1).Text & List1.ListItems(i).ListSubItems(2).Text), LCase(find_text.Text)) > 0 Then
                List1.SelectedItem.Selected = False
                List1.ListItems(i).EnsureVisible
                List1.ListItems(i).Selected = True
                Exit Sub
            End If
            List1.ListItems(i).Selected = True
            List1.ListItems(i).Selected = False
        Next
        
    End If
End Sub

Private Sub find_prev_Click()
    On Error Resume Next
    Dim check_i As Integer
    If Trim(find_text.Text = "") Then Exit Sub
    find_unselect_Click
    If user_list.Visible = True And List1.Visible = False Then
        check_i = user_list.ListItems.count
        If user_list.SelectedItem.Index > 1 And user_list.SelectedItem.Index <= user_list.ListItems.count Then check_i = user_list.SelectedItem.Index
        user_list.SelectedItem.Selected = False
        For i = check_i - 1 To 1 Step -1
            DoEvents
            If InStr(LCase(user_list.ListItems(i).ListSubItems(1).Text & user_list.ListItems(i).ListSubItems(5).Text), LCase(find_text.Text)) > 0 Then
                user_list.SelectedItem.Selected = False
                user_list.ListItems(i).EnsureVisible
                user_list.ListItems(i).Selected = True
                Exit Sub
            End If
            user_list.ListItems(i).Selected = True
            user_list.ListItems(i).Selected = False
        Next
    ElseIf user_list.Visible = False And List1.Visible = True Then
        check_i = List1.ListItems.count
        If List1.SelectedItem.Index > 1 And List1.SelectedItem.Index < List1.ListItems.count Then check_i = List1.SelectedItem.Index
        List1.SelectedItem.Selected = False
        For i = check_i - 1 To 1 Step -1
            DoEvents
            If InStr(LCase(List1.ListItems(i).ListSubItems(1).Text & List1.ListItems(i).ListSubItems(2).Text), LCase(find_text.Text)) > 0 Then
                List1.SelectedItem.Selected = False
                List1.ListItems(i).EnsureVisible
                List1.ListItems(i).Selected = True
                Exit Sub
            End If
            List1.ListItems(i).Selected = True
            List1.ListItems(i).Selected = False
        Next
    End If
End Sub

Private Sub find_unselect_Click()
    On Error Resume Next
    If user_list.Visible = True And List1.Visible = False Then
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).Selected = True And i <> user_list.SelectedItem.Index Then user_list.ListItems(i).Selected = False
        Next i
    ElseIf user_list.Visible = False And List1.Visible = True Then
        For i = 1 To List1.ListItems.count
            DoEvents
            If List1.ListItems(i).Selected = True And i <> List1.SelectedItem.Index Then List1.ListItems(i).Selected = False
        Next i
    End If
End Sub

Private Sub find_text_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 65 And Shift = vbCtrlMask Then
        find_text.SelStart = 0
        find_text.SelLength = Len(find_text.Text)
    ElseIf (KeyCode = 70 And Shift = vbCtrlMask) Or KeyCode = 27 Then
        user_list_find_Click
    ElseIf KeyCode = 13 Or KeyCode = 34 Then
        find_text.Text = Trim(find_text.Text)
        find_next_Click
    ElseIf KeyCode = 33 Then
        find_text.Text = Trim(find_text.Text)
        find_prev_Click
    End If
End Sub

'Private Sub find_text_KeyPress(KeyAscii As Integer)
'If KeyAscii = 13 Then
'find_text.Text = Trim(find_text.Text)
'find_next_Click
'ElseIf KeyAscii = 27 Then
'user_list_find_Click
'End If
'End Sub

Private Sub Form_Load()
    On Error Resume Next
    '����������-------------------------------------------------------
    If sysSet.bottom_StatusBar = True Then
        show_StatusBar = 255
        StatusBar.Visible = True
    Else
        show_StatusBar = 0
        StatusBar.Visible = False
    End If
    Width = 7100
    Height = 1500 + show_StatusBar
    form_height = 1500 + show_StatusBar
    '-----------------------------------------------------------------
    
    '��������--------------------------------------------
    TrayI.hwnd = Form1.hwnd
    TrayI.uId = 0
    TrayI.uFlags = NIF_ICON Or NIF_MESSAGE Or NIF_TIP
    TrayI.ucallbackMessage = WM_MBUTTONDOWN
    '��������ƶ���������ʱ��ʾ��Tip
    TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
    TrayI.cbSize = Len(TrayI)
    '--------------------------------------------------
    form_quit = True
    Web_Browser_header_tf = True
    Frame1.Enabled = False
    StatusBar.Enabled = False
    Form_Start_Timer.Enabled = True
    Form1.caption = title_info
    '��������DPI��ɵ�ͼƬ��λ
    top_Picture(0).PaintPicture ImageLibrary_Normal.ListImages(18).Picture, 0, 0, top_Picture(0).ScaleWidth, top_Picture(0).ScaleHeight
    top_Picture(1).PaintPicture ImageLibrary_Normal.ListImages(19).Picture, 0, 0, top_Picture(1).ScaleWidth, top_Picture(1).ScaleHeight
    homepage.PaintPicture ImageLibrary_Normal.ListImages(20).Picture, 0, 0, homepage.ScaleWidth, homepage.ScaleHeight
End Sub

Private Sub Load_Form()
    On Error Resume Next
    
    DoEvents
    step_one
    
    '    Label_name.Font.Name = "PMingLiU"
    '    Label_name.Font.Charset = 136
    '    Label_text.Font.Name = "PMingLiU"
    '    Label_text.Font.Charset = 136
    '    Label_name1.Font.Name = "PMingLiU"
    '    Label_name1.Font.Charset = 136
    '    Label_text1.Font.Name = "PMingLiU"
    '    Label_text1.Font.Charset = 136
    '    url_input.Font.Name = "MingLiu"
    '    url_input.Font.Charset = 136
    '    Me.Font.Name = "MingLiu"
    '    Me.Font.Charset = 136
    '    user_list.Font.Name = "MingLiu"
    '    user_list.Font.Charset = 136
    '    user_list.Font.Name = "MingLiu"
    '    user_list.Font.Charset = 136
    'text_sortname.Font = "�¼����w"
    
    
    LaodingBar_step "��ʼ���������" '��Ϣ��ʾ
    
    If sysSet.always_top = True Then always_on_top sysSet.always_top
    now_tray = False
    form_IsDelay_TF = False
    
    auto_shutdown_tf = False
    rename_rules_val = 0
    url_Filelist.Path = App_path & "\url"
    pw_163 = ""
    start_fast_method = ""
    proxy_warning = vbOK
    Open_path = ""
    Open_path_set = ""
    download_ok = True
    new_win = False
    list_scoll_id = 0
    list_scoll_idm = 0
    
    LaodingBar_step "��ʼ���ű�����"  '��Ϣ��ʾ
    url_Referer = ""
    urlpage_Referer = ""
    pass_code = ""
    OX_Script_Type = ""
    htmlCharsetType = "GB2312"
    Content_Range = ""
    Call load_in_Script_Code
    
    LaodingBar_step "��ʼ�����ر���" '��Ϣ��ʾ
    fast_down.RequestTimeout = sysSet.time_out
    Inet1.RequestTimeout = sysSet.time_out
    If sysSet.def_path_tf = True Then Form1.fast_set_dir.Enabled = True: Form1.fast_set_dir.Checked = True
    
    
    LaodingBar_step "��ʼ��״̬��" '��Ϣ��ʾ
    '�����ײ�״̬��---------------------------------------------------
    show_inform(0) = "�����������������������վ"
    show_inform(1) = sysSet.update_host & "?key=5"
    StatusBar.Panels(3) = show_inform(0)
    '-----------------------------------------------------------------
    
    
    LaodingBar_step "��ʼ�����"  '��Ϣ��ʾ
    '�������������--------------------------------------------------
    web_Picture.Top = 960
    web_Picture.Left = 60
    Web_Toolbar_W = 0
    For i = 1 To Web_Toolbar.Buttons.count
        Web_Toolbar_W = Web_Toolbar_W + Web_Toolbar.Buttons(i).Width
    Next
    web_Title_Picture.Left = Web_Toolbar_W + 8 * Screen.TwipsPerPixelX
    Web_Browser_Close.Height = Web_Toolbar.Height
    Web_Browser_Close_i.Height = Web_Toolbar.Height
    Web_Browser_Close_i.Width = Web_Browser_Close_i.Height * 30 / 25
    
    LaodingBar_step "��ʼ�������"  '��Ϣ��ʾ
    OX_Get_urllist
    '-----------------------------------------------------------------
    
    LaodingBar_step "��ʼ�б�"  '��Ϣ��ʾ
    '��ʼ���б�-------------------------------------------------------
    Call List1_Clear
    Call user_list_Clear
    Frame2.Top = Frame1.Top
    If sysSet.OX_List_Drag = True Then fast_set_ListDrag.Checked = True
    
    '�����б�ͼ��-------------------------------------
    If sysSet.list_type >= 0 And sysSet.list_type <= 2 Then
        Form1.list_output.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
        Form1.out_all.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
        Form1.user_list_output.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
    End If
    '-------------------------------------------------
    'Web_Browser_url = ""
    
    LaodingBar_step "��ʼ��������"  '��Ϣ��ʾ
    Proxy_set
    
    'process_mh_Click '���̼���
    
    LaodingBar_step "�������"  '��Ϣ��ʾ
    
    
    Frame1.Enabled = True
    StatusBar.Enabled = True
    url_input.SetFocus
    url_input_SelectAll
    
    For i = 1 To 10
        Form_Laoding.Move Me.ScaleWidth * (i / 20), Me.ScaleHeight * (i / 20), Me.ScaleWidth * (10 - i) / 10, Me.ScaleHeight * (10 - i) / 10
        Form_LaodingLab.Move (Form_Laoding.Width - Form_LaodingLab.Width) / 2, (Form_Laoding.Height - Form_LaodingLab.Height) / 2
        DoEvents
        Sleep 15
    Next
    
    Form_Laoding.Visible = False
End Sub

Private Sub LaodingBar_step(OX_LBS_title As String)
    Form_LaodingLab.caption = OX_LBS_title
    Form_LaodingLab.Move (Form_Laoding.Width - Form_LaodingLab.Width) / 2, (Form_Laoding.Height - Form_LaodingLab.Height) / 2
End Sub

Public Sub always_on_top(on_top As Boolean)
    Dim flags As Integer
    flags = SWP_NOSIZE Or SWP_NOMOVE Or SWP_SHOWWINDOW
    If on_top = True Then
        SetWindowPos Form1.hwnd, HWND_TOPMOST, 0, 0, 0, 0, flags
        top_Picture(1).Visible = True
        top_Picture(0).Visible = False
    Else
        SetWindowPos Form1.hwnd, -2, 0, 0, 0, 0, flags
        top_Picture(0).Visible = True
        top_Picture(1).Visible = False
    End If
End Sub

Private Sub Form_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, y As Single)
    If down_count = 0 Then
        OLEDragDrop Data
    ElseIf download_ok = True And form_quit = True Then
        If MsgBox("�б��д������ݣ��˴β����ᵼ�����ݶ�ʧ���Ƿ������", vbOKCancel + vbDefaultButton2 + vbExclamation, "����") = vbCancel Then Exit Sub
        step_one
        Frame1.Visible = True
        OLEDragDrop Data
    End If
End Sub



Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    sysTray False
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error Resume Next
    
    If now_tray = False Then Exit Sub
    
    Dim lMsg As Single
    lMsg = x / Screen.TwipsPerPixelX
    
    Select Case lMsg
        
    Case WM_LBUTTONUP
        '�����������ʾ����
        sysTray False
        
    Case WM_RBUTTONUP
        
        PopupMenu TrayMenu '�������ϵͳTrayͼ���ϵ��Ҽ����򵯳��˵�TrayMenu
        
        ' Case WM_MOUSEMOVE
        ' Case WM_LBUTTONDOWN
        ' Case WM_LBUTTONDBLCLK
        'Case WM_RBUTTONDOWN
        'TrayI.hIcon = ico(1).Picture
        'Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        ' Case WM_RBUTTONDBLCLK
        ' Case Else
    End Select
    
End Sub


Private Function sysTray(Show_Tray As Boolean)
    On Error Resume Next
    
    If Show_Tray = True And now_tray = False Then
        TrayI.hIcon = Form1.Icon
        TrayI.uFlags = NIF_ICON Or NIF_MESSAGE Or NIF_TIP
        Call Shell_NotifyIcon(NIM_ADD, TrayI)
        ShowWindow Form1.hwnd, SW_HIDE
        '    Form1.Width = 0
        '    Form1.Height = 0
        
        
        now_tray = True
        
    ElseIf now_tray = True And Show_Tray = False Then
        
        TrayI.uFlags = NIF_ICON Or NIF_MESSAGE Or NIF_TIP
        Call Shell_NotifyIcon(NIM_DELETE, TrayI)
        ShowWindow Form1.hwnd, SW_RESTORE
        'Const CB_SHOWDROPDOWN = &H14F
        'SendMessage Form1.hwnd, CB_SHOWDROPDOWN, True, 0
        Form1.SetFocus
        'Form1.Show
        If max_size = False Then always_on_top sysSet.always_top
        now_tray = False
    End If
    
End Function

Private Sub Check_Form_out_Destop(ByRef win_max As Boolean)
    On Error GoTo exit_err
    If Form1.Left + Form1.Width > windows_destop_Width Then
        If Form1.Width < windows_destop_Width Then
            Form1.Left = windows_destop_Width - Form1.Width
            If Form1.Left < 0 Then Form1.Left = 0
        Else
            Form1.Left = 0
        End If
    End If
    
    If Form1.Top + Form1.Height > windows_destop_Height - 500 Then
        If Form1.Height < windows_destop_Height Then
            Form1.Top = windows_destop_Height - 500 - Form1.Height
            If Form1.Top < 0 Then Form1.Top = 0
        Else
            Form1.Top = 0
        End If
    End If
    
exit_err:
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    Static max_size As Boolean
    
    If Form1.WindowState = 1 Then
        If sysSet.sysTray = True Then sysTray True ' And Not (down_count = 0 And (Web_Browser.Visible = True Or Web_Search.Visible = True))
    Else
        
        If sysSet.sysTray = True And now_tray = True Then sysTray False
        
        If Form1.WindowState = 2 Then
            always_on_top False
            max_size = True
        ElseIf max_size = True And Form1.WindowState = 0 Then
            always_on_top sysSet.always_top
            max_size = False
        End If
        
        If Form1.Width < 7100 Then Form1.Width = 7100
        If Form1.Height < form_height Then Form1.Height = form_height
        If max_size = False Then Call Check_Form_out_Destop(max_size)
        Call frame_resize
        
    End If
End Sub

Public Sub frame_resize()
    On Error Resume Next
    
    '    StatusBar.Width = Form1.ScaleWidth - StatusBar.Height
    '    StatusBar.Top = Form1.ScaleHeight - StatusBar.Height
    If Form_Laoding.Visible = True Then
        Form_Laoding.Move 0, 0, Form1.ScaleWidth, Form1.ScaleHeight
        Form_LaodingLab.Top = (Form_Laoding.Height - Form_LaodingLab.Height) / 2
        Form_LaodingLab.Left = (Form_Laoding.Width - Form_LaodingLab.Width) / 2
    End If
    Frame1.Width = Form1.ScaleWidth - 100
    Frame2.Width = Form1.ScaleWidth - 100
    Frame2.Height = Form1.ScaleHeight - 100 - show_StatusBar
    web_Picture.Width = Form1.ScaleWidth
    web_Picture.Height = Form1.ScaleHeight - 700 - show_StatusBar
    Frame_search.Left = Form1.ScaleWidth - 3120
    top_Picture(0).Left = Frame1.Width - 635
    top_Picture(1).Left = top_Picture(0).Left
    homepage.Left = top_Picture(0).Left - 925
    Proxy_img(0).Left = homepage.Left - 1150
    Proxy_img(1).Left = Proxy_img(0).Left
    Proxy_img(2).Left = Proxy_img(0).Left
    
    '�����жϹؼ�
    url_input.Width = Frame1.Width - 2350
    url_input_web.Width = url_input.Width
    url_Filelist.Width = url_input.Width - 315
    url_Filelist_Close.Left = url_Filelist.Left + url_Filelist.Width
    If Form1.ScaleHeight - 650 < 3000 Then '1830
        url_Filelist.Height = Form1.ScaleHeight - 650
    Else
        url_Filelist.Height = 3000
    End If
    url_list_show.Left = url_input.Left + url_input.Width
    makelist_command.Left = url_input.Left + url_input.Width + 270
    
    If down_count = 0 Then
        Web_Browser.Width = Frame1.Width
        Web_Toolbar.Width = Web_Browser.Width
        Web_Browser_Close.Left = Web_Browser.Width - 23 * Screen.TwipsPerPixelX
        Web_Search.Width = Frame1.Width
        If Web_Browser.Visible = True Then Web_Browser.Height = Form1.Height - 1510 - show_StatusBar - Web_Toolbar.Height
        If Web_Search.Visible = True Then Web_Search.Height = Form1.Height - 1510 - show_StatusBar
    ElseIf down_count = 1 Then
        
        'List1Ĭ�Ͽ�� 1��� 1000.06 - 2�ļ��� 2000 - 3�������� 1440.00 - 4�������� 1200
        List1.Width = Frame1.Width
        List1.Height = Form1.Height - 1510 - show_StatusBar
        List1.ColumnHeaders.Item(3).Width = 2400
        If List1.Width - 5000 > 4000 And List1.Width - 5000 < 10000 Then
            List1.ColumnHeaders.Item(2).Width = 4000
            List1.ColumnHeaders.Item(4).Width = List1.Width - 8000
        ElseIf List1.Width - 5000 > 10000 Then
            List1.ColumnHeaders.Item(4).Width = 7000
            List1.ColumnHeaders.Item(2).Width = List1.Width - 10900
        Else
            List1.ColumnHeaders.Item(2).Width = List1.Width - 5200
        End If
        
        'user_listĬ�Ͽ�� 1��� 1000 2������� 1440.00 - 3������� 1000 - 4���/���� 1000 - 5ͼƬ���� 1000 - 6������� 1000
        user_list.Height = Frame2.Height - 900
        user_list.Width = Frame2.Width - 100
        
        If user_list.Width - 5000 > 4000 Then
            user_list.ColumnHeaders.Item(2).Width = 3500
            user_list.ColumnHeaders.Item(4).Width = (user_list.Width - 6900) * 0.5
            user_list.ColumnHeaders.Item(6).Width = (user_list.Width - 6900) * 0.5
        Else
            user_list.ColumnHeaders.Item(3).Width = 1000
            user_list.ColumnHeaders.Item(4).Width = 1000
            user_list.ColumnHeaders.Item(5).Width = 1000
            user_list.ColumnHeaders.Item(6).Width = 1000
            user_list.ColumnHeaders.Item(2).Width = user_list.Width - 5400
        End If
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If form_quit = False And sysSet.askquit = True Then
        If MsgBox("����ִ�в������Ƿ��˳���", vbOKCancel + vbDefaultButton2, "�˳�ѯ��") = vbCancel Then Cancel = True: Exit Sub
    End If
    form_quit = True
    DoEvents
    sysTray False
    End
End Sub

Private Sub Frame1_Click()
    url_Filelist_Close.Visible = False
    url_Filelist.Visible = False
End Sub

Private Sub Frame1_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, y As Single)
    If down_count = 0 Then
        OLEDragDrop Data
    ElseIf download_ok = True And form_quit = True Then
        If List1.ListItems.count > 0 Then
            If MsgBox("�б��д������ݣ��˴β����ᵼ�����ݶ�ʧ���Ƿ������", vbOKCancel + vbDefaultButton2 + vbExclamation, "����") = vbCancel Then Exit Sub
        End If
        step_one
        OLEDragDrop Data
    End If
End Sub

Private Sub Frame2_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, y As Single)
    If down_count = 0 Then
        OLEDragDrop Data
    ElseIf download_ok = True And form_quit = True Then
        If user_list.ListItems.count > 0 Then
            If MsgBox("�б��д������ݣ��˴β����ᵼ�����ݶ�ʧ���Ƿ������", vbOKCancel + vbDefaultButton2 + vbExclamation, "����") = vbCancel Then Exit Sub
        End If
        step_one
        Frame1.Visible = True
        OLEDragDrop Data
    End If
End Sub



Private Sub homepage_Click()
    On Error Resume Next
    Dim homepage_str As String
    homepage_str = LCase(sysSet.update_host)
    If InStr(homepage_str, "ox163.googlecode.com") > 0 Then homepage_str = "https://code.google.com/p/ox163/"
    ShellExecute 0&, vbNullString, StrConv(homepage_str, vbUnicode), vbNullString, vbNullString, vbNormalFocus
End Sub

Private Sub image_save_Click()
    '�����б�ͼƬ
    On Error Resume Next
    rename_rules_val = 255
    PopupMenu rename_rules, , image_save.Left + OX_POPMENU_X, image_save.Top + image_save.Height + OX_POPMENU_Y
    If rename_rules_val = 255 Then
        rename_rules_val = 0: Exit Sub
    End If
    
    Folder_path = ""
    If sysSet.def_path_tf = True And sysSet.def_path <> "" Then
        Folder_path = GetFolder("Ĭ�������ļ���", sysSet.def_path & "\", True)
    Else
        Folder_path = GetFolder("��ѡ�������ļ���", Open_path_set & "\", True)
    End If
    
    
    
    If Mid(Folder_path, 2, 2) = ":\" Or (Len(Folder_path) = 2 And Right(Folder_path, 1) = ":") Then
start:
        If OX_ChkDiskStatus(Folder_path) = False Then Exit Sub
        '��·���˵�
        text_sortname = GetShortName(Folder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid(text_sortname, 1, Len(text_sortname) - 1)
        Open_path = text_sortname
        Open_path_set = text_sortname
        
        Call save_list_image(Open_path)
        
    ElseIf sysSet.savedef = False Then
        Folder_path = App_path & "\download": GoTo start
        
    Else
        msg = MsgBox("��û��ѡ���ļ��У������ļ��в���ȷ���Ƿ�������᣿" & vbCrLf & "<��>���ļ����ص�Ĭ��Ŀ¼��" & App_path & "\download" & vbCrLf & "<��>��������", vbYesNo + vbExclamation + vbDefaultButton2, "����ѯ��")
        If msg = vbYes Then Folder_path = App_path & "\download": GoTo start
        
    End If
    
    'text_sortname = GetShortName("F:\�ҵĳ���\������ҳ����\OX163\download")
    'Open_path = text_sortname
    'save_list_image text_sortname
    
End Sub

Private Sub list1_find_Click()
    user_list_find_Click
End Sub

Private Sub List1_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    If Item.Selected = False Then Exit Sub
    If Item.Checked = True Then
        List1.Enabled = False
        For i = 1 To List1.ListItems.count
            If List1.ListItems(i).Selected = True Then List1.ListItems(i).Checked = True
        Next
        List1.Enabled = True
    Else
        List1.Enabled = False
        For i = 1 To List1.ListItems.count
            If List1.ListItems(i).Selected = True Then List1.ListItems(i).Checked = False
        Next
        List1.Enabled = True
    End If
End Sub

Private Sub List1_KeyDown(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    Dim copy_txt As String
    If Shift = vbCtrlMask And KeyCode = 65 Then
        List1.Enabled = False
        List1.Visible = False
        For i = 1 To List1.ListItems.count
            DoEvents
            List1.ListItems(i).Selected = True
        Next
        List1.Visible = True
        List1.Enabled = True
        List1.SetFocus
    ElseIf KeyCode = 67 And Shift = vbCtrlMask Then
        If sysSet.list_copy = True Then
            GoTo List1_url_copy
        Else
            GoTo List1_name_copy
        End If
    ElseIf KeyCode = 67 And Shift = vbAltMask Then
        If sysSet.list_copy = True Then
            GoTo List1_name_copy
        Else
            GoTo List1_url_copy
        End If
    ElseIf KeyCode = 70 And Shift = vbCtrlMask Then
        user_list_find_Click
    ElseIf KeyCode = 27 And Frame_search.Visible = True Then
        Frame_search.Visible = False
    End If
    Exit Sub
    '����url List1_url_copy:
    '�����ļ��� List1_name_copy:
    '����url+�ļ��� List1_lst_copy:
    '����Ubb���� List1_ubb_copy:
    '��������
    '--------------------------------------------------
List1_url_copy:
    List1.Enabled = False
    List1.Visible = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & Trim(List1.ListItems(i).ListSubItems(3).Text) & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Visible = True
    List1.Enabled = True
    List1.SetFocus
    Exit Sub
    '--------------------------------------------------
List1_name_copy:
    List1.Enabled = False
    List1.Visible = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & Trim(List1.ListItems(i).ListSubItems(1).Text) & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Visible = True
    List1.Enabled = True
    List1.SetFocus
    Exit Sub
    '--------------------------------------------------
List1_lst_copy:
    List1.Enabled = False
    List1.Visible = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & Trim(List1.ListItems(i).ListSubItems(3).Text) & "?/" & Trim(List1.ListItems(i).ListSubItems(1).Text) & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Visible = True
    List1.Enabled = True
    List1.SetFocus
    Exit Sub
    '--------------------------------------------------
List1_ubb_copy:
    List1.Enabled = False
    List1.Visible = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & "[url=" & Trim(List1.ListItems(i).ListSubItems(3).Text) & "]" & Trim(List1.ListItems(i).ListSubItems(1).Text) & "[/url]" & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Visible = True
    List1.Enabled = True
    List1.SetFocus
End Sub


Private Sub List1_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error GoTo ErrorHandle
    If sysSet.OX_List_Drag = True Then list_scoll_id = List1.HitTest(x, y).Index
    Exit Sub
ErrorHandle:
    list_scoll_id = 0
    list_scoll_idm = 0
End Sub

Private Sub List1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error Resume Next
    list_scoll_id = 0
    list_scoll_idm = 0
    If Button = 2 And List1.ListItems.count > 0 Then
        PopupMenu menu_pic
    End If
    
End Sub

Private Sub open_lock_Click()
    On Error Resume Next
    
    Dim pass As String, pass_user As String
    pass_user = Trim(InputBox("������163ͨ��֤�ʺ�", "����"))
    If is_username(pass_user) = False Then MsgBox "163ͨ��֤����", vbOKOnly, "����": Exit Sub
    pass = InputBox("������""" & pass_user & """�ʺ�����", "����")
    If pass = "" Then MsgBox "���벻��Ϊ��", vbOKOnly, "����": Exit Sub
    
    '    url_temp = url_input.Text
    '    Form1.Enabled = False
    '    password_win.isDown = -1
    '    password_win.Combo1.Visible = False
    '    password_win.Show
    '
    '    Do While Form1.Enabled = False
    '        Sleep 10
    '        DoEvents
    '    Loop
    '    If url_input.Text = "" Then url_input.Text = url_temp: Exit Sub
    
    fast_down.Cancel
    download_ok = False
    form_quit = False
    start_User format_username(pass_user, 1), pass
    Do While download_ok = False
        If form_quit = True Then url_input.Enabled = True: Exit Sub
        Sleep 10
        DoEvents
    Loop
    url_input = "http://photo.163.com/" & pass_user & "/"
    url_input.Enabled = True
    form_quit = True
    view_command_Click
End Sub

Private Sub search_internt_Click()
    On Error Resume Next
    form_height = 3000
    If Form1.WindowState = 0 Then
        If Form1.Width < 11000 Then Form1.Width = 15000
        If Form1.Height < 8500 Then Form1.Height = 8500
    End If
    newform_resize
    Web_Browser.Visible = False
    web_Picture.Visible = False
    Web_Search.Width = Frame1.Width
    Web_Search.Visible = True
    If InStr(LCase(s136_title), LCase("OX163")) < 1 Then
    delay 1
        Web_Search.Navigate "http://163.ugschina.com/"
    End If
    Call Web_Search_StatusTextChange("��163�������...")
End Sub

Private Sub search163_Click()
    On Error Resume Next
    If Web_Search.Visible = True Then Web_Search.Visible = False: step_one: Form1.Width = 7100: Exit Sub
    search_internt_Click
End Sub

Private Sub setProgram_Click()
    sys.Top = Form1.Top
    sys.Left = Form1.Left
    sys.Show
End Sub

Private Sub StatusBar_PanelClick(ByVal Panel As MSComctlLib.Panel)
    On Error Resume Next
    If Panel.Tag = "ref" Then
        OX_History_Logs.Show
        If OX_Script_Type = "" Then OX_History_Logs.OXH_tool.Buttons(1).Image = 1: OX_History_Logs.OXH_tool.Buttons(2).Image = 4: OX_History_Logs.listView(0).Visible = False: OX_History_Logs.listView(1).Visible = True
    ElseIf Panel.Tag = "fastmode" Then
        fast_set_PA.Enabled = IIf(Len(sysSet.proxy_A) > 4, True, False)
        fast_set_PB.Enabled = IIf(Len(sysSet.proxy_B) > 4, True, False)
        PopupMenu fast_set
    ElseIf LCase(show_inform(1)) Like "http*" Then
        ShellExecute 0&, vbNullString, StrConv(show_inform(1), vbUnicode), vbNullString, vbNullString, vbNormalFocus
    End If
End Sub

Private Sub Refresh_Panel()
    On Error Resume Next
    Dim Panel_info
    Panel_info = Trim(update.OpenURL(sysSet.update_host & "Panel_info.asp?key=" & down_count & "&ntime=" & CDbl(Now())))
    show_inform(0) = Mid(Panel_info, 1, InStr(Panel_info, "|") - 1)
    show_inform(1) = Mid(Panel_info, InStr(Panel_info, "|") + 1)
    StatusBar.Panels(3) = show_inform(0)
End Sub

'------------------------------��������------------------------------------------------------------------------------
'Const IDLE_PRIORITY_CLASS = &H40
'Const BELOW_NORMAL_PRIORITY_CLASS = &H4000
'Const NORMAL_PRIORITY_CLASS = &H20
'Const ABOVE_NORMAL_PRIORITY_CLASS = &H8000
'Const HIGH_PRIORITY_CLASS = &H80
'Const REALTIME_PRIORITY_CLASS = &H100

Private Sub process_m_Click()
    Dim CurrentProcesshWnd As Long
    CurrentProcesshWnd = GetCurrentProcess
    Call SetPriorityClass(CurrentProcesshWnd, &H20)
    process_m.Checked = True
    process_mh.Checked = False
    process_h.Checked = False
    Me.process_set.caption = "��-����"
End Sub
Private Sub process_mh_Click()
    Dim CurrentProcesshWnd As Long
    CurrentProcesshWnd = GetCurrentProcess
    Call SetPriorityClass(CurrentProcesshWnd, &H8000)
    process_m.Checked = False
    process_mh.Checked = True
    process_h.Checked = False
    Me.process_set.caption = "��-����"
End Sub
Private Sub process_h_Click()
    Dim CurrentProcesshWnd As Long
    CurrentProcesshWnd = GetCurrentProcess
    Call SetPriorityClass(CurrentProcesshWnd, &H80)
    process_m.Checked = False
    process_mh.Checked = False
    process_h.Checked = True
    Me.process_set.caption = "��-����"
End Sub
'-------------------------------------------------------------------------------------------------------------------
'fast_set_PA
Private Sub fast_set_PA_Click()
    If sysSet.proxy_A_type = 2 Then
        sysSet.proxy_A_type = 0
    Else
        sysSet.proxy_A_type = 2
    End If
    Proxy_set
End Sub

Private Sub fast_set_PB_Click()
    If sysSet.proxy_B_type = 2 Then
        sysSet.proxy_B_type = 0
    Else
        sysSet.proxy_B_type = 2
    End If
    Proxy_set
End Sub

Private Sub fast_set_web_Click()
    On Error Resume Next
    Dim temp_str As String
    If down_count = 1 Then Exit Sub
    If fast_set_web.Checked = False Then
        fast_set_web.Checked = True
        url_input_web.Visible = True
        url_input.Visible = False
        url_input_web.SetFocus
        temp_str = url_input
        show_web_input
        url_input = temp_str
    Else
        fast_set_web.Checked = False
        url_input_web.Visible = False
        url_input.Visible = True
        url_input.SetFocus
    End If
End Sub

Private Sub show_web_input()
    On Error Resume Next
    '����web�����---------------------------------
    If url_input_web.Visible = True And first_show = False Then
        url_input_web.Silent = True
        url_input_web.Navigate "about:blank"
        url_input_web.Stop
        url_input_web.Document.Open
        If OX_Dirfile(App_path & "\include\sys\url_input.htm") = True Then
            url_input_web.Document.Write load_normal_file(App_path & "\include\sys\url_input.htm", -1)
        Else
            url_input_web.Document.Write url_web_html.Text
        End If
        url_input_web.Document.Close
        url_Filelist.Visible = False
        url_Filelist_Close.Visible = False
    End If
    '---------------------------------------------
End Sub

Private Sub fast_set_dir_Click()
    fast_set_dir.Checked = False
    fast_set_dir.Enabled = True
    If sysSet.def_path = "" Then
        fast_set_dir.Enabled = False
    ElseIf sysSet.def_path_tf = False Then
        sysSet.def_path_tf = True
        fast_set_dir.Checked = True
    ElseIf sysSet.def_path_tf = True Then
        sysSet.def_path_tf = False
    End If
End Sub

Private Sub fast_set_ListDrag_Click()
    If sysSet.OX_List_Drag = True Then
        fast_set_ListDrag.Checked = False
        sysSet.OX_List_Drag = False
    ElseIf sysSet.OX_List_Drag = False Then
        fast_set_ListDrag.Checked = True
        sysSet.OX_List_Drag = True
    End If
End Sub

Private Sub Proxy_img_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
    If mouse_dic <> 26 Then
        Label_name = " ��������: "
        Label_text = "���������Ѿ�����"
        label_rebuld
        mouse_dic = 26
    End If
End Sub

Private Sub top_Picture_Click(Index As Integer)
    If Form1.WindowState = 2 Then always_on_top False: Exit Sub
    If top_Picture(0).Visible = True = sysSet.always_top Then top_Picture(0).Visible = False: top_Picture(1).Visible = True: Exit Sub
    sysSet.always_top = Not sysSet.always_top
    WriteIniTF "maincenter", "always_top", sysSet.always_top
    always_on_top sysSet.always_top
End Sub

Private Sub list_back1_Click()
    pw_163 = ""
    url_temp = ""
    Web_Browser.Visible = False
    Web_Search.Visible = False
    Frame1.Visible = True
    step_one
    search_end
    'If sysSet.bottom_StatusBar = True Then Refresh_Panel
End Sub

Private Sub list_check_Click()
    Dim a As Long, i As Long, j As Long
    If user_list.ListItems.count < 1 Then Exit Sub
    setProgram.Enabled = False
    list_back1.Enabled = False
    out_all.Enabled = False
    save_all.Enabled = False
    list_check.Enabled = False
    user_list.Enabled = False
    
    j = 1
    i = 1
    
    user_list.ColumnHeaders.Item(1).Text = "���"
    user_list.ColumnHeaders.Item(2).Text = "�������"
    user_list.ColumnHeaders.Item(3).Text = "�������"
    user_list.ColumnHeaders.Item(4).Text = "���/����"
    user_list.ColumnHeaders.Item(5).Text = "ͼƬ����"
    user_list.ColumnHeaders.Item(6).Text = "�������"
    
    user_list.Sorted = False
    
    Do
        If user_list.ListItems(i).Checked = False Then
            a = user_list.ListItems.count + 1
            'book_sort
            user_list.ListItems.Add , , user_list.ListItems(i).Text
            'book_name
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(1).Text
            'book_psw
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(2).Text
            'book_ID
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(3).Text
            'book_number
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(4).Text
            'book_disc
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(5).Text
            'book_disc
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(6).Text
            user_list.ListItems.Remove i
            GoTo retry_next
        End If
        i = i + 1
retry_next:
        j = j + 1
    Loop While (j <= user_list.ListItems.count)
    
    user_list.ListItems(1).EnsureVisible
    
    user_list.Enabled = True
    setProgram.Enabled = True
    list_back1.Enabled = True
    out_all.Enabled = True
    save_all.Enabled = True
    list_check.Enabled = True
    user_list.Enabled = True
End Sub


Private Sub menu_all_Click()
    user_list.Enabled = False
    For i = 1 To user_list.ListItems.count
        DoEvents
        user_list.ListItems(i).Checked = True
    Next
    user_list.Enabled = True
End Sub

Private Sub menu_pic_all_Click()
    List1.Enabled = False
    For i = 1 To List1.ListItems.count
        DoEvents
        List1.ListItems(i).Checked = True
    Next
    List1.Enabled = True
End Sub

Private Sub menu_delall_Click()
    If MsgBox("�Ƿ�ɾ���б�������δ��ǵ���Ŀ��" & Chr(13) & "�ò��������棡", vbYesNo + vbExclamation + vbDefaultButton2, "ɾ��ѯ��") = vbYes Then
        user_list.Enabled = False
        For i = user_list.ListItems.count To 1 Step -1
            DoEvents
            If user_list.ListItems(i).Checked = False Then
                user_list.ListItems.Remove i
            End If
        Next i
        count1.caption = user_list.ListItems.count
        user_list.Enabled = True
    End If
End Sub

Private Sub menu_pic_delall_Click()
    If MsgBox("�Ƿ�ɾ���б�������δ��ǵ���Ŀ��" & Chr(13) & "�ò��������棡", vbYesNo + vbExclamation + vbDefaultButton2, "ɾ��ѯ��") = vbYes Then
        List1.Enabled = False
        For i = List1.ListItems.count To 1 Step -1
            DoEvents
            If List1.ListItems(i).Checked = False Then
                List1.ListItems.Remove i
            End If
        Next i
        list_count.caption = List1.ListItems.count
        count2.caption = List1.ListItems.count
        List1.Enabled = True
    End If
End Sub

Private Sub menu_qsel_Click()
    user_list.Enabled = False
    For i = 1 To user_list.ListItems.count
        DoEvents
        If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Checked = False
    Next
    user_list.Enabled = True
End Sub

Private Sub menu_pic_qsel_Click()
    List1.Enabled = False
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then List1.ListItems(i).Checked = False
    Next
    List1.Enabled = True
End Sub

Private Sub menu_quit_Click()
    user_list.Enabled = False
    For i = 1 To user_list.ListItems.count
        DoEvents
        user_list.ListItems(i).Checked = False
    Next
    user_list.Enabled = True
End Sub

Private Sub menu_pic_quit_Click()
    List1.Enabled = False
    For i = 1 To List1.ListItems.count
        DoEvents
        List1.ListItems(i).Checked = False
    Next
    List1.Enabled = True
End Sub

Private Sub menu_sel_Click()
    user_list.Enabled = False
    For i = 1 To user_list.ListItems.count
        DoEvents
        If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Checked = True
    Next
    user_list.Enabled = True
End Sub

Private Sub menu_pic_sel_Click()
    List1.Enabled = False
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then List1.ListItems(i).Checked = True
    Next
    List1.Enabled = True
End Sub

'-----------------------------------------------------------------------------------
'������д---------------------------------------------------------------------------
'-----------------------------------------------------------------------------------
Private Sub menu_cpsw_Click()
    If MsgBox("�Ƿ�������е�������룿" & Chr(13) & "�ò��������棡", vbYesNo + vbExclamation + vbDefaultButton2, "����") = vbYes Then edit_psw 4, "����д����............" & vbCrLf & ".........."
End Sub

Private Sub menu_spsw_Click()
    If MsgBox("�Ƿ��������ѡ���������룿" & Chr(13) & "�ò��������棡", vbYesNo + vbExclamation + vbDefaultButton2, "����") = vbYes Then edit_psw 2, "����д����............" & vbCrLf & ".........."
End Sub

Private Sub menu_psw_Click()
    Form1.Enabled = False
    password_win.isDown = 0
    If user_list.SelectedItem.ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.SelectedItem.ListSubItems(2).Text
    password_win.password_win_title.caption = "��� """ & Replace(user_list.SelectedItem.ListSubItems(1).Text, "&", "&&") & """ ��" & password_win.password_win_title.caption
    password_win.Show
End Sub

Private Sub menu_pswv_Click()
    edit_psw 2, psw_v
End Sub

Private Sub menu_pswc_Click()
    If user_list.SelectedItem.ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then psw_v = user_list.SelectedItem.ListSubItems(2).Text
End Sub

Public Sub edit_psw(ByVal meth As Byte, ByVal psw_edit As String)
    Form1.Enabled = False
    Select Case meth
        '0��� ��ǰ���
        '1��� ѡ����δ���������
        '2�滻 ���б�ѡ���
        '3��� ����δ���������
        '4�滻 ȫ������
    Case 0
        If user_list.SelectedItem.ListSubItems(2).Text <> "" Then
            user_list.SelectedItem.ListSubItems(2).Text = psw_edit
            If pw_163 <> "" Then WriteUnicodeIni "password", rename_ini_str(user_list.SelectedItem.ListSubItems(3).Text), psw_edit, pw_163
        End If
        
    Case 1
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." And user_list.ListItems(i).Selected = True Then
                user_list.ListItems(i).ListSubItems(21).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(3).Text), psw_edit, pw_163
            End If
        Next i
        
    Case 2
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).Selected = True And user_list.ListItems(i).ListSubItems(2).Text <> "" Then
                user_list.ListItems(i).ListSubItems(2).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(3).Text), psw_edit, pw_163
            End If
        Next i
        
    Case 3
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." Then
                user_list.ListItems(i).ListSubItems(2).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(3).Text), psw_edit, pw_163
            End If
        Next i
        
    Case 4
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(2).Text <> "" Then
                user_list.ListItems(i).ListSubItems(2).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(3).Text), psw_edit, pw_163
            End If
        Next i
        
    End Select
    Form1.Enabled = True
End Sub

'-----------------------------------------------------------------------------------
'-----------------------------------------------------------------------------------

Private Sub menu_unall_Click()
    user_list.Enabled = False
    For i = 1 To user_list.ListItems.count
        DoEvents
        user_list.ListItems(i).Checked = Not user_list.ListItems(i).Checked
    Next
    user_list.Enabled = True
End Sub

Private Sub menu_pic_unall_Click()
    List1.Enabled = False
    For i = 1 To List1.ListItems.count
        DoEvents
        List1.ListItems(i).Checked = Not List1.ListItems(i).Checked
    Next
    List1.Enabled = True
End Sub

Private Sub menu_unsel_Click()
    user_list.Enabled = False
    For i = 1 To user_list.ListItems.count
        DoEvents
        If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Checked = Not user_list.ListItems(i).Checked
    Next
    user_list.Enabled = True
End Sub

Private Sub menu_pic_unsel_Click()
    List1.Enabled = False
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then List1.ListItems(i).Checked = Not List1.ListItems(i).Checked
    Next
    List1.Enabled = True
End Sub

Private Sub open_set_Click()
    If down_count = 0 Then
        input_file.Enabled = True
    Else
        input_file.Enabled = False
    End If
    PopupMenu setMenu, , open_set.Left + OX_POPMENU_X, open_set.Top + open_set.Height + OX_POPMENU_Y
End Sub

Private Sub open_set1_Click()
    Call open_set_Click
End Sub

Private Sub Inet1_StateChanged(ByVal State As Integer)
    
    If form_quit = True Then
        m_lngDocSize = 0
        Inet1.Cancel
        Exit Sub
    End If
    
    Static error_12029 As Byte
    If retry_time = 1 Then error_12029 = 0
    
    If m_lngDocSize < 0 And old_FileSize < 0 Then
        Inet1.Cancel
        download_ok = True
        Exit Sub
    End If
    
    Dim binBuffer() As Byte
    Dim sngProgerssValue As Double
    Dim getblock As Long
    ''''''''Dim start_time As Date
    getblock = sysSet.downloadblock
    
    On Error Resume Next
    
    Select Case State
    Case icResponseCompleted
        OX_RunningInformation_Setting "�ļ���С" & IIf(m_lngDocSize > 0, Int(m_lngDocSize / 1024) & "KB", "δ֪") & " - �ļ�λ��" & download_FileName
        Do   '�ӻ�������ȡ����
            ''''''''start_time = Now
            vbyte = Inet1.GetChunk(getblock, icByteArray)
            binBuffer = vbyte
            If m_lngDocSize > 0 Then
                '��ý��Ȱٷֱ�ֵ
                sngProgerssValue = Int((down_len / m_lngDocSize) * 100)
                '���½��ȱ�ǩ��ʾ����
                OX_RunningInformation_Setting download_FileName & vbCrLf & CStr(down_len) & " Byte(" & CStr(sngProgerssValue) & "%)", 3
            Else
                OX_RunningInformation_Setting download_FileName & vbCrLf & CStr(down_len) & " Byte(�ļ���Сδ֪)", 3
            End If
            'д���ļ�
            Put #1, down_len + 1, binBuffer()
            down_len = down_len + LenB(vbyte)
            If form_quit = True Then m_lngDocSize = 0: Inet1.Cancel
            '''''''''If DateDiff("s", start_time, Now()) > sysSet.time_out * 2 Then GoTo call_icError
        Loop Until (LenB(vbyte) = 0 Or (0 < m_lngDocSize And m_lngDocSize < down_len))
        
        If m_lngDocSize < 1 Or (m_lngDocSize = down_len) Then
            OX_RunningInformation_Setting download_FileName & vbCrLf & "�������"
            lblProgressInfo1.Visible = False
            lblProgressInfo2.Visible = False
err_12029:
            If sysSet.DelCache_AftDL = 2 Or sysSet.DelCache_AftDL = 3 Then OX_DeleteUrlCacheEntryW strURL
            If sysSet.DelCache_AftDL = 4 And m_lngDocSize > 10240000 Then OX_DeleteUrlCacheEntryW strURL
            download_ok = True
        ElseIf m_lngDocSize < down_len Then
            Close #1
            If OX_DelFile(download_FileName) = False Then OX_DelFile download_FileName
            If OX_GreatFile(download_FileFullName) = False Then OX_GreatFile download_FileFullName
            Open download_FileName For Binary Access Write As #1
            down_len = 0
            m_lngDocSize = 0
            Call start
        Else
            Call start
        End If
        
        
    Case icError
        '������ͨ�ų���
        '''''''''''''call_icError:
        OX_RunningInformation_Setting "������ͨ�ų���: " & Inet1.ResponseCode
        If Inet1.ResponseCode = 12029 Then error_12029 = error_12029 + 1
        If error_12029 > 3 Then
            error_12029 = 0
            OX_RunningInformation_Setting "3������12029����,���ܽ����������������"
            m_lngDocSize = 0
            GoTo err_12029
        End If
        If Inet1.ResponseCode <> 12038 And Inet1.ResponseCode <> 12037 Then
            Inet1.Cancel
            download_ok = False
            Call start
        End If
        
    Case icResolvingHost
        OX_RunningInformation_Setting "���ڲ�������"
        
    Case icHostResolved
        OX_RunningInformation_Setting "�Ѿ��ҵ�����"
        
    Case icConnecting
        OX_RunningInformation_Setting "������������"
        
    Case icConnected
        OX_RunningInformation_Setting "�Ѿ����ӵ�����"
        
    Case icRequesting
        OX_RunningInformation_Setting "���ڷ�������"
        
    Case icRequestSent
        OX_RunningInformation_Setting "�ɹ���������"
        
    Case icDisconnecting
        OX_RunningInformation_Setting "���ڶϿ�����"
        
    Case icDisconnected
        OX_RunningInformation_Setting "�Ѿ��Ͽ�����"
        
    End Select
End Sub


Private Sub list_back_Click()
    url_temp = ""
    Web_Browser.Visible = False
    Web_Search.Visible = False
    step_one
    search_end
    'If sysSet.bottom_StatusBar = True Then Refresh_Panel
End Sub

Private Sub input_lst_sub(ByVal LstFileName)
    On Error Resume Next
    
    Dim lstfile_type As String
    Dim ReturnEncoding As String
    Dim split_url, split_name, bat_txt
    Dim url_i, name_i As String
    
    url_Referer = ""
    urlpage_Referer = ""
    
    count1.caption = 0
    count1.Visible = True
    count2.caption = 0
    count2.Visible = False
    list_count.caption = 0
    
    form_quit = False
    form_height = 3000
    search_run
    step_two
    buttom_enable False
    'If sysSet.bottom_StatusBar = True Then Refresh_Panel
    '-----------------------------------
    Web_Browser.Visible = False
    Web_Search.Visible = False
    '-----------------------------------
    newform_resize
    
    List1.Width = Frame1.Width
    List1.Height = Form1.Height - List1.Top - 550 - show_StatusBar
    Call List1_Clear
    List1.Visible = True
    If sysSet.listshow = False Then List1.Visible = False
    List1.Enabled = False
    list_count.Visible = True
    
    '----------------------------��ʽ�б�----------------------------------
    lstfile_type = LCase(Mid(LstFileName, InStrRev(LstFileName, ".")))
    
    Dim BytesStream, StringReturn
    
    '----------------------------bat������----------------------------------
    If lstfile_type = ".txt" Then
        bat_txt = Mid(LstFileName, 1, InStrRev(LstFileName, ".")) & "bat"
        If Dir(bat_txt) <> "" Then
            ReturnEncoding = GetEncoding(bat_txt)
            If ReturnEncoding = "UTF-8" Then
                'UTF����
                Set BytesStream = CreateObject("ADODB.Stream") '����һ��������
                With BytesStream
                    .Type = 2
                    .mode = 3
                    .Charset = "UTF-8"
                    .Open
                    .LoadFromFile bat_txt
                    bat_txt = .ReadText
                    .Close
                End With
                Set BytesStream = Nothing
            ElseIf ReturnEncoding = "Unicode" Then
                'Unicode
                bat_txt = load_normal_file(bat_txt, -1)
            ElseIf ReturnEncoding = "UnicodeBigEndian" Then
                'Unicode-BE����
                bat_txt = load_normal_file(bat_txt, -1)
            Else
                'ANSI����
                bat_txt = load_normal_file(bat_txt, 0)
                
            End If
        Else
            bat_txt = ""
        End If
    End If
    
    '----------------------------lst�б�----------------------------------
    
    ReturnEncoding = GetEncoding(LstFileName)
    If ReturnEncoding = "UTF-8" Then
        'UTF����
        Set BytesStream = CreateObject("ADODB.Stream") '����һ��������
        With BytesStream
            .Type = 2
            .mode = 3 '1������2��д��3����д
            .Charset = "UTF-8"
            .Open
            .LoadFromFile LstFileName
            LstFileName = .ReadText
            .Close
        End With
        Set BytesStream = Nothing
        
    ElseIf ReturnEncoding = "Unicode" Then
        'Unicode
        LstFileName = load_normal_file(LstFileName, -1)
        
    ElseIf ReturnEncoding = "UnicodeBigEndian" Then
        'Unicode-BE����
        LstFileName = load_normal_file(LstFileName, -1)
        
    Else
        'ANSI����
        LstFileName = load_normal_file(LstFileName, 0)
        
    End If
    '--------------------------------------------------------------
    
    Select Case lstfile_type
        
    Case ".htm"
        If InStr(LstFileName, "<script language='javascript'>var gPhotoInfo = {};var gPhotoID = [];</script>") = 1 Then
            
            LstFileName = Mid(LstFileName, InStr(LstFileName, "<script language='javascript'>gPhotoID[") + Len("<script language='javascript'>gPhotoID["))
            
            split_url = Split(LstFileName, "<script language='javascript'>gPhotoID[")
            
            url_Referer = Mid(split_url(0), InStr(split_url(0), """,""") + 3)
            url_Referer = Mid(url_Referer, InStr(url_Referer, """,""") + 3)
            url_Referer = Trim(Mid(url_Referer, 1, InStr(url_Referer, """") - 1))
            bat_txt = ""
            
            For i = 0 To UBound(split_url)
                DoEvents
                url_i = ""
                name_i = ""
                
                split_url(i) = Mid(split_url(i), InStr(split_url(i), "<a href=""") + 9)
                url_i = Mid(split_url(i), 1, InStr(split_url(i), """") - 1)
                
                name_i = Mid(split_url(i), InStr(split_url(i), ">") + 1)
                name_i = Mid(name_i, 1, InStr(name_i, "</a>") - 1)
                
                If name_i = "" Then name_i = Mid(url_i, InStrRev(url_i, "/") + 1)
                If name_i = "" Then name_i = "no_name_pic.jpg"
                
                If url_i <> "" Then
                    
                    If name_i = "" Then name_i = Mid(url_i, InStrRev(url_i, "/") + 1)
                    If name_i = "" Then name_i = "no_name_pic.jpg"
                    
                    'list_picID
                    List1.ListItems.Add i + 1, , Format$(i + 1, "00000")
                    'list_picName
                    List1.ListItems.Item(i + 1).ListSubItems.Add , , reName_Str(unicode2asc(name_i))
                    'list_picDisc
                    List1.ListItems.Item(i + 1).ListSubItems.Add , , ""
                    'list_picUrl
                    List1.ListItems.Item(i + 1).ListSubItems.Add , , url_i
                    
                    List1.ListItems(i + 1).Checked = True
                    
                End If
                
            Next i
            
        End If
    Case ".txt"
        url_Referer = InputBox("����д����ҳ��Ϣ", "ѯ��", "http://")
        url_Referer = Trim(Replace(Replace(url_Referer, Chr(10), ""), Chr(13), ""))
        If LCase(url_Referer) = "http://" Or url_Referer = "" Then
            url_Referer = ""
        Else
            url_Referer = "Referer: " & url_Referer
        End If
        
        split_url = Split(LstFileName, vbCrLf)
        If bat_txt <> "" Then split_name = Split(bat_txt, vbCrLf)
        For i = 0 To UBound(split_url)
            DoEvents
            url_i = ""
            name_i = ""
            'url
            url_i = Trim(split_url(i))
            'name
            
            If bat_txt <> "" Then
                If UBound(split_name) >= UBound(split_url) Then
                    If Trim(Mid(split_name(i), 1, InStr(split_name(i), Chr(34)) - 1)) = "rename" Then
                        split_name(i) = Mid(split_name(i), InStr(split_name(i), Chr(34)) + 1)
                        split_name(i) = Mid(split_name(i), InStr(split_name(i), Chr(34)) + 1)
                        split_name(i) = Mid(split_name(i), InStr(split_name(i), Chr(34)) + 1)
                        split_name(i) = Trim(Mid(split_name(i), 1, InStrRev(split_name(i), Chr(34)) - 1))
                        name_i = split_name(i)
                    ElseIf Trim(Mid(split_name(i), 1, InStr(split_name(i), " ") - 1)) = "rename" Then
                        split_name(i) = Trim(Mid(split_name(i), InStr(split_name(i), " ") + 1))
                        split_name(i) = Trim(Mid(split_name(i), InStr(split_name(i), " ") + 1))
                        name_i = split_name(i)
                    End If
                End If
            End If
            
            If name_i = "" Then name_i = Mid(url_i, InStrRev(url_i, "/") + 1)
            If name_i = "" Then name_i = "no_name_pic.jpg"
            
            If url_i <> "" Then
                
                If name_i = "" Then name_i = Mid(url_i, InStrRev(url_i, "/") + 1)
                If name_i = "" Then name_i = "no_name_pic.jpg"
                
                'list_picID
                List1.ListItems.Add i + 1, , Format$(i + 1, "00000")
                'list_picName
                List1.ListItems.Item(i + 1).ListSubItems.Add , , reName_Str(unicode2asc(name_i))
                'list_picDisc
                List1.ListItems.Item(i + 1).ListSubItems.Add , , ""
                'list_picUrl
                List1.ListItems.Item(i + 1).ListSubItems.Add , , url_i
                
                List1.ListItems(i + 1).Checked = True
                
            End If
            
        Next i
        
    Case Else
        url_Referer = InputBox("����д����ҳ��Ϣ", "ѯ��", "http://")
        url_Referer = Trim(Replace(Replace(url_Referer, Chr(10), ""), Chr(13), ""))
        If LCase(url_Referer) = "http://" Or url_Referer = "" Then
            url_Referer = ""
        Else
            url_Referer = "Referer: " & url_Referer
        End If
        
        split_url = Split(LstFileName, vbCrLf)
        For i = 0 To UBound(split_url)
            DoEvents
            url_i = ""
            name_i = ""
            If InStr(split_url(i), "?/") > 0 Then
                'url
                url_i = Trim(Mid(split_url(i), 1, InStr(split_url(i), "?/") - 1))
                'name
                name_i = Trim(Mid(split_url(i), InStr(split_url(i), "?/") + 2))
            Else
                url_i = Trim(split_url(i))
                name_i = url_i
                name_i = Trim(Mid(name_i, InStrRev(name_i, "/") + 1))
            End If
            
            If url_i <> "" Then
                
                If name_i = "" Then name_i = Mid(url_i, InStrRev(url_i, "/") + 1)
                If name_i = "" Then name_i = "no_name_pic.jpg"
                
                'list_picID
                List1.ListItems.Add i + 1, , Format$(i + 1, "00000")
                'list_picName
                List1.ListItems.Item(i + 1).ListSubItems.Add , , reName_Str(unicode2asc(name_i))
                'list_picDisc
                List1.ListItems.Item(i + 1).ListSubItems.Add , , ""
                'list_picUrl
                List1.ListItems.Item(i + 1).ListSubItems.Add , , url_i
                
                List1.ListItems(i + 1).Checked = True
                
            End If
            
        Next i
        
    End Select
    '----------------------------------------------------------------------
    
    OX_RunningInformation_Setting ""
    list_count.caption = List1.ListItems.count
    search_end
    buttom_enable True
    form_quit = True
    List1.Enabled = True
    Html_Temp = ""
    
    If List1.Visible = False Then List1.Visible = True
    
    If List1.ListItems.count = 0 Then
        list_back_Click
        Exit Sub
    End If
    
    If Form1.WindowState = 0 Then
        Select Case List1.ListItems.count
        Case Is < 7
        Case Is < 15
            Form1.Height = Form1.Height + (List1.ListItems.count - 6) * 250
        Case Else
            Form1.Height = Form1.Height + 9 * 250
        End Select
    End If
    urlpage_Referer = url_Referer
    List1.ListItems.Item(1).Selected = False
    List1.SetFocus
End Sub

Private Sub input_lst_Click()
    On Error GoTo ErrHandler
    
    Dim txtpath As String, def_txtpath As String
    
    If sysSet.def_path_tf = True And sysSet.def_path <> "" Then def_txtpath = sysSet.def_path
    
    txtpath = ""
    txtpath = ShowOpenFileDialog(def_txtpath, "", "All List Files(*.htm;*.lst;*.txt)|*.htm;*.lst;*.txt|All Files (*.*)|*.*|", Me.hwnd)
    txtpath = GetShortName(txtpath)
    
    If txtpath = "" Then
ErrHandler:
        Exit Sub
    Else
        input_lst_sub txtpath
    End If
    
End Sub


Private Sub list_output_Click()
    On Error GoTo ErrHandler
    Dim txtpath As String, def_txtpath As String, file_filter(1) As String, answer_save
    
    rename_rules_val = 255
    PopupMenu rename_rules, , list_output.Left + OX_POPMENU_X, list_output.Top + list_output.Height + OX_POPMENU_Y
    If rename_rules_val = 255 Then
        rename_rules_val = 0: Exit Sub
    End If
    
    If sysSet.def_path_tf = True And sysSet.def_path <> "" Then def_txtpath = sysSet.def_path
    
    Select Case sysSet.list_type
    Case 1
        file_filter(0) = "Save Htm(*.htm)|*.htm|Save Txt(*.txt)|*.txt|Save Lst(*.lst)|*.lst|"
        file_filter(1) = ".htm|.txt|.lst|"
    Case 2
        file_filter(0) = "Save Txt(*.txt)|*.txt|Save Htm(*.htm)|*.htm|Save Lst(*.lst)|*.lst|"
        file_filter(1) = ".txt|.htm|.lst|"
    Case Else
        file_filter(0) = "Save Lst(*.lst)|*.lst|Save Htm(*.htm)|*.htm|Save Txt(*.txt)|*.txt|"
        file_filter(1) = ".lst|.htm|.txt|"
    End Select
    
    txtpath = ""
    txtpath = ShowSaveFileDialog(def_txtpath, "", file_filter(0), file_filter(1), Me.hwnd)
    If txtpath = "" Then
ErrHandler:
        Exit Sub
    Else: def_txtpath = ""
        def_txtpath = Mid(txtpath, 1, InStrRev(txtpath, "\"))
        def_txtpath = GetShortName(def_txtpath) & "\"
        txtpath = Mid(txtpath, InStrRev(txtpath, "\") + 1)
        txtpath = fix_Unicode_FileName(Hex_unicode_str(txtpath))
        
        
        If OX_Dirfile(def_txtpath & txtpath) Then
            answer_save = MsgBox("���ļ��Ѵ��ڣ��Ƿ񸲸ǣ�", vbYesNo + vbExclamation + vbDefaultButton2, "����")
            If answer_save = vbNo Then Exit Sub
        End If
        
        If OX_GreatTxtFile(def_txtpath & txtpath, "", "Unicode") = False Then MsgBox "�ļ�����ʧ�ܣ�", vbOKOnly, "����": Exit Sub
        If Right(LCase(txtpath), 4) = ".txt" Then
            If OX_GreatTxtFile(def_txtpath & Left(txtpath, Len(txtpath) - 4) & ".bat", "", "Unicode") = False Then MsgBox "�ļ�����ʧ�ܣ�", vbOKOnly, "����": Exit Sub
            
        End If
        
    End If
    '                Open GetShortName(def_txtpath & txtpath) For Binary Access Write As #1
    '                Put #1, 1, &HFF
    '                Put #1, 2, &HFE
    '                Close #1
    list_save def_txtpath & txtpath
    
End Sub

Private Sub list_stop_Click()
    download_ok = True
    form_quit = True
End Sub

Private Sub List1_KeyUp(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If KeyCode = vbKeyDelete Then
        If MsgBox("�Ƿ�ɾ����ѡ���ݣ�" & Chr(13) & "�ò��������棡", vbYesNo + vbExclamation + vbDefaultButton2, "ɾ��ѯ��") = vbYes Then
            List1.Enabled = False
            For i = List1.ListItems.count To 1 Step -1
                DoEvents
                If List1.ListItems(i).Selected = True Then
                    List1.ListItems.Remove i
                End If
            Next i
            list_count = List1.ListItems.count
            count2 = List1.ListItems.count
            List1.Enabled = True
        End If
    End If
End Sub


Private Sub makelist_command_Click()
    On Error Resume Next
    Web_Browser.Stop
    url_input_LostFocus
    
    If Proxy_img(0).Visible = True And proxy_warning = vbOK Then
        proxy_warning = MsgBox("��ǰ ҳ������ ͼƬ����" & vbCrLf & "����ʹ��OX163�Ĵ�������" & vbCrLf & "[OK]ȷ��" & vbCrLf & "[Cancel]ȡ��,������ʾ����ʾ", vbOKCancel + vbExclamation, "����")
    ElseIf Proxy_img(1).Visible = True And proxy_warning = vbOK Then
        proxy_warning = MsgBox("��ǰ ҳ������" & vbCrLf & "����ʹ��OX163�Ĵ�������A" & vbCrLf & "[OK]ȷ��" & vbCrLf & "[Cancel]ȡ��,������ʾ����ʾ", vbOKCancel + vbExclamation, "����")
    ElseIf Proxy_img(2).Visible = True And proxy_warning = vbOK Then
        proxy_warning = MsgBox("��ǰ ͼƬ����" & vbCrLf & "����ʹ��OX163�Ĵ�������B" & vbCrLf & "[OK]ȷ��" & vbCrLf & "[Cancel]ȡ��,������ʾ����ʾ", vbOKCancel + vbExclamation, "����")
    End If
    
    '��ʼ��----------------------------------------
    url_input.Text = Replace(Replace(url_input.Text, Chr(10), ""), Chr(13), "")
    url_input.Text = Trim(url_input.Text)
    url_Referer = ""
    urlpage_Referer = ""
    strURL = ""
    
    count1.caption = 0
    count1.Visible = True
    count2.caption = 0
    count2.Visible = False
    list_count.caption = 0
    
    If Trim(url_input.Text) = "" And Trim(url_temp) = "" Then
        Exit Sub
    ElseIf Trim(url_input.Text) = "" And Trim(url_temp) <> "" Then
        url_input.Text = Trim(url_temp)
    End If
    '----------------------------------------------
    
    If sysSet.include_script = "first" Then
        url_temp = check_Include(url_input.Text)
        If url_temp <> "" Then run_script: Exit Sub
    End If
    
    'http://photo.163.com/photos/wehi/17653496/  �ж��Ƿ�Ϊ163��һ���----------------------
    'http://photo.163.com/photo/wehi/#m=1&ai=1530930&p=1&n=70&cp=1
    'http://photo.163.com/wehi/list/#aid=63181820&m=0&page=1
    'http://photo.163.com/wehi/list/#m=1&aid=63181790&p=1
    
    If LCase(url_input.Text) Like "http://?*.photo.163.com*" Then
        '������ַ����ʽ��Ϊ163�û���
        url_input.Text = Mid(url_input.Text, 8)
        url_input.Text = Mid(url_input.Text, 1, InStr(url_input.Text, ".photo.163.com") - 1)
        
    ElseIf LCase(url_input.Text) Like "?*photo.163.com/?*" And InStr(LCase(url_input.Text), "#aid=") < 1 And InStr(LCase(url_input.Text), "&aid=") < 1 Then
        If InStr(LCase(url_input.Text), "/list/#aid=") < 1 Or InStr(LCase(url_input.Text), "/list#aid=") < 1 Then
            url_input.Text = Mid(url_input.Text, InStr(LCase(url_input.Text), "photo.163.com/") + Len("photo.163.com/"))
            url_input.Text = Mid(url_input.Text, 1, InStr(url_input.Text, "/") - 1)
            url_input.Text = Mid(url_input.Text, 1, InStr(url_input.Text, "#") - 1)
        End If
    End If
    
    If is_username(url_input.Text) = True Then user_open: Exit Sub
    
    '---------------------------------------------------------------------------------------
    
    If sysSet.include_script = "delay" Then
        url_temp = Trim(check_Include(url_input.Text))
        If url_temp <> "" Then run_script: Exit Sub
    End If
    
    If InStr(1, url_input.Text, "photo.163.com", 1) < 1 Then
        view_command_Click
        Exit Sub
    End If
    
    
    
    '---------------------------------------------------------------------------------------
    'http://photo.163.com/wehi/list/#m=1&aid=63181790&p=1
    If InStr(LCase(url_input.Text), "&aid=") > 1 Then
        url_temp = "#" & Mid(url_input.Text, InStr(LCase(url_input.Text), "&aid=") + 1)
        url_input.Text = Mid(url_input.Text, 1, InStr(LCase(url_input.Text), "#") - 1) & url_temp
        url_temp = ""
    End If
    'http://photo.163.com/wehi/list/#aid=63181790&p=1
    
    
    
    'wehi/17653496/
    'wehi/#m=1&ai=1530930&p=1&n=70&cp=1
    'http://photo.163.com/wehi/list/#aid=63181820&m=0&page=1
    Dim url_check
    If InStr(url_input.Text, "photo.163.com/photos/") > 0 Then
        url_temp = Mid(url_input.Text, InStr(url_input.Text, "photo.163.com/photos/") + 21)
        url_check = Split(url_temp, "/")
        url_temp = url_check(0)
    ElseIf InStr(url_input.Text, "photo.163.com/photo/") > 0 Then
        url_temp = Mid(url_input.Text, InStr(url_input.Text, "photo.163.com/photo/") + 20)
        url_check = Split(url_temp, "/")
        url_temp = url_check(0)
        If UBound(url_check) > 0 Then
            url_check(1) = LCase(url_check(1))
            url_check(1) = Mid(url_check(1), InStr(url_check(1), "&ai=") + 4)
            url_check(1) = Mid(url_check(1), 1, InStr(url_check(1), "&") - 1)
            If IsNumeric(url_check(1)) Then
                Call new163pic_list(url_check(0), url_check(1))
                Exit Sub
            End If
        End If
    ElseIf InStr(url_input.Text, "list/#aid=") > 0 Or InStr(url_input.Text, "list#aid=") > 0 Then
        url_temp = Mid(url_input.Text, InStr(url_input.Text, "photo.163.com/") + Len("photo.163.com/"))
        url_temp = Replace(url_temp, "list#aid=", "list/#aid=")
        url_check = Split(url_temp, "/")
        url_temp = url_check(0)
        If UBound(url_check) > 1 Then
            url_check(2) = LCase(url_check(2))
            url_check(2) = Mid(url_check(2), InStr(url_check(2), "#aid=") + 5)
            url_check(2) = Mid(url_check(2), 1, InStr(url_check(2), "&") - 1)
            If IsNumeric(url_check(2)) Then
                Call new163pic_list(url_check(0), url_check(2))
                Exit Sub
            End If
        End If
    End If
    '---------------------------------------------------------------------------------------
    
    Select Case UBound(url_check)
    Case 0
        url_input.Text = url_check(0)
        user_open
        Exit Sub
        
    Case Else
        If IsNumeric(url_check(1)) = False Then url_input.Text = url_check(0): user_open: Exit Sub
    End Select
    
    
    url_input.Text = "http://photo.163.com/" & url_check(0) & "/#aid=" & url_check(1)
    '---------------------------------------------------------------------------------------
    
    form_quit = False
    form_height = 3000
    step_two
    search_run
    buttom_enable False
    'If sysSet.bottom_StatusBar = True Then Refresh_Panel
    '-----------------------------------
    Web_Browser.Visible = False
    Web_Search.Visible = False
    '-----------------------------------
    newform_resize
    List1.Width = Frame1.Width
    List1.Height = Form1.Height - List1.Top - 550 - show_StatusBar
    Call List1_Clear
    List1.Visible = True
    If sysSet.listshow = False Then List1.Visible = False
    List1.Enabled = False
    list_count.Visible = True
    OX_RunningInformation_Setting "���ڷ�������"
    Form1.Icon = ico(1).Picture
    
    url_temp = Trim(url_input.Text)
    
    '163pic Url------------------------------------------------
    url_temp = url_input.Text
    list_163pic url_check(0), url_check(1), ""
    '----------------------------------------------------------
    
    
    OX_RunningInformation_Setting ""
    Form1.Icon = ico(0).Picture
    If now_tray = True Then
        TrayI.hIcon = ico(0).Picture
        TrayI.uFlags = NIF_ICON
        Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    End If
    list_count.caption = List1.ListItems.count
    search_end
    buttom_enable True
    form_quit = True
    List1.Enabled = True
    Html_Temp = ""
    If List1.Visible = False Then List1.Visible = True
    
    If List1.ListItems.count = 0 Then
        list_back_Click
        view_command_Click
        Exit Sub
    End If
    
    
    If Form1.WindowState = 0 Then
        Select Case List1.ListItems.count
        Case Is < 7
        Case Is < 15
            Form1.Height = Form1.Height + (List1.ListItems.count - 6) * 250
        Case Else
            Form1.Height = Form1.Height + 9 * 250
        End Select
    End If
    
    '--------------------------����url�ļ�----------------------------
    If List1.ListItems.count > 0 Then
        Call OX_CreateUrlIniFile(rename_URL(url_input.Text))
        url_Filelist.Refresh
    End If
    '----------------------------------------------------------------
    
    
    List1.ListItems.Item(1).Selected = False
    List1.SetFocus
    
    
End Sub

Private Sub new163pic_list(ByVal input_User_Name As String, ByVal input_Album_ID As String)
    On Error Resume Next
    
    form_height = 3000
    step_two
    search_run
    '-----------------------------------
    Web_Browser.Visible = False
    Web_Search.Visible = False
    '-----------------------------------
    newform_resize
    List1.Width = Frame1.Width
    List1.Height = Form1.Height - List1.Top - 550 - show_StatusBar
    
    buttom_enable False
    'If sysSet.bottom_StatusBar = True Then Refresh_Panel
    
    Call List1_Clear
    
    List1.Visible = True
    If sysSet.listshow = False Then List1.Visible = False
    List1.Enabled = False
    list_count.Visible = True
    OX_RunningInformation_Setting "���ڷ�������"
    
    Form1.Icon = ico(1).Picture
    form_quit = False
    
    
    '--------------------------------------------------------
    
    strURL = Trim(new163pic_GetJs(input_User_Name, input_Album_ID, ""))
    
    If strURL <> "" Then Call new163pic_listPhotoUrl
    
    '--------------------------------------------------------
    
    
    OX_RunningInformation_Setting ""
    Form1.Icon = ico(0).Picture
    
    If now_tray = True Then
        TrayI.hIcon = ico(0).Picture
        TrayI.uFlags = NIF_ICON
        Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    End If
    
    list_count.caption = List1.ListItems.count
    search_end
    buttom_enable True
    form_quit = True
    List1.Enabled = True
    Html_Temp = ""
    
    If List1.Visible = False Then List1.Visible = True
    If List1.ListItems.count = 0 Then list_back_Click: view_command_Click: Exit Sub
    
    
    If Form1.WindowState = 0 Then
        Select Case List1.ListItems.count
        Case Is < 7
        Case Is < 15
            Form1.Height = Form1.Height + (List1.ListItems.count - 6) * 250
        Case Else
            Form1.Height = Form1.Height + 9 * 250
        End Select
    End If
    
    '------------------------------����url�ļ�----------------------------------
    If List1.ListItems.count > 0 Then
        Call OX_CreateUrlIniFile(url_file_name)
        url_Filelist.Refresh
    End If
    '----------------------------------------------------------------
    
    List1.ListItems.Item(1).Selected = False
    List1.SetFocus
    
End Sub

Private Function new163pic_GetJs(ByVal input_User_Name As String, ByVal input_Album_ID As String, ByVal input_psw As String)
    On Error Resume Next
    
    If input_psw <> "" Then
        If sysSet.new163pass_rules = True Then
            input_psw = URLEncode(UTF8EncodeURI(input_psw))
        Else
            input_psw = URLEncode(input_psw)
        End If
        
        '�ϰ汾��Ч strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&batchId=5_w_h_8_Pp_43&scriptSessionId=5_w_h_8_Pp_43&c0-id=0&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-param0=string:" & input_Album_ID & "&c0-param1=string:" & input_psw & "&c0-param2=string:" & pass_code & "&c0-param3=string:&c0-param4=boolean:false"
        'http://photo.163.com/photo/ wehi /dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D187&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A1530930&c0-param1=string%3Aasd&c0-param2=string%3Akkbk&c0-param3=string%3A32350899&c0-param4=boolean%3Afalse&batchId=974914
        strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D187&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A" & input_Album_ID & "&c0-param1=string%3A" & input_psw & "&c0-param2=string%3Afromblog&c0-param3=string%3A" & Int(Timer() * 1000000) & "&c0-param4=boolean%3Afalse&batchId=" & Int(Timer() * 1000000)
        
        'strURL = "http://photo.163.com/photo/dwrcross/" & input_User_Name & "/u/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D822&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A" & input_Album_ID & "&c0-param1=string%3A" & input_psw & "&c0-param2=string%3Afromblog&c0-param3=number%3A&c0-param4=boolean%3Afalse&batchId=4&ntime=" & CDbl(Now())
    Else
        
        'strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&batchId=5_w_h_8_Pp_43&scriptSessionId=5_w_h_8_Pp_43&c0-id=0&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-param0=string:" & input_Album_ID & "&c0-param1=string:&c0-param2=string:&c0-param3=string:&c0-param4=boolean:false"
        strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D187&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A" & input_Album_ID & "&c0-param1=string%3A&c0-param2=string%3Afromblog&c0-param3=string%3A" & Int(Timer() * 1000000) & "&c0-param4=boolean%3Afalse&batchId=" & Int(Timer() * 1000000)
        
    End If
    
    OX_RunningInformation_Setting "���ڷ������ӱ�"
    form_quit = False
    fast_down.Cancel
    download_ok = False
    
    htmlCharsetType = "GB2312"
    start_fast_method = ""
    start_fast
    
    Do While download_ok = False
        If form_quit = True Then Exit Function
        DoEvents
        Sleep 10
        DoEvents
    Loop
    
    If InStr(Html_Temp, ".js""") > 0 Then
        '//#DWR-INSERT
        '//#DWR-REPLY
        'dwr.engine._remoteHandleCallback('4','0',"s5.ph.126.net/18qMoKBCzMmwVobGPj8Zwg==/137922738591899540.js");
        
        Html_Temp = Mid(Html_Temp, 1, InStrRev(Html_Temp, ".js""") + 2)
        new163pic_GetJs = "http://" & Mid(Html_Temp, InStrRev(Html_Temp, Chr(34)) + 1)
    Else
        Html_Temp = ""
        new163pic_GetJs = ""
    End If
    
    
End Function

Private Sub new163pic_listPhotoUrl()
    On Error Resume Next
    Dim ourl As String
    OX_RunningInformation_Setting "׼������" & strURL
    
check_2nd:
    
    fast_down.Cancel
    download_ok = False
    htmlCharsetType = "GB2312"
    start_fast_method = ""
    start_fast
    
    Do While download_ok = False
        If form_quit = True Then Exit Sub
        DoEvents
        Sleep 10
    Loop
    
    OX_RunningInformation_Setting "���ڷ���" & strURL
    
    If InStr(Html_Temp, "=[{id:") > 0 Then
        
        Html_Temp = Replace$(Replace$(Html_Temp, Chr(13), ""), Chr(10), "")
        '��λ����һ��ͼƬ���ı�ͷ
        Html_Temp = Mid(Html_Temp, InStr(Html_Temp, "=[{id:") + 6)
        '��λ�����һ��ͼƬ
        Html_Temp = Mid(Html_Temp, 1, InStr(Html_Temp, "}];") - 3)
        
        Dim a, b As String
        Dim new163pic_str_split
        Dim cout_num As Integer
        Dim new163post_pic_ourl, new163_pic_ID As String
        Dim new163_isAlbumOwner_TF As Boolean
        new163_isAlbumOwner_TF = True
        new163post_pic_ourl = ""
        new163post_pic_ourl = new163post_pic_ourl & "callCount=1" & vbCrLf
        new163post_pic_ourl = new163post_pic_ourl & "batchId=5_w_h_8_Pp_43" & vbCrLf
        new163post_pic_ourl = new163post_pic_ourl & "scriptSessionId=5_w_h_8_Pp_43" & vbCrLf
        new163post_pic_ourl = new163post_pic_ourl & "c0-id=0" & vbCrLf
        new163post_pic_ourl = new163post_pic_ourl & "c0-scriptName=PhotoBean" & vbCrLf
        new163post_pic_ourl = new163post_pic_ourl & "c0-methodName=getUrl" & vbCrLf
        new163post_pic_ourl = new163post_pic_ourl & "c0-param0=string:" '����ΪͼƬID��
        'Inet1.Execute "http://photo.163.com/photo/ugs_mov/dwr/call/plaincall/PhotoBean.getUrl.dwr?u=ugs_mov", "Post", new163post_pic_ourl
        
        cout_num = 0
        new163pic_str_split = Split(Html_Temp, "},{id:")
        
        For i = 0 To UBound(new163pic_str_split)
            ourl = ""
            a = ""
            b = ""
            new163_pic_ID = ""
            
            'var g_p$1187457d=[{id:
            '54139872,s:3,ourl:'616/131167339148051849.jpg',ow:2138,oh:3000,
            'murl:'616/bq4wr0XiQkbDUgWICDBoTg==/1026539240063803524.jpg',
            'surl:'616/S2FhSYJJiRw9vtipBsgdeg==/1026539240063803525.jpg',
            'turl:'616/5dPksqqQ2YUdOYucwZzEEg==/1026539240063803526.jpg',
            'qurl:'616/iNq1Q5QEW0-M_q4Jc2H2Lw==/1785395777275895656.jpg',
            'desc:'yours113-end.jpg ',t:1220710299336,comm:'',comdmt:0,exif:'',kw:''
            '},{id:
            
            'blog
            '{id:2665422496,s:1,
            'ourl:'3/photo/bveEQxqzGf3-iLP4ihV4yQ==/855402454224501762.jpg',
            'ow:7449,oh:3000,
            'murl:'3/photo/V1BxMjQ9vNeTZiwKlmBfZA==/855402454224501764.jpg',
            'surl:'3/photo/yX5FI7wVmU0bOFdwz2a5qg==/855402454224501766.jpg',
            'turl:'47/photo/3Gy7l6-IIgSEXdgW2it6Fw==/844706405109833346.jpg',
            'qurl:'3/photo/OGfb2qN6Az7V5rd0K89R_w==/855402454224501767.jpg',
            'desc:'colors000-1',t:1224488234491,comm:'',comdmt:0,comnum:0,exif:'',kw:',e^unknow,e^unknow'
            '},{id:
            
            If InStr(LCase(new163pic_str_split(i)), ",ourl:'") > 1 Then
                ourl = Mid(new163pic_str_split(i), InStr(LCase(new163pic_str_split(i)), ",ourl:'") + 7)
                ourl = Trim(Mid(ourl, 1, InStr(ourl, "'") - 1))
            End If
            new163_pic_ID = Mid(new163pic_str_split(i), 1, InStr(new163pic_str_split(i), ",") - 1)
            
            
            '����ȡͼƬ��ַʧ��,���Ϊ�������,����뵥���б�ģʽ------------------------------------------
            If new163_isAlbumOwner_TF = True And ourl = "" Then
                OX_RunningInformation_Setting "���ڷ���ԭʼͼƬ����" & (i + 1) & "��/��" & (UBound(new163pic_str_split) + 1) & "�ţ���ʱ�ϳ�"
                fast_down.Cancel
                download_ok = False
                htmlCharsetType = "GB2312"
                a = strURL
                strURL = "http://photo.163.com/photo/" & OX_Script_Type & "/dwr/call/plaincall/PhotoBean.getUrl.dwr?u=" & OX_Script_Type
                start_Post new163post_pic_ourl & new163_pic_ID, sysSet.OX_HTTP_Head
                
                Do While download_ok = False
                    If form_quit = True Then Exit Sub
                    DoEvents
                    Sleep 10
                    DoEvents
                Loop
                
                strURL = a
                
                '//#DWR-INSERT
                '//#DWR-REPLY
                'dwr.engine._remoteHandleCallback('5_w_h_8_Pp_43','0',"http://img856.photo.163.com/DaKxGAHu_qljCPIW1X1Y7w==/2773091470553391175.jpg");
                
                '//#DWR-INSERT
                '//#DWR-REPLY
                'dwr.engine._remoteHandleException('5_w_h_8_Pp_43','0',{javaClassName:"java.lang.Throwable",message:"Error"});
                If InStr(LCase(Html_Temp), LCase("dwr.engine._remoteHandleCallback")) < 1 And InStr(LCase(Html_Temp), "http://") < 1 Then
                    
                    OX_RunningInformation_Setting "������������˻���û�е�½��ᣬ�����еȳߴ�ͼƬ"
                    new163_isAlbumOwner_TF = False
                    ourl = ""
                ElseIf InStr(LCase(Html_Temp), "http://") > 1 Then
                    ourl = Mid(Html_Temp, InStr(Html_Temp, "http://"))
                    ourl = Mid(ourl, 1, InStr(ourl, Chr(34)) - 1)
                Else
                    ourl = ""
                End If
            End If
            '----------------------------------------------------------------------------------------------
            
            If ourl = "" Then
                new163pic_str_split(i) = Mid(new163pic_str_split(i), InStr(LCase(new163pic_str_split(i)), ",murl:'") + 7)
                a = Mid(new163pic_str_split(i), 1, InStr(LCase(new163pic_str_split(i)), "'") - 1)
                ourl = a
            Else
                a = ourl
            End If
            
            '��һ��
            '616/bq4wr0XiQkbDUgWICDBoTg==/1026539240063803524.jpg
            'http://img616.photo.163.com/bq4wr0XiQkbDUgWICDBoTg==/1026539240063803524.jpg
            '�ڶ���
            '/photo/nzovvldOrJcsKJ2iLjW8rA==/2845149064591786998.jpg
            'http://img.bimg.126.net/photo/nzovvldOrJcsKJ2iLjW8rA==/2845149064591786998.jpg
            b = Mid(a, 1, InStr(a, "/") - 1)
            a = Mid(a, InStr(a, "/"))
            
            If ourl <> "" Then
                'M pic url or Ourl
                If Left(ourl, 4) = "http" Then
                    a = ourl
                ElseIf Left(LCase(a), 7) = "/photo/" Then
                    a = "http://img" & b & ".bimg.126.net" & a
                Else
                    a = "http://img" & b & ".ph.126.net" & a
                End If
            Else
                a = ""
            End If
            
            If a <> "" Then
                new163pic_str_split(i) = Mid(new163pic_str_split(i), InStr(LCase(new163pic_str_split(i)), "',desc:'") + 8)
                
                '����
                new163_pic_ID = "PID:" & new163_pic_ID & ",UID:" & OX_Script_Type
                
                b = reName_Str(Trim(Mid(new163pic_str_split(i), 1, InStr(new163pic_str_split(i), "'") - 1)))
                If b = "" Then b = reName_Str(Mid(a, InStrRev(a, "/") + 1))
                new163pic_str_split(i) = ""
                new163pic_str_split(i) = LCase(Mid(b, InStrRev(b, ".")))
                
                If new163pic_str_split(i) <> LCase(Mid(a, InStrRev(a, "."))) Then
                    b = b & Mid(a, InStrRev(a, "."))
                End If
            Else
                new163_pic_ID = "Error Link, No Photo!"
            End If
            
            'list_picID
            List1.ListItems.Add i + 1, , Format$(i + 1, "00000")
            'list_picName b
            List1.ListItems.Item(i + 1).ListSubItems.Add , , b
            'list_picDisc
            List1.ListItems.Item(i + 1).ListSubItems.Add , , new163_pic_ID
            'list_picUrl temp(2)
            List1.ListItems.Item(i + 1).ListSubItems.Add , , a
            
            List1.ListItems(i + 1).Checked = True
            
            list_count.caption = i + 1
            
        Next i
        '--------------------------------------------------------
        
        list_count.caption = List1.ListItems.count
        DoEvents
        If form_quit = True Then Exit Sub
        
    End If
    
    If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
End Sub

Private Sub out_all_Click()
    '������������б�
    rename_rules_val = 255
    PopupMenu rename_rules, , user_list_output.Left + OX_POPMENU_X, user_list_output.Top + user_list_output.Height + OX_POPMENU_Y
    If rename_rules_val <> 255 Then
        PopupMenu out_lst_menu, , user_list_output.Left + OX_POPMENU_X, user_list_output.Top + user_list_output.Height + OX_POPMENU_Y
    Else
        rename_rules_val = 0
    End If
End Sub

Private Sub rename_defult_Click()
    rename_rules_val = 0
End Sub
Private Sub rename_order_Click()
    rename_rules_val = 1
End Sub
Private Sub rename_desc_Click()
    rename_rules_val = 2
End Sub

Private Sub out_lst_stand_Click()
    out_lst_type_tf = False
    out_all_lst_Click
End Sub

Private Sub out_lst_one_Click()
    out_lst_type_tf = True
    out_all_lst_Click
End Sub

Private Sub out_all_lst_Click()
    On Error Resume Next
    
    Folder_path = ""
    If sysSet.def_path_tf = True And sysSet.def_path <> "" Then
        Folder_path = GetFolder("Ĭ�������ļ���", sysSet.def_path & "\", True)
    Else
        Folder_path = GetFolder("��ѡ�������ļ���", Open_path_set & "\", True)
    End If
    
    
    If Mid(Folder_path, 2, 2) = ":\" Or (Len(Folder_path) = 2 And Right(Folder_path, 1) = ":") Then
start:
        If OX_ChkDiskStatus(Folder_path) = False Then Exit Sub
        text_sortname = GetShortName(Folder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid(text_sortname, 1, Len(text_sortname) - 1)
        '�˵�������·��
        Open_path = text_sortname
        Open_path_set = text_sortname
        
        Call save_all_list(Open_path)
        
    ElseIf sysSet.savedef = False Then
        Folder_path = App_path & "\download": GoTo start
        
    Else
        msg = MsgBox("��û��ѡ���ļ��У������ļ��в���ȷ���Ƿ�������᣿" & vbCrLf & "<��>���ļ����ص�Ĭ��Ŀ¼��" & App_path & "\download" & vbCrLf & "<��>��������", vbYesNo + vbExclamation + vbDefaultButton2, "����ѯ��")
        If msg = vbYes Then Folder_path = App_path & "\download": GoTo start
        
    End If
    
End Sub

Private Sub save_all_Click()
    '����ȫ�����ͼƬ
    On Error Resume Next
    
    rename_rules_val = 255
    PopupMenu rename_rules, , user_list_save.Left + OX_POPMENU_X, user_list_save.Top + user_list_save.Height + OX_POPMENU_Y
    If rename_rules_val = 255 Then
        rename_rules_val = 0: Exit Sub
    End If
    
    Folder_path = ""
    If sysSet.def_path_tf = True And sysSet.def_path <> "" Then
        Folder_path = GetFolder("Ĭ�������ļ���", sysSet.def_path & "\", True)
    Else
        Folder_path = GetFolder("��ѡ�������ļ���", Open_path_set & "\", True)
    End If
    
    
    If Mid(Folder_path, 2, 2) = ":\" Or (Len(Folder_path) = 2 And Right(Folder_path, 1) = ":") Then
start:
        If OX_ChkDiskStatus(Folder_path) = False Then Exit Sub
        text_sortname = GetShortName(Folder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid(text_sortname, 1, Len(text_sortname) - 1)
        '��·���˵�
        Open_path = text_sortname
        Open_path_set = text_sortname
        
        save_all_pic text_sortname
        
    ElseIf sysSet.savedef = False Then
        Folder_path = App_path & "\download": GoTo start
        
    Else
        msg = MsgBox("��û��ѡ���ļ��У������ļ��в���ȷ���Ƿ�������᣿" & vbCrLf & "<��>���ļ����ص�Ĭ��Ŀ¼��" & App_path & "\download" & vbCrLf & "<��>��������", vbYesNo + vbExclamation + vbDefaultButton2, "����ѯ��")
        If msg = vbYes Then Folder_path = App_path & "\download": GoTo start
        
    End If
End Sub

Private Sub stop2_Click()
    download_ok = True
    form_quit = True
End Sub

Private Sub url_Filelist_Close_Click()
    Form_Click
End Sub

Private Sub Form_Click()
    url_Filelist_Close.Visible = False
    url_Filelist.Visible = False
End Sub

Private Sub url_input_web_BeforeNavigate2(ByVal pDisp As Object, url As Variant, flags As Variant, TargetFrameName As Variant, PostData As Variant, Headers As Variant, Cancel As Boolean)
    If url <> "about:blank" And InStr(url, "javascript:") <> 1 Then Cancel = True
End Sub

Private Sub url_input_web_NewWindow2(ppDisp As Object, Cancel As Boolean)
    Cancel = True
End Sub

Private Sub url_input_web_TitleChange(ByVal Text As String)
    On Error GoTo err_ctrl
    If url_input_web.Visible = False Then Exit Sub
    If InStr(Text, "url_input:") = 1 Then
        If url_input <> Mid(Text, 11) Then url_input_KeyUp 17, 0: url_input = Mid(Text, 11)
    ElseIf InStr(Text, "vbcrlf:") = 1 Then
        url_input = Mid(Text, 8)
        makelist_command_Click
    End If
err_ctrl:
End Sub

Private Sub view_command_Click_timer_Timer()
    view_command_Click_timer.Enabled = False
    view_command_Click
End Sub

Private Sub Form_Start_Timer_Timer()
    On Error Resume Next
    Form_Start_Timer.Enabled = False
    If start_ox163.Visible = True Then Unload start_ox163
    Load_Form
    
    If GetOSLCID <> 1 Then fast_set_web_Click
    Web_Browser.Silent = True
    Web_Browser.Document.Open
    Web_Browser.Document.Write ""
    Web_Browser.Document.Close
    Web_Search.Silent = True
    Web_Search.Document.Open
    Web_Search.Document.Write ""
    Web_Search.Document.Close
    
    
    Dim Command_str As String
    Dim Command_str_split
    '������������
    Command_str = ""
    Command_str = Command()
    If Command_str <> "" Then
        Command_str_split = Split(Command_str, vbCrLf)
        Command_str = Trim(Command_str_split(0))
    End If
    
    If Command_str <> "" Then
        url_input.Text = Command_str
    End If
    
    If Command_str <> "" Then
        If UBound(Command_str_split) > 1 Then
            url_temp = "Referer: " & Command_str_split(2)
        End If
        
        If UBound(Command_str_split) > 0 Then
            Command_str = Command_str_split(1)
            Command_str_split = Split(Command_str, "|")
            If UBound(Command_str_split) = 3 Then
                If IsNumeric(Command_str_split(0)) And IsNumeric(Command_str_split(1)) And IsNumeric(Command_str_split(2)) And IsNumeric(Command_str_split(3)) Then
                    If Command_str_split(0) = "0" And Command_str_split(1) = "0" And Command_str_split(2) = "0" And Command_str_split(3) = "0" Then
                        Form1.WindowState = 2
                    Else
                        Form1.Top = Command_str_split(0) + 500
                        Form1.Left = Command_str_split(1) + 500
                        Form1.Width = Command_str_split(2)
                        Form1.Height = Command_str_split(3)
                    End If
                End If
            End If
        End If
        view_command_Click_timer.Enabled = True
        Exit Sub
    End If
    
    Dim ver As String, temp_str As String, temp_str1 As String
    'NtfsDisable8dot3Name checking----------------------------------------------------------------------
    If sysSet.bottom_StatusBar = True Then
        StatusBar.Panels(3) = "���NtfsDisable8dot3Name"
    End If
    
    ver = "���NtfsDisable8dot3Name(��Ҫ�Թ���Ա�������)" & vbCrLf & "����fsutil 8dot3name query"
    err.Clear
    temp_str = OX_8dot3Name_Dir(App.Path)
    ver = ver & vbCrLf & Mid(temp_str, InStr(temp_str, vbCrLf) + Len(vbCrLf))
    temp_str = Mid(temp_str, 1, InStr(temp_str, vbCrLf) - 1)
    temp_str1 = OX_8dot3Name_Sys
    
    If temp_str1 = 1 Or (temp_str = 1 And temp_str1 = 2) Or (temp_str1 = 3 And Left(App.Path, 2) <> Left(GetSysDir, 2)) Then
        ver = ver & vbCrLf & "����δ����8dot3name��·�����ܣ������޷��ڸô��̲�������unicode�ַ�" & vbCrLf & "������ʹ��""fsutil 8dot3name set 0""��������ȫ����8dot3name��·��"
        OX_G_Disable8dot3 = temp_str & temp_str1
        If MsgBox("����δ����ϵͳ����8dot3name��·��" & vbCrLf & "�Ƿ��8dot3name�������?", vbYesNo, "����") = vbYes Then Ctrl8dot3name.Show
    Else
        ver = ver & "...OK"
    End If
    
    OX_Start_log = Replace(OX_Start_log, "%delay_NtfsDisable8dot3Name_Checking%", ver)
    
    'autocheck new version---------------------------------------------------------------------------
    
    If sysSet.autocheck = False Then Exit Sub
    
    ver = ""
    temp_str = ""
    temp_str = show_inform(0)
    If sysSet.bottom_StatusBar = True Then
        show_inform(0) = "�����Զ�������°汾..."
        StatusBar.Panels(3) = show_inform(0)
    End If
    ver = update.OpenURL(sysSet.update_host & "ox163_update.htm?ntime=" & CDbl(Now()))
    If IsNumeric(ver) Then
        ver = Mid(ver, 1, InStr(ver, ".") - 1)
        If CInt(ver) > sysSet.ver And Len(ver) < 5 Then
            ver = update.OpenURL(sysSet.update_host & "ox163_update_info.htm?ntime=" & CDbl(Now()))
            ver = Left(Replace(Replace(ver, Chr(10), ""), Chr(13), ""), 100)
            
            If download_ok = True Then
                If MsgBox("�����°汾:" & vbCrLf & ver & vbCrLf & "�Ƿ�ǰ����ҳ���أ�", vbYesNo + vbQuestion, "OX163�汾���") = vbYes Then
                    Call homepage_Click
                Else
                    Form1.caption = "[���°汾]" & Form1.caption
                    TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
                    If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
                End If
            Else
                Form1.caption = "[���°汾]" & Form1.caption
                TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
                If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
            End If
        End If
    End If
    
    If down_count = 0 And sysSet.bottom_StatusBar = True Then
        show_inform(0) = temp_str
        StatusBar.Panels(3) = show_inform(0)
    End If
End Sub

Private Sub tray_dir_Click()
    Shell "explorer.exe " & App_path, vbNormalFocus
End Sub

Private Sub tray_dir1_Click()
    Call tray_dir_Click
End Sub

Private Sub tray_dircustom_Click()
    Shell "explorer.exe " & App_path & "\include\custom", vbNormalFocus
End Sub

Private Sub tray_dircustom1_Click()
    Call tray_dircustom_Click
End Sub

Private Sub tray_dirsys_Click()
    Shell "explorer.exe " & App_path & "\include\sys", vbNormalFocus
End Sub

Private Sub tray_dirsys1_Click()
    Call tray_dirsys_Click
End Sub

Private Sub tray_path_Click()
    If Open_path = "" Then Open_path = App_path & "\download"
    Shell "explorer.exe " & Open_path, vbNormalFocus
End Sub

Private Sub tray_8to3_Click()
    Ctrl8dot3name.Show
End Sub

Private Sub tray_8to31_Click()
    Call tray_8to3_Click
End Sub

Private Sub tray_path1_Click()
    Call tray_path_Click
End Sub

Private Sub tray_quit_Click()
    If now_tray = False Then Call Form_Unload(0)
    Form_Unload (0)
End Sub

Private Sub tray_recover_Click()
    If now_tray = False Then Exit Sub
    sysTray False
End Sub


Private Sub tray_script1_Click()
    script_from.Show
End Sub

Private Sub update_StateChanged(ByVal State As Integer)
    On Error Resume Next
    If form_quit = True Then update.Cancel
    DoEvents
End Sub


'---------------------------------------------------------------------------------------
'----------------------------url_input--------------------------------------------------
'---------------------------------------------------------------------------------------

Private Sub url_input_DblClick()
    url_input_SelectAll
End Sub

Private Sub url_input_Change()
    On Error Resume Next
    If url_input_web.Visible = True Then url_input_web.Document.getElementById("url_input").Value = url_input
End Sub


Private Sub url_input_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 65 And Shift = vbCtrlMask Then
        url_input_SelectAll
    ElseIf KeyCode = 13 And Shift = vbCtrlMask Then
        view_command_Click
    ElseIf KeyCode = 13 Then
        url_input.Text = Trim(url_input.Text)
        makelist_command_Click
    End If
End Sub

Private Sub url_input_KeyUp(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If Shift <> vbCtrlMask And Shift <> vbAltMask And url_Filelist.Visible = False And url_Filelist.ListCount > 0 Then
        
        url_Filelist.Visible = True
        url_Filelist_Close.Visible = True
        
    ElseIf Shift <> vbCtrlMask And Shift <> vbAltMask And url_text_keyupdown = False Then
        
        url_Filelist.Pattern = "*" & rename_URL(url_input.Text) & "*"
        
    End If
    
    url_text_keyupdown = False
    
    If KeyCode = 38 And url_Filelist.Visible = True Then 'up 38 down 40
        url_text_keyupdown = True
        If url_Filelist.ListIndex > 0 Then
            url_Filelist.ListIndex = url_Filelist.ListIndex - 1
        Else
            url_Filelist.ListIndex = url_Filelist.ListCount - 1
        End If
        
    ElseIf KeyCode = 40 And url_Filelist.Visible = True Then
        url_text_keyupdown = True
        
        If url_Filelist.ListIndex < url_Filelist.ListCount - 1 Then
            url_Filelist.ListIndex = url_Filelist.ListIndex + 1
        Else
            url_Filelist.ListIndex = 0
        End If
        
    ElseIf KeyCode = 67 And Shift = vbCtrlMask Then
        'Call SetClipboardText(url_input.SelText)
        
    ElseIf KeyCode = 86 And Shift = vbCtrlMask Then
        'Hex_unicode_str(GetClipboardText)
    End If
    
End Sub

Private Sub url_list_show_Click()
    If url_Filelist.Visible = False Then
        url_Filelist.Pattern = "*"
        url_Filelist.Visible = True
        url_Filelist_Close.Visible = True
    Else
        url_Filelist_Close.Visible = False
        url_Filelist.Visible = False
    End If
End Sub

Private Sub url_Filelist_Click()
    Dim File_urlstr As String
    File_urlstr = rename_URLfile(url_Filelist.fileName)
    If File_urlstr <> "" Then
        url_input.Text = File_urlstr
        url_input_SelectAll
    End If
    url_input_LostFocus
End Sub

Private Sub url_Filelist_PatternChange()
    If url_Filelist.ListCount <= 1 Then Call url_input_LostFocus
End Sub

Private Sub url_input_LostFocus()
    url_Filelist_Close.Visible = False
    url_Filelist.Visible = False
End Sub

Private Sub url_input_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, y As Single)
    OLEDragDrop Data
End Sub

Private Sub url_input_SelectAll()
    url_input.SelStart = 0
    url_input.SelLength = Len(url_input.Text)
End Sub
'---------------------------------------------------------------------------------
'---------------------------------------------------------------------------------

Private Sub user_list_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    If ColumnHeader.key = "book_undown" Then Exit Sub
    user_list.ColumnHeaders.Item(1).Text = "��š�"
    user_list.ColumnHeaders.Item(2).Text = "�������"
    user_list.ColumnHeaders.Item(3).Text = "�������"
    user_list.ColumnHeaders.Item(4).Text = "���/����"
    user_list.ColumnHeaders.Item(5).Text = "ͼƬ����"
    user_list.ColumnHeaders.Item(6).Text = "�������"
    
    Static kind As Boolean
    kind = Not kind
    Select Case ColumnHeader.key
    Case "book_sort"
        user_list.SortKey = 0
    Case "book_name"
        user_list.SortKey = 1
    Case "book_psw"
        user_list.SortKey = 2
    Case "book_ID"
        user_list.SortKey = 3
    Case "book_number"
        user_list.SortKey = 4
    Case "book_disc"
        user_list.SortKey = 5
    End Select
    
    If kind = False Then
        user_list.SortOrder = lvwDescending
        ColumnHeader.Text = ColumnHeader.Text & "��"
    Else
        user_list.SortOrder = lvwAscending
        ColumnHeader.Text = ColumnHeader.Text & "��"
    End If
    user_list.Sorted = True
    
End Sub

Private Sub list1_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    If ColumnHeader.key = "book_undown" Then Exit Sub
    List1.ColumnHeaders.Item(1).Text = "��š�"
    List1.ColumnHeaders.Item(2).Text = "�ļ���"
    List1.ColumnHeaders.Item(3).Text = "��������"
    List1.ColumnHeaders.Item(4).Text = "ͼƬ��ַ"
    
    Static kind As Boolean
    kind = Not kind
    Select Case ColumnHeader.key
    Case "list_picID"
        List1.SortKey = 0
    Case "list_picName"
        List1.SortKey = 1
    Case "list_picDisc"
        List1.SortKey = 2
    Case "list_picUrl"
        List1.SortKey = 3
    End Select
    
    If kind = False Then
        List1.SortOrder = lvwDescending
        ColumnHeader.Text = ColumnHeader.Text & "��" '��
    Else
        List1.SortOrder = lvwAscending
        ColumnHeader.Text = ColumnHeader.Text & "��" '��
    End If
    List1.Sorted = True
    
End Sub

Private Sub user_list_Clear()
    user_list.ListItems.Clear
    user_list.Sorted = False
    user_list.ColumnHeaders.Item(1).Text = "��š�"
    user_list.ColumnHeaders.Item(2).Text = "�������"
    user_list.ColumnHeaders.Item(3).Text = "�������"
    user_list.ColumnHeaders.Item(4).Text = "���/����"
    user_list.ColumnHeaders.Item(5).Text = "ͼƬ����"
    user_list.ColumnHeaders.Item(6).Text = "�������"
End Sub

Private Sub List1_Clear()
    List1.ListItems.Clear
    List1.Sorted = False
    List1.ColumnHeaders.Item(1).Text = "��š�"
    List1.ColumnHeaders.Item(2).Text = "�ļ���"
    List1.ColumnHeaders.Item(3).Text = "��������"
    List1.ColumnHeaders.Item(4).Text = "ͼƬ��ַ"
End Sub

'---------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------


Private Sub albumslist_back_Click()
    If List1.ListItems.count > 0 Then
        
        Dim undown_str As String
        undown_str = ""
        For i = 1 To List1.ListItems.count
            DoEvents
            If List1.ListItems(i).Checked = False Then undown_str = undown_str & List1.ListItems(i).Text & "|"
        Next i
        If undown_str <> "" Then undown_str = Mid(undown_str, 1, Len(undown_str) - 1)
        user_list.SelectedItem.ListSubItems(6).Text = undown_str
        
    End If
    
    user_list.Visible = True
    
    List1.Visible = False
    albumslist_back.Visible = False
    user_list_output.Visible = False
    user_list_save.Visible = False
    list_check.Visible = True
    save_all.Visible = True
    out_all.Visible = True
    list_back1.Visible = True
    Line1.Visible = True
    
    count1.caption = user_list.ListItems.count
    count2.caption = 0
    count1.Visible = True
    count2.Visible = False
    
    user_list.SetFocus
    
End Sub

Private Sub albums_checked_pic(ByVal undown_str)
    undown_str = Split(undown_str, "|")
    For i = 0 To UBound(undown_str)
        DoEvents
        If IsNumeric(undown_str(i)) = True Then
            List1.ListItems(CLng(undown_str(i))).Checked = False
        End If
    Next i
End Sub

Private Sub user_list_DblClick()
    On Error Resume Next
    Dim list_albums_ID As String
    list_albums_ID = ""
    If Trim(user_list.SelectedItem.ListSubItems(3).Text) = "" Then Exit Sub
    
    Form1.Enabled = True
    strURL = ""
    '-------------------------------------------------------------------------
    '163�����----------------------------------------------------------------
    If is_username(OX_Script_Type) = True Then
        If user_list.SelectedItem.ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." Then
            menu_psw_Click
            Exit Sub
            
        Else
            If user_list.SelectedItem.ListSubItems(2).Text <> "" Then
                list_albums_ID = new163pic_GetJs(OX_Script_Type, Replace(user_list.SelectedItem.ListSubItems(3).Text, "new163_ID_", ""), user_list.SelectedItem.ListSubItems(2).Text)
                If list_albums_ID = "" Then
                    If MsgBox("���벻��ȷ�Ƿ�������д��", vbYesNo + vbExclamation, "����") = vbYes Then menu_psw_Click
                    Exit Sub
                End If
            ElseIf user_list.SelectedItem.ListSubItems(3).Text Like "new163_ID_?*" Then
                'list_albums_ID like http://s2.ph.126.net/aZQ_eDjNsFowIq9SG-bGpg==/195713069957396.js
                list_albums_ID = new163pic_GetJs(OX_Script_Type, Replace(user_list.SelectedItem.ListSubItems(3).Text, "new163_ID_", ""), "")
            End If
            
            If Left(list_albums_ID, 4) = "http" Then
                form_quit = False
                user_list.Visible = False
                count1.Visible = False
                Call List1_Clear
                
                albumslist_back.Visible = True
                user_list_output.Visible = True
                user_list_save.Visible = True
                list_check.Visible = False
                save_all.Visible = False
                out_all.Visible = False
                list_back1.Visible = False
                'Line1.Visible = False
                
                stop2.Enabled = True
                user_list_find.Enabled = False
                Frame_search.Visible = False
                setProgram.Enabled = False
                albumslist_back.Enabled = False
                user_list_output.Enabled = False
                user_list_save.Enabled = False
                
                List1.Visible = True
                count2.Visible = True
                List1.Enabled = False
                OX_RunningInformation_Setting "���ڷ�������"
                'Timer2.Enabled = True
                Form1.Icon = ico(1).Picture
                If sysSet.listshow = False Then List1.Visible = False
                
                count2.caption = 0
                
                strURL = list_albums_ID
                Call new163pic_listPhotoUrl
                
                OX_RunningInformation_Setting ""
                Form1.Icon = ico(0).Picture
                
                If now_tray = True Then
                    TrayI.hIcon = ico(0).Picture
                    TrayI.uFlags = NIF_ICON
                    Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
                End If
                
                count2.caption = List1.ListItems.count
                
                stop2.Enabled = False
                user_list_find.Enabled = True
                setProgram.Enabled = True
                albumslist_back.Enabled = True
                user_list_output.Enabled = True
                user_list_save.Enabled = True
                
                form_quit = True
                List1.Enabled = True
                Html_Temp = ""
                If List1.Visible = False Then List1.Visible = True
                If List1.ListItems.count = 0 Then albumslist_back_Click: Exit Sub
                
                If user_list.SelectedItem.ListSubItems(6).Text <> "" Then albums_checked_pic user_list.SelectedItem.ListSubItems(6).Text
                
                List1.ListItems.Item(1).Selected = False
                List1.SetFocus
                Exit Sub
                
            End If
            list_albums_ID = ""
        End If
        Exit Sub
    End If
    '163��������
    '------------------------------------------------------------------------------------
    '------------------------------------------------------------------------------------
    '�ⲿ�ű�����------------------------------------------------------------------------
    
    If user_list.SelectedItem.ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." Then
        menu_psw_Click
        Exit Sub
        
    ElseIf user_list.SelectedItem.ListSubItems(2).Text <> "" Then
        'check_album_password----------------------------------------------
        Dim pass_accept As Boolean
        url_temp = check_Include(Trim(user_list.SelectedItem.ListSubItems(3).Text))
        If url_temp = "" Then GoTo script_nopass_list
        
        form_quit = False
        
        OX_RunningInformation_Setting "��ʼִ���ⲿ�ű�"
        pass_accept = check_album_password(url_temp, user_list.SelectedItem.ListSubItems(2).Text)
        OX_RunningInformation_Setting ""
        
        If pass_accept = False Then
            download_ok = True
            form_quit = True
            menu_psw_Click
            Exit Sub
        End If
        GoTo script_nopass_list
    Else
script_nopass_list:
        'list_album_photos----------------------------------------------
        form_quit = False
        user_list.Visible = False
        count1.Visible = False
        Call List1_Clear
        
        albumslist_back.Visible = True
        user_list_output.Visible = True
        user_list_save.Visible = True
        list_check.Visible = False
        save_all.Visible = False
        out_all.Visible = False
        list_back1.Visible = False
        'Line1.Visible = False
        
        stop2.Enabled = True
        user_list_find.Enabled = False
        Frame_search.Visible = False
        setProgram.Enabled = False
        albumslist_back.Enabled = False
        user_list_output.Enabled = False
        user_list_save.Enabled = False
        
        List1.Visible = True
        count2.Visible = True
        List1.Enabled = False
        OX_RunningInformation_Setting "���ڷ�������"
        Form1.Icon = ico(1).Picture
        If sysSet.listshow = False Then List1.Visible = False
        
        count2.caption = 0
        
        url_temp = check_Include(Trim(user_list.SelectedItem.ListSubItems(3).Text))
        If url_temp <> "" Then list_photo_script url_temp
        If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
        
        OX_RunningInformation_Setting ""
        'Timer2.Enabled = False
        Form1.Icon = ico(0).Picture
        
        If now_tray = True Then
            TrayI.hIcon = ico(0).Picture
            TrayI.uFlags = NIF_ICON
            Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        End If
        
        count2.caption = List1.ListItems.count
        
        stop2.Enabled = False
        user_list_find.Enabled = True
        setProgram.Enabled = True
        albumslist_back.Enabled = True
        user_list_output.Enabled = True
        user_list_save.Enabled = True
        
        form_quit = True
        List1.Enabled = True
        Html_Temp = ""
        If List1.Visible = False Then List1.Visible = True
        
        If List1.ListItems.count = 0 Then albumslist_back_Click: Exit Sub
        'ȥ����һ�β�����ѡ��ͼƬ
        If user_list.SelectedItem.ListSubItems(6).Text <> "" Then albums_checked_pic user_list.SelectedItem.ListSubItems(6).Text
        list_albums_ID = ""
        List1.ListItems.Item(1).Selected = False
        List1.SetFocus
    End If
End Sub


Private Sub user_list_find_Click()
    If Frame_search.Visible = False Then
        Frame_search.Visible = True
        find_text.SetFocus
    Else
        Frame_search.Visible = False
        If user_list.Visible = True Then
            user_list.SetFocus
        Else
            List1.SetFocus
        End If
    End If
End Sub

Private Sub user_list_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    If Item.Selected = False Then Exit Sub
    If Item.Checked = True Then
        user_list.Enabled = False
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Checked = True
        Next
        user_list.Enabled = True
    Else
        user_list.Enabled = False
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Checked = False
        Next
        user_list.Enabled = True
    End If
End Sub

Private Sub user_list_KeyDown(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    Dim copy_txt As String
    
    If KeyCode = 65 And Shift = vbCtrlMask Then
        user_list.Enabled = False
        user_list.Visible = False
        For i = 1 To user_list.ListItems.count
            DoEvents
            user_list.ListItems(i).Selected = True
        Next
        user_list.Visible = True
        user_list.Enabled = True
        user_list.SetFocus
    ElseIf KeyCode = 67 And Shift = vbCtrlMask Then
        If sysSet.list_copy = True Then
            GoTo user_url_copy
        Else
            GoTo user_ubb_copy
        End If
    ElseIf KeyCode = 67 And Shift = vbAltMask Then
        If sysSet.list_copy = True Then
            GoTo user_ubb_copy
        Else
            GoTo user_url_copy
        End If
    ElseIf KeyCode = 70 And Shift = vbCtrlMask Then
        user_list_find_Click
    ElseIf KeyCode = 27 And Frame_search.Visible = True Then
        Frame_search.Visible = False
    End If
    Exit Sub
    '--------------------------------------------------
user_url_copy:
    user_list.Enabled = False
    user_list.Visible = False
    copy_txt = ""
    For i = 1 To user_list.ListItems.count
        DoEvents
        If user_list.ListItems(i).Selected = True Then
            If user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" Then
                copy_txt = copy_txt & "http://photo.163.com/" & OX_Script_Type & "/#m=1&aid=" & Mid(user_list.ListItems(i).ListSubItems(3).Text, 11) & vbCrLf
            Else
                copy_txt = copy_txt & user_list.ListItems(i).ListSubItems(3).Text & vbCrLf
            End If
        End If
    Next
    If copy_txt <> "" Then
        Clipboard.Clear
        Clipboard.SetText copy_txt
    End If
    user_list.Visible = True
    user_list.Enabled = True
    user_list.SetFocus
    Exit Sub
    '--------------------------------------------------
user_ubb_copy:
    user_list.Enabled = False
    user_list.Visible = False
    copy_txt = ""
    For i = 1 To user_list.ListItems.count
        DoEvents
        If user_list.ListItems(i).Selected = True Then
            If user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" Then
                copy_txt = copy_txt & "[url=http://photo.163.com/" & OX_Script_Type & "/#m=1&aid=" & Mid(user_list.ListItems(i).ListSubItems(3).Text, 11) & "]" & user_list.ListItems(i).ListSubItems(1).Text & "[/url]" & vbCrLf
            Else
                copy_txt = copy_txt & "[url=" & user_list.ListItems(i).ListSubItems(3).Text & "]" & user_list.ListItems(i).ListSubItems(1).Text & "[/url]" & vbCrLf
            End If
        End If
    Next
    If copy_txt <> "" Then
        Clipboard.Clear
        Clipboard.SetText copy_txt
    End If
    user_list.Visible = True
    user_list.Enabled = True
    user_list.SetFocus
    
End Sub

Private Sub user_list_KeyUp(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If KeyCode = vbKeyDelete Then
        If MsgBox("�Ƿ�ɾ����ѡ���ݣ�" & Chr(13) & "�ò��������棡", vbYesNo + vbExclamation + vbDefaultButton2, "ɾ��ѯ��") = vbYes Then
            user_list.Enabled = False
            For i = user_list.ListItems.count To 1 Step -1
                DoEvents
                If user_list.ListItems(i).Selected = True Then
                    user_list.ListItems.Remove i
                End If
            Next i
            count1.caption = user_list.ListItems.count
            user_list.Enabled = True
            user_list.SetFocus
        End If
    End If
End Sub

Private Sub user_list_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error GoTo ErrorHandle
    If sysSet.OX_List_Drag = True Then list_scoll_id = user_list.HitTest(x, y).Index
    Exit Sub
ErrorHandle:
    list_scoll_id = 0
    list_scoll_idm = 0
End Sub

Private Sub user_list_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    On Error Resume Next
    list_scoll_id = 0
    list_scoll_idm = 0
    If Button = 2 And user_list.ListItems.count > 0 Then
        If user_list.SelectedItem.ListSubItems(2).Text = "" Then
            menu_psw.Visible = False
            menu_pswc.Visible = False
            menu_pswv.Visible = False
            menu_1.Visible = False
            PopupMenu menu
        Else
            menu_psw.Visible = True
            menu_pswc.Visible = True
            menu_pswv.Visible = True
            If psw_v = "" Then
                menu_pswv.Enabled = False
                menu_pswv.caption = "ճ������(&V)"
            Else
                menu_pswv.caption = "ճ������(&V)-����Ϊ:" & psw_v
                menu_pswv.Enabled = True
            End If
            menu_1.Visible = True
            PopupMenu menu
        End If
    End If
End Sub

Private Sub user_list_output_Click()
    list_output_Click
End Sub

Private Sub user_list_save_Click()
    image_save_Click
End Sub

Private Sub view_command_Click()
    url_input_LostFocus
    If Trim(url_input.Text) = "" Or Trim(url_input.Text) = "http://" Then url_input.Text = "http://shj.ugschina.com/163/"
    url_input.Text = Trim(url_input.Text)
    'If is_username(url_input.Text) = True Then url_input.Text = "http://photo.163.com/photos/" & format_username(url_input.Text, 2) & "/"
    'buttom_enable False
    form_height = 3000
    If Form1.WindowState = 0 Then
        'Form1.WindowState = 2
        If Form1.Width < 11000 Then Form1.Width = 15000
        If Form1.Height < 8500 Then Form1.Height = 12000
    End If
    newform_resize
    web_Picture.Visible = True
    Web_Browser.Visible = True
    Web_Search.Visible = False
    Web_Browser.Width = Frame1.Width
    Web_Toolbar.Width = Web_Browser.Width
    Web_Browser_Close.Left = Web_Browser.Width - 23 * Screen.TwipsPerPixelX
    Call Web_Browser_StatusTextChange("ǰ�� " & Trim(url_input.Text))
    
    If Trim(url_input.Text) = "http://shj.ugschina.com/163/ua.asp" Then
        Web_Browser.Navigate2 "http://shj.ugschina.com/163/ua.asp"
    ElseIf InStr(url_temp, "Referer: ") = 1 Then
        Web_Browser.Navigate2 Trim(url_input.Text), , , , url_temp & vbCrLf & sysSet.OX_HTTP_Head
    Else
        Web_Browser.Navigate2 Trim(url_input.Text), , , , sysSet.OX_HTTP_Head
    End If
    url_temp = Trim(url_input.Text)
End Sub

Private Function buttom_enable(buttom_ckick As Boolean)
    url_input.Enabled = buttom_ckick
    view_command.Enabled = buttom_ckick
    makelist_command.Enabled = buttom_ckick
End Function

Private Sub newform_resize()
    On Error Resume Next
    If Form1.WindowState = 0 Then
        If Form1.Height < 3400 Then Form1.Height = Form1.Height + 2000
    End If
    If down_count = 0 And WindowState <> 1 Then Web_Browser.Height = Form1.Height - 1510 - show_StatusBar - Web_Toolbar.Height: Web_Search.Height = Form1.Height - 1510 - show_StatusBar
End Sub

Public Sub label_rebuld()
    Label_text.Left = Label_name.Left + Label_name.Width + 50
    Label_text.Visible = True
    Label_name.Visible = True
End Sub

Public Sub label_rebuld1()
    Label_text1.Left = Label_name1.Left + Label_name1.Width + 50
    Label_text1.Visible = True
    Label_name1.Visible = True
End Sub


Public Sub step_two()
    down_count = 1
    rename_rules_val = 0
    url_input.Enabled = False
    url_input.Visible = False
    url_input_web.Visible = False
    Frame1.caption = "�б����������"
    view_command.Visible = False
    makelist_command.Visible = False
    url_list_show.Visible = False
    search163.Visible = False
    
    list_stop.Visible = True
    list_back.Visible = True
    list_output.Visible = True
    image_save.Visible = True
    Line2.Visible = True
    list1_find.Visible = True
    OX_RunningInformation_Setting ""
End Sub

Public Sub step_one()
    On Error Resume Next
    down_count = 0
    OX_RunningInformation_Setting ""
    rename_rules_val = 0
    pass_code = ""
    OX_Script_Type = ""
    Frame1.caption = "����û�������ַ"
    Frame2.Visible = False
    Frame_search.Visible = False
    search163.Visible = True
    view_command.Visible = True
    makelist_command.Visible = True
    url_list_show.Visible = True
    list_stop.Visible = False
    list_back.Visible = False
    list_output.Visible = False
    image_save.Visible = False
    Line2.Visible = False
    list1_find.Visible = False
    List1.Visible = False
    Web_Browser.Stop
    Web_Browser.Visible = False
    web_Picture.Visible = False
    Web_Search.Visible = False
    list_count.Visible = False
    form_height = 1500 + show_StatusBar
    If Form1.WindowState = 0 Then Form1.Height = form_height: Form1.Width = 7100
    list_count = ""
    url_temp = ""
    url_Referer = ""
    urlpage_Referer = ""
    Html_Temp = ""
    url_input.Visible = True
    url_input.Enabled = True
    url_input.SetFocus
    url_input.SelStart = 0
    url_input.SelLength = Len(url_input.Text)
    If fast_set_web.Checked = True Then fast_set_web.Checked = False: fast_set_web_Click
    Call List1_Clear
    Call user_list_Clear
    OX_RunningInformation_Setting ""
End Sub

Public Sub step_three()
    down_count = 1
    rename_rules_val = 0
    search163.Visible = False
    url_input.Visible = False
    url_input_web.Visible = False
    url_input.Enabled = False
    Frame1.Visible = False
    Frame2.Visible = True
    OX_RunningInformation_Setting ""
End Sub

Public Sub search_run()
    list_stop.Enabled = True
    list_back.Enabled = False
    list_output.Enabled = False
    image_save.Enabled = False
    list1_find.Enabled = False
    Frame_search.Visible = False
    setProgram.Enabled = False
End Sub
Public Sub search_end()
    list_stop.Enabled = False
    list_back.Enabled = True
    list_output.Enabled = True
    image_save.Enabled = True
    list1_find.Enabled = True
    setProgram.Enabled = True
End Sub

Private Sub Web_Browser_Close_i_Click()
    web_Title_Lab.caption = ""
    step_one
End Sub

Private Sub Web_Toolbar_ButtonClick(ByVal Button As MSComctlLib.Button)
    On Error Resume Next
    
    Select Case Button.Index
    Case 1 'back
        err.Clear
        Web_Browser.GoBack
        If err.Number <> 0 Then err.Clear
    Case 2 'Forward
        err.Clear
        Web_Browser.GoForward
        If err.Number <> 0 Then err.Clear: Call view_command_Click
    Case 3 'Refresh
        Call Web_Browser.Refresh 'Refresh2(3)0-3
    Case 4 'Stop
        Call Web_Browser.ExecWB(OLECMDID_STOP, OLECMDEXECOPT_PROMPTUSER)
    Case 6 'save
        Call Web_Browser.ExecWB(OLECMDID_SAVEAS, OLECMDEXECOPT_PROMPTUSER)
    Case 7 'HP
        Call OX_ShowButtonMenu(Web_Toolbar, Button.Index - 1)
    Case 9 'link
        Call OX_ShowButtonMenu(Web_Toolbar, Button.Index - 1)
    End Select
    
End Sub
Private Sub Web_Toolbar_ButtonMenuClick(ByVal ButtonMenu As MSComctlLib.ButtonMenu)
    On Error Resume Next
    Select Case ButtonMenu.key
    Case "Web_Toolbar_Source"
        err.Clear
        Call Web_Browser.ExecWB(OLECMDID_SAVEAS, OLECMDEXECOPT_DONTPROMPTUSER)
        If err.Number <> 0 And err.Number <> -2147221248 Then MsgBox "���ִ���:" & err.Number & vbCrLf & "��һ��ʹ�øù��ܿ�����Ҫ�Թ���Ա�����������", vbOKOnly, "����"
    Case "Web_Toolbar_htm"
        Set doc = Web_Browser.Document
        'Set objhtml = doc.Body.createtextrange
        'Html_Temp =doc.Body.OuterHtml
        err.Clear
        Html_Temp = doc.All(0).outerHTML
        If err.Number <> 0 Or Trim(Html_Temp) = "" Then Html_Temp = doc.All(1).outerHTML
        SetClipboardText Html_Temp
        Html_Temp = ""
        MsgBox "�����Ѿ����Ƶ���������", vbOKOnly, "����"
        
    Case "shj_image"
        If Web_Browser.Document.images.length > 0 Then
            Dim shj_image() As String, i As Long
            ReDim shj_image(Web_Browser.Document.images.length - 1)
            For i = 0 To UBound(shj_image)
                shj_image(i) = Web_Browser.Document.images(i).src
            Next
            SetClipboardText Join(shj_image, vbCrLf)
            MsgBox "�����Ѿ����Ƶ���������", vbOKOnly, "����"
        End If
    Case "shj_163"
        Call open_lock_Click
    Case "shj_ie"
        Shell "explorer.exe " & App_path & "\regfile\", vbNormalFocus
    Case "shj_ua"
        Web_Browser.Navigate "http://shj.ugschina.com/163/ua.asp"
    Case "shj_eht"
    
        Dim ex_ipb_member_id As String, ex_ipb_pass_hash As String
        ex_ipb_member_id = OX_Get_Cookie_Str("http://exhentai.org/", "ipb_member_id")
        ex_ipb_pass_hash = OX_Get_Cookie_Str("http://exhentai.org/", "ipb_pass_hash")
        
        If ex_ipb_member_id <> "" And ex_ipb_pass_hash <> "" Then
            Call InternetSetCookie("http://exhentai.org/", vbNullString, "igneous=")
            Call InternetSetCookie("http://exhentai.org/", vbNullString, "ipb_member_id=" & ex_ipb_member_id)
            Call InternetSetCookie("http://exhentai.org/", vbNullString, "ipb_pass_hash=" & ex_ipb_pass_hash)
            InputBox "�������" & vbCrLf & "�����Ȼ������è�������������è��ҳ��ʱ���������д��뵽��ַ��������", "����", "javascript:document.cookie=""ipb_member_id=" & ex_ipb_member_id & """;document.cookie=""ipb_pass_hash=" & ex_ipb_pass_hash & """;document.cookie=""igneous="";alert(""OK"");"
        Else
            ex_ipb_member_id = OX_Get_Cookie_Str("http://e-hentai.org/", "ipb_member_id")
            ex_ipb_pass_hash = OX_Get_Cookie_Str("http://e-hentai.org/", "ipb_pass_hash")
            If ex_ipb_member_id <> "" And ex_ipb_pass_hash <> "" Then
                Call InternetSetCookie("http://exhentai.org/", vbNullString, "igneous=")
                Call InternetSetCookie("http://exhentai.org/", vbNullString, "ipb_member_id=" & ex_ipb_member_id)
                Call InternetSetCookie("http://exhentai.org/", vbNullString, "ipb_pass_hash=" & ex_ipb_pass_hash)
                InputBox "�������" & vbCrLf & "�����Ȼ������è�������������è��ҳ��ʱ���������д��뵽��ַ��������", "����", "javascript:document.cookie=""ipb_member_id=" & ex_ipb_member_id & """;document.cookie=""ipb_pass_hash=" & ex_ipb_pass_hash & """;document.cookie=""igneous="";alert(""OK"");"
            Else
                MsgBox "����ʧ��" & vbrlf & "�����û�е�½�����ȵ�¼��", vbOKOnly, "����"
            End If
        End If
        If ex_ipb_member_id <> "" And ex_ipb_pass_hash <> "" Then
            url_input = "http://exhentai.org/"
            Call view_command_Click
        Else
            url_input = "http://e-hentai.org/"
            Call view_command_Click
        End If
        
    Case "shj_hp"
        Web_Browser.Navigate ButtonMenu.Tag
    Case "shj_forum"
        Web_Browser.Navigate ButtonMenu.Tag
    Case "shj_edit"
        Shell "notepad.exe """ & App_path & "\include\sys\urllist.txt""", 1
    Case Else
        If ButtonMenu.key Like "shj_urllist_?*" Then Web_Browser.Navigate ButtonMenu.Tag, , , , sysSet.OX_HTTP_Head
    End Select
End Sub

Private Sub Web_Browser_BeforeNavigate2(ByVal pDisp As Object, url As Variant, flags As Variant, TargetFrameName As Variant, PostData As Variant, Headers As Variant, Cancel As Boolean)
    On Error GoTo Web_Browser_BeforeNavigate_error
    Static web_load_times As Boolean
    DoEvents
    If web_load_times = False Then Cancel = True: web_load_times = True: Exit Sub
    OX_RunningInformation_Setting "׼������ " & url, 2
    If OX163_WebBrowser_scriptCode = "" Then Exit Sub 'URL = Replace$(App_path & "\start.htm", "\\start.htm", "\start.htm") Or
    '--------------------------------------------------------------------------------------------------
    If Web_Browser_header_tf = True Then GoTo Web_Browser_BeforeNavigate_error
    
    
    If s136_newwin = True Then
        s136_newwin = False
        pDisp.Navigate2 url, , , PostData, sysSet.OX_HTTP_Head
        Exit Sub
    End If
    
    Dim Script_App As New ScriptControl
    Dim script_retrun_code As String
    Dim run_script_str
    Dim web_postdata As String
    Set Script_App = Nothing
    
    Script_App.Language = "vbscript"
    'Script_App.Reset
    Script_App.AddCode (OX163_WebBrowser_scriptCode)
    web_postdata = ""
    If LenB(PostData) > 0 Then
        web_postdata = OX_Bin2CharsetTypeStr(PostData, Web_Browser.Document.Charset)
    End If
    script_retrun_code = Script_App.Run("OX163_Web_Browser_ctrl", url, flags, TargetFrameName, web_postdata, Headers)
    
    '0-URL, 1-Flags, 2-TargetFrameName, 3-PostData, 4-Headers
    run_script_str = Split(script_retrun_code, vbCrLf & vbCrLf)
    
    If (run_script_str(0) <> "" Or run_script_str(1) <> "" Or run_script_str(2) <> "" Or run_script_str(3) <> "" Or run_script_str(4) <> "") And Web_Browser_header_tf = False Then
        If run_script_str(0) <> "" Then url = run_script_str(0)
        If run_script_str(1) <> "" Then flags = run_script_str(1)
        If run_script_str(2) <> "" Then TargetFrameName = run_script_str(2)
        If run_script_str(3) <> "" Then PostData = OX_CharsetTypeStr2Bin(run_script_str(3), Web_Browser.Document.Charset)
        If run_script_str(4) <> "" Then Headers = run_script_str(4) ': MsgBox URL & vbCrLf & flags & vbCrLf & TargetFrameName & vbCrLf & PostData & vbCrLf & Headers
        Web_Browser_header_tf = True
        Cancel = True
        pDisp.Navigate2 url, flags, TargetFrameName, PostData, Headers
        'URL = Replace(URL, "g.e-hentai.org", "www.hentaiverse.net")
        'Web_Browser.Navigate URL, , , PostData, "Host: 95.211.21.16" & vbCrLf & "Referer: http://g.e-hentai.org/"
        
    Else
Web_Browser_BeforeNavigate_error:
        
        Web_Browser_header_tf = False
        
    End If
    '------------------------------------------
    
End Sub

Private Sub Web_Browser_TitleChange(ByVal Text As String)
    On Error Resume Next
    web_Title_Lab.caption = Text
    web_Title_Lab.ToolTipText = Text
    web_Title_Picture.Width = web_Title_Lab.Width + 45
End Sub

'Private Sub Web_Browser_DocumentComplete(ByVal pDisp As Object, URL As Variant)
'    Static script_retrun_code
'
'    If script_retrun_code = "" Then
'    script_retrun_code = "<script language='javascript'>function OX163(){alter(""OK"");}</script>" & URL & "<br>"
'    script_retrun_code = Web_Browser.Document.body.innerhtml & script_retrun_code
'    Web_Browser.Document.body.innerhtml = script_retrun_code
'    Else
'    'Web_Browser.Document.body.execScript "OX163()", "JavaScript"
'    End If
'End Sub

'Private Sub Web_Browser_DocumentComplete(ByVal pDisp As Object, URL As Variant)
'On Error Resume Next
'If down_count = 0 Then
'    If Web_Browser.Visible = True And Web_Browser.LocationURL <> Replace$(App_path & "\start.htm", "\\start.htm", "\start.htm") Then
'    url_temp = Web_Browser.LocationURL
'    url_input.Text = Web_Browser.LocationURL
'    buttom_enable True
'    End If
'End If
'Web_Browser_header_tf = False
'End Sub

'Private Sub Web_Browser_NavigateComplete2(ByVal pDisp As Object, URL As Variant)
'On Error Resume Next
'If down_count = 0 Then
'    If Web_Browser_url = "" Then Web_Browser_url = Web_Browser.LocationURL
'    If Web_Browser.Visible = True And Web_Browser_url <> Replace$(App_path & "\start.htm", "\\start.htm", "\start.htm") Then
'    url_temp = Web_Browser_url
'    url_input.Text = Web_Browser_url
'    buttom_enable True
'    Web_Browser_url = ""
'    End If
'End If
'Web_Browser_header_tf = False
'End Sub

Private Sub Web_Browser_NavigateComplete2(ByVal pDisp As Object, url As Variant)
    On Error Resume Next
    
    If down_count = 0 Then
        Dim Script_App As New ScriptControl
        Dim script_retrun_code As String
        
        If Web_Browser.Visible = True And script_retrun_code <> Replace$(App_path & "\start.htm", "\\start.htm", "\start.htm") Then
            Set Script_App = Nothing
            Script_App.Language = "vbscript"
            'Script_App.Reset
            Script_App.AddCode (OX163_WebBrowser_scriptCode)
            script_retrun_code = Web_Browser.LocationURL
            script_retrun_code = Script_App.Eval("OX163_Web_Browser_url(" & Chr(34) & script_retrun_code & Chr(34) & ")")
            url_temp = script_retrun_code
            url_input.Text = script_retrun_code
            If LCase(url_input.Text) = "http://shj.ugschina.com/163/ua.asp" Then
                Web_Browser.Document.parentWindow.execScript "var OX163UA=""" & Replace(sysSet.Customize_UA, """", "") & """", "JavaScript"
            End If
            buttom_enable True
        End If
    End If
    Web_Browser_header_tf = False
End Sub

Private Sub Web_Browser_DownloadBegin()
    If down_count = 0 Then
        If Web_Browser.Visible = True Then
            'buttom_enable False
            'view_command.Visible = False
        End If
    End If
End Sub

Private Sub list_save(ByVal list_name)
    On Error Resume Next
    
    Dim f_color
    Dim Frame2_Visible As Boolean
    If Frame2.Visible = True Then
        Frame2_Visible = True
    Else
        Frame2_Visible = False
    End If
    f_color = List1.ListItems(1).ForeColor
    
    Dim name_rules_add As String
    
    search_run
    
    'user_list---------------------
    If Frame2_Visible = True Then
        albumslist_back.Enabled = False
        user_list_output.Enabled = False
        user_list_save.Enabled = False
        
        user_list_find.Enabled = False
        Frame_search.Visible = False
        stop2.Enabled = True
    End If
    '------------------------------
    
    
    Form1.Icon = ico(1).Picture
    List1.Enabled = False
    
    '------------------------------����Ѹ�� flashget �Ƚű�------------------------------
    Dim list_pic_cout As Long
    Dim script_code As String
    Dim script_code_str As String
    Dim byteTmp() As Byte
    Dim old_Name
    
    script_code_str = ""
    
    If Dir(App_path & "\include\sys\OX163_htmlst_include.vbs") <> "" Then
        script_code_str = load_Script(App_path & "\include\sys\OX163_htmlst_include.vbs")
    End If
    
    If script_code_str = "" Then script_code_str = "<script language='javascript'>function loadxunlei(){var Thunder=null;try{Thunder=new ActiveXObject('ThunderAgent.Agent')}catch(e){var Thunder=null};for(i=1;i<gPhotoID.length;i++){Thunder.AddTask4(gPhotoInfo[i][0],gPhotoInfo[i][1],'','',gPhotoInfo[i][2],-1,0,-1,gPhotoInfo[i][3],'','');};Thunder.CommitTasks2(1);};</script><input type='submit' name='xunlei' id='xunlei' value='����Ѹ������' onclick='javascript:loadxunlei()'><br /><br />"
    
    list_pic_cout = 0
    script_code = "<script language='javascript'>var gPhotoInfo = {};var gPhotoID = [];</script>" & script_code_str
    
    '------------------------------------------------------------------------------------------
    Dim byte_temp() As Byte
    byte_temp = ""
    
    Dim list_save_type As Byte
    list_save_type = sysSet.list_type
    If Right(LCase(list_name), 4) = ".htm" Then list_save_type = 1
    If Right(LCase(list_name), 4) = ".txt" Then list_save_type = 2
    If Right(LCase(list_name), 4) = ".lst" Then list_save_type = 0
    
    
    
    
    Select Case list_save_type
    Case 1
        '        Open list_name For Binary Access Write As #1
        '        Put #1, 3, byte_temp
        Open GetShortName(list_name) For Output As #1
        Print #1, script_code
    Case 2
        '        Open GetShortName(list_name) For Binary Access Write As #1
        '        Put #1, 3, byte_temp
        '        Open GetShortName(Left(list_name, Len(list_name) - 4) & ".bat") For Binary Access Write As #2
        '        Put #2, 3, byte_temp
        Open GetShortName(list_name) For Output As #1
        Open GetShortName(Left(list_name, Len(list_name) - 4) & ".bat") For Output As #2
    Case Else
        '        Open GetShortName(list_name) For Binary Access Write As #1
        '        Put #1, 3, byte_temp
        Open GetShortName(list_name) For Output As #1
    End Select
    
    For list_save_i = 1 To List1.ListItems.count
        DoEvents
        List1.ListItems(list_save_i).EnsureVisible
        If List1.ListItems(list_save_i).Selected = True Then List1.ListItems(list_save_i).Selected = False
        
        If List1.ListItems(list_save_i).Checked = True Then
            List1.ListItems(list_save_i).Bold = True
            List1.ListItems(list_save_i).ForeColor = vbRed
            
            '----------------------------��������---------------------------------
            Select Case rename_rules_val
            Case 0
                name_rules_add = ""
            Case 1
                name_rules_add = Format((0 + list_save_i), "00000") & "_"
            Case 2
                name_rules_add = Format((List1.ListItems.count + 1 - list_save_i), "00000") & "_"
            End Select
            '-----------------------------------------------------------------
            
            Select Case list_save_type
            Case 1
                script_code_str = ""
                list_pic_cout = list_pic_cout + 1
                script_code_str = "<script language='javascript'>gPhotoID[" & list_pic_cout & "]=" & list_pic_cout & ";gPhotoInfo[" & list_pic_cout & "]=[""" & Trim(List1.ListItems(list_save_i).ListSubItems(3).Text) & """,""" & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & """," & fix_referer_cookies(Trim(List1.ListItems(list_save_i).ListSubItems(3).Text)) & "]</script>" & _
                "<a href=" & Chr(34) & Trim(List1.ListItems(list_save_i).ListSubItems(3).Text) & Chr(34) & "title=" & Chr(34) & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & Chr(34) & " target=_blank>" & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & "</a><br />" & Trim(List1.ListItems(list_save_i).ListSubItems(2).Text) & "<br /><br />"
                Print #1, script_code_str
                
            Case 2
                script_code_str = ""
                script_code_str = Trim(List1.ListItems(list_save_i).ListSubItems(3).Text)
                Print #1, script_code_str
                '                Put #1, , byte_temp
                
                old_Name = ""
                script_code_str = ""
                old_Name = Split(Trim(List1.ListItems(list_save_i).ListSubItems(3).Text), "/")
                script_code_str = "rename " & Chr(34) & old_Name(UBound(old_Name)) & Chr(34) & " " & Chr(34) & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & Chr(34)
                Print #2, script_code_str
                '                Put #2, , byte_temp
                
            Case Else
                script_code_str = ""
                script_code_str = Trim(List1.ListItems(list_save_i).ListSubItems(3).Text) & "?/" & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text)
                Print #1, script_code_str
                '                Put #1, , byte_temp
            End Select
            
            DoEvents
            List1.ListItems(list_save_i).ForeColor = f_color
            List1.ListItems(list_save_i).Bold = False
        End If
        
    Next list_save_i
    
    Close #1
    If list_save_type = 2 Then Close #2
    List1.Enabled = True
    search_end
    'user_list---------------------
    If Frame2_Visible = True Then
        albumslist_back.Enabled = True
        user_list_output.Enabled = True
        user_list_save.Enabled = True
        
        user_list_find.Enabled = True
        stop2.Enabled = False
    End If
    '------------------------------
    
    Form1.Icon = ico(0).Picture
    If now_tray = True Then
        TrayI.hIcon = ico(0).Picture
        TrayI.uFlags = NIF_ICON
        Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    End If
    
    If (sysSet.openfloder = True) And (auto_shutdown_tf = False) Then
        url_temp = Mid(list_name, 1, InStrRev(list_name, "\"))
        Call Timer_Open_Floder
        'If MsgBox("�������,�Ƿ���ļ��У�", vbYesNo + vbQuestion, "����") = vbYes Then Shell "explorer.exe " & new_name, vbNormalFocus
    ElseIf auto_shutdown_tf = True Then
        ShutDownWin.Show
    End If
End Sub

Private Sub save_list_image(ByVal floder_path)
    On Error Resume Next
    Dim f_color
    f_color = List1.ListItems(1).ForeColor
    
    Dim name_rules_add As String
    Dim Frame2_Visible As Boolean
    If Frame2.Visible = True Then
        Frame2_Visible = True
    Else
        Frame2_Visible = False
    End If
    
    List1.Enabled = False
    search_run
    
    'user_list---------------------
    If Frame2_Visible = True Then
        albumslist_back.Enabled = False
        user_list_output.Enabled = False
        user_list_save.Enabled = False
        
        OX_RunningInformation_Setting "����ͼƬ"
        
        user_list_find.Enabled = False
        Frame_search.Visible = False
        stop2.Enabled = True
    End If
    '------------------------------
    
    form_quit = False
    Form1.Icon = ico(1).Picture
    
    For i = 1 To List1.ListItems.count
        DoEvents
        Form1.caption = title_info & " - " & i & "/" & List1.ListItems.count
        TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
        If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        
        If List1.ListItems(i).Selected = True Then List1.ListItems(i).Selected = False
        
        
        If List1.ListItems(i).Checked = True And Trim(List1.ListItems(i).ListSubItems(3).Text) <> "" Then
            
            '----------------------------��������---------------------------------
            Select Case rename_rules_val
            Case 0
                name_rules_add = ""
            Case 1
                name_rules_add = Format((0 + i), "00000") & "_"
            Case 2
                name_rules_add = Format((List1.ListItems.count + 1 - i), "00000") & "_"
            End Select
            '-----------------------------------------------------------------
            
            List1.ListItems(i).EnsureVisible
            List1.ListItems(i).Bold = True
            List1.ListItems(i).ForeColor = vbRed
            
            
            
            download_FileName = floder_path & "\" & Trim(name_rules_add & List1.ListItems(i).ListSubItems(1).Text)
            strURL = Trim(List1.ListItems(i).ListSubItems(3).Text)
            
            If form_quit = True Then GoTo end_sub
            m_lngDocSize = 0
            old_FileSize = 0
            check_FileName
            
            If old_FileSize <> -1 Then
                download_ok = False
                Open download_FileName For Binary Access Write As #1
                retry_time = 0
                down_len = 0
                If InStr(LCase(strURL), "ox163_file::") = 1 Then
                    
                Else
                    start
                    Do While ((download_ok = False) Or (form_IsDelay_TF = True))
                        If form_quit = True Then Close #1: GoTo end_sub
                        DoEvents
                        Sleep 10
                    Loop
                End If
                Close #1
                
                If m_lngDocSize = -100 And old_FileSize = -100 Then OX_DelFile download_FileName
                
            End If
            List1.ListItems(i).ForeColor = f_color
            List1.ListItems(i).Bold = False
        End If
    Next i
    
    
end_sub:
    List1.ListItems(i).ForeColor = f_color
    List1.ListItems(i).Bold = False
    Inet1.Cancel
    OX_RunningInformation_Setting ""
    search_end
    
    'user_list---------------------
    If Frame2_Visible = True Then
        albumslist_back.Enabled = True
        user_list_output.Enabled = True
        user_list_save.Enabled = True
        
        OX_RunningInformation_Setting ""
        
        user_list_find.Enabled = True
        stop2.Enabled = False
        OX_RunningInformation_Setting ""
    End If
    '------------------------------
    
    form_quit = True
    Form1.caption = title_info
    TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
    If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    
    Form1.Icon = ico(0).Picture
    If now_tray = True Then
        TrayI.hIcon = ico(0).Picture
        TrayI.uFlags = NIF_ICON
        Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    End If
    
    List1.Enabled = True
    
    If (sysSet.openfloder = True) And (auto_shutdown_tf = False) Then
        url_temp = floder_path
        Call Timer_Open_Floder
    ElseIf auto_shutdown_tf = True Then
        ShutDownWin.Show
    End If
End Sub

Sub strURL_error()
    If LenB(strURL) > 2048 Then OX_RunningInformation_Setting "���ص�ַ�������ܵ��³�����"
End Sub

Sub start()
    On Error Resume Next
    Dim url_temp As String
    Dim start_time As Date
    
    If download_ok = True Or form_quit = True Then GoTo err_end
    
    '����ITC�ؼ�ʹ�õ�Э��ΪHTTPЭ��
    'Inet1.Protocol = icHTTP
    
    retry_time = retry_time + 1
    If retry_time = 1 Then
        m_lngDocSize = 0
new_down:
        strURL_error
        check_header.Cancel
        Inet1.Cancel
        start_time = Now
        OX_RunningInformation_Setting "׼����ȡ�ļ���Ϣ"
        Do
            DoEvents
            Sleep 10
            check_header.Cancel
            If form_quit = True Then Exit Do
        Loop While check_header.StillExecuting = True And DateDiff("s", start_time, Now()) < 10
        
        If form_quit = True Then GoTo err_end
        
        If sysSet.DelCache_BefDL >= 2 Then OX_DeleteUrlCacheEntryW strURL
        
        '����Execute������Web����������HTTP����
        If url_Referer <> "" Then
            stop_check_header = False
            OX_RunningInformation_Setting "��ȡ�ļ���Ϣ��"
            check_header.Execute Trim(strURL), "GET", , OX_Set_Referer(url_Referer, strURL) & vbCrLf & "Range: bytes=0-1"
            start_time = Now
            Do
                DoEvents
                Sleep 10
                If form_quit = True Then GoTo err_end
            Loop While (check_header.StillExecuting = True Or Inet1.StillExecuting = True) And m_lngDocSize = 0 And DateDiff("s", start_time, Now()) < 10
            stop_check_header = True
            If m_lngDocSize < 350 And m_lngDocSize > 0 Then m_lngDocSize = 0
            
            If m_lngDocSize > 0 And old_FileSize = m_lngDocSize Then
                old_FileSize = -100
                m_lngDocSize = -100
                download_ok = True
                Exit Sub
            ElseIf m_lngDocSize = -100 And old_FileSize = -100 Then
                download_ok = True
                Exit Sub
            End If
            
            If sysSet.DelCache_BefDL >= 2 Then OX_DeleteUrlCacheEntryW strURL
            Inet1.Execute Trim(strURL), "GET", , OX_Set_Referer(url_Referer, strURL)
            
        Else
            stop_check_header = False
            OX_RunningInformation_Setting "��ȡ�ļ���Ϣ��"
            check_header.Execute Trim(strURL), "GET", , sysSet.OX_HTTP_Head & vbCrLf & "Range: bytes=0-1"
            start_time = Now
            Do
                DoEvents
                Sleep 10
                If form_quit = True Then GoTo err_end
            Loop While (check_header.StillExecuting = True Or Inet1.StillExecuting = True) And m_lngDocSize = 0 And DateDiff("s", start_time, Now()) < 10
            stop_check_header = True
            If m_lngDocSize < 350 And m_lngDocSize > 0 Then m_lngDocSize = 0
            
            If m_lngDocSize > 0 And old_FileSize = m_lngDocSize Then
                old_FileSize = -100
                m_lngDocSize = -100
                download_ok = True
                Exit Sub
            ElseIf m_lngDocSize = -100 And old_FileSize = -100 Then
                download_ok = True
                Exit Sub
            End If
            
            If sysSet.DelCache_BefDL >= 2 Then OX_DeleteUrlCacheEntryW strURL
            Inet1.Execute Trim(strURL), "GET", , sysSet.OX_HTTP_Head
            
        End If
        
    Else
        download_ok = False
        
        If retry_time > sysSet.retry_times + 1 And sysSet.retry_times > 0 Then GoTo err_end
        
        If (5 * retry_time - 5) < sysSet.time_out Then
            OX_RunningInformation_Setting "�ȴ�" & (5 * retry_time - 5) & "����" & (retry_time - 1) & "������"
            delay (5 * retry_time - 5)
        Else
            OX_RunningInformation_Setting "�ȴ�" & (sysSet.time_out) & "����" & (retry_time - 1) & "������"
            delay sysSet.time_out
        End If
        
        If form_quit = True Then GoTo err_end
        
        ADSL_temp = update.OpenURL("http://photo.163.com")
        
        down_len = down_len - sysSet.downloadblock * 5
        
        If down_len < 1 Then down_len = 0
        
        If down_len = 0 Then GoTo new_down
        
        If Not (LCase(Content_Range) Like "bytes 0-?*/?*") Then
            down_len = 0
            GoTo new_down
        End If
        
        Inet1.Cancel
        
        If sysSet.DelCache_BefDL >= 2 Then OX_DeleteUrlCacheEntryW strURL
        
        If url_Referer <> "" Then
            Inet1.Execute Trim(strURL), "GET", , OX_Set_Referer(url_Referer, strURL) & vbCrLf & "Range: bytes=" & down_len & "-"
        Else
            Inet1.Execute Trim(strURL), "GET", , sysSet.OX_HTTP_Head & vbCrLf & "Range: bytes=" & down_len & "-"
        End If
    End If
    Exit Sub
    
err_end:
    
    OX_RunningInformation_Setting strURL & "����ʧ��"
    Inet1.Cancel
    download_ok = True
    
End Sub

Sub start_fast()
    DoEvents
    '�ļ���Сֵ��λ
    On Error GoTo err_ctrl
    '����ITC�ؼ�ʹ�õ�Э��ΪHTTPЭ��
    'fast_down.Protocol = icHTTP
    '����Execute������Web����������HTTP����
    'Microsoft URL Control - 6.01.9782
    
    strURL_error
    If sysSet.DelCache_BefDL = 1 Or sysSet.DelCache_BefDL > 2 Then OX_DeleteUrlCacheEntryW strURL
        
    If start_fast_method = "" Then

        If urlpage_Referer = "" Then
            fast_down.Execute Trim(strURL), "GET", , sysSet.OX_HTTP_Head
        Else
            fast_down.Execute Trim(strURL), "GET", , OX_Set_Referer(urlpage_Referer, strURL)
        End If
    Else
        If urlpage_Referer = "" Then
            fast_down.Execute Trim(strURL), "POST", start_fast_method, sysSet.OX_HTTP_Head
        Else
            fast_down.Execute Trim(strURL), "POST", start_fast_method, OX_Set_Referer(urlpage_Referer, strURL)
        End If
    End If
    Exit Sub
err_ctrl:
    fast_down.Cancel
    download_ok = True
End Sub

Sub startBrowser_fast()
    DoEvents
    Dim PostData As Variant
    On Error Resume Next
    BrowserW_url = strURL
    If start_fast_method = "" Then
        If urlpage_Referer = "" Then
            BrowserW.WebBrowser.Navigate Trim(strURL), , , , sysSet.OX_HTTP_Head
        Else
            BrowserW.WebBrowser.Navigate Trim(strURL), , , , OX_Set_Referer(urlpage_Referer, strURL)
        End If
    Else
        PostData = OX_CharsetTypeStr2Bin(start_fast_method, htmlCharsetType)
        If urlpage_Referer = "" Then
            BrowserW.WebBrowser.Navigate Trim(strURL), , , PostData, sysSet.OX_HTTP_Head & vbCrLf & "Content-Type: application/x-www-form-urlencoded"
        Else
            BrowserW.WebBrowser.Navigate Trim(strURL), , , PostData, OX_Set_Referer(urlpage_Referer, strURL) & vbCrLf & "Content-Type: application/x-www-form-urlencoded"
        End If
    End If
End Sub

Function new163_check_passcode(ByVal code_type As Boolean, ByVal check_passcode_isDown As Integer) As String
    On Error Resume Next
    new163_check_passcode = ""
    If isDown = 0 Then
        Html_Temp = new163pic_GetJs(OX_Script_Type, Replace(user_list.SelectedItem.ListSubItems(3).Text, "new163_ID_", ""), user_list.SelectedItem.ListSubItems(2).Text)
        form_quit = True
        If Html_Temp <> "" Then
            new163_check_passcode = Html_Temp
            If code_type = True Then user_list.SelectedItem.ListSubItems(3).Text = new163_check_passcode
        Else
            If MsgBox("���벻��ȷ�Ƿ�������д��", vbYesNo + vbExclamation, "����") = vbYes Then menu_psw_Click
        End If
    End If
End Function

Sub start_Post(ByVal psw As String, Referer_str As String)
    On Error GoTo err_ctrl
    strURL_error
    If sysSet.DelCache_BefDL = 1 Or sysSet.DelCache_BefDL > 2 Then OX_DeleteUrlCacheEntryW strURL
    '����Execute������Web����������HTTP����
    fast_down.Execute Trim(strURL), "POST", psw, Referer_str
    Exit Sub
    
err_ctrl:
    fast_down.Cancel
    download_ok = True
End Sub

Sub start_User(ByVal username, ByVal psw As String)
    On Error GoTo err_ctrl
    If sysSet.DelCache_BefDL = 1 Or sysSet.DelCache_BefDL > 2 Then OX_DeleteUrlCacheEntryW strURL
    '����Execute������Web����������HTTP����
    fast_down.Execute "https://reg.163.com/in.jsp?url=http://photo.163.com/myalbum.php", "Post", "username=" & username & "&password=" & psw, "Content-Type: application/x-www-form-urlencoded"
    Exit Sub
    
err_ctrl:
    fast_down.Cancel
    download_ok = True
End Sub

Private Function rename_ini_str(ByVal old_Name)
    rename_ini_str = Trim(old_Name)
    For i = 1 To Len(rename_ini_str)
        If InStr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_1234567890", Mid(rename_ini_str, i, 1)) < 1 Then rename_ini_str = Replace(rename_ini_str, Mid(rename_ini_str, i, 1), "_")
    Next
End Function



Private Sub check_FileName()
    On Error Resume Next
    
    Dim count As Integer, filename_len As Integer, path_split
    Dim path_filename As String, temp_filename As String, text_sortname As String
    Dim dir_tf
    temp_filename = download_FileName
    '---------------------------------------------------------
    path_filename = ""
    path_filename = Mid(download_FileName, 1, InStrRev(download_FileName, "\")) 'ȡ���ļ�·����path_filename
    path_split = Split(path_filename, "\") 'ȥ��·�������ͷβ�ո�C:\ aaaa \
    For path_i = 0 To UBound(path_split)
        path_split(path_i) = Trim(path_split(path_i))
    Next
    path_filename = Join(path_split, "\")
    temp_filename = Mid(temp_filename, InStrRev(temp_filename, "\") + 1) '�����ļ�����temp_filename
    '-------------------------------------------------------------------
    text_sortname = GetShortName(path_filename)
    If Right(text_sortname, 1) <> "\" Then text_sortname = text_sortname & "\"
    path_filename = text_sortname 'ȡ���ļ���·����path_filename
    
    '�������ļ���
    If InStrRev(temp_filename, ".") > 1 Then
        '�����ļ���(�޺�׺)
        s_filename = Mid(temp_filename, 1, InStrRev(temp_filename, ".") - 1)
        '�ļ���׺
        end_filename = Mid(temp_filename, InStrRev(temp_filename, "."))
    Else
        s_filename = temp_filename
        end_filename = ""
    End If
    
    If Len(end_filename) > 11 Then
        s_filename = s_filename & end_filename
        end_filename = ""
    End If
    
    If sysSet.Unicode_File = 0 Then
        s_filename = fix_Unicode_FileName(s_filename) '�޸�����unicode�ַ����ļ���
        If Left(s_filename, 1) = "." Then s_filename = "_" & Mid(s_filename, 2)
        
        end_filename = fix_Unicode_FileName(end_filename) '�޸�����unicode�ַ����ļ���
        If Right(end_filename, 1) = "." Then end_filename = Mid(end_filename, 1, Len(end_filename) - 1) & "_"
    End If
    
    '-------------------�ж��ļ�������--------------------------
    If sysSet.OX_Cut_Filelen = True Then
        filename_len = 250
re_len:
        temp_filename = ""
        
        Do While OX_CharacterLen(s_filename & end_filename) > filename_len
            DoEvents
            temp_filename = "~"
            s_filename = Left(s_filename, Len(s_filename) - 1)
        Loop
        If temp_filename <> "" Then s_filename = s_filename & temp_filename
        
        temp_filename = path_filename & s_filename & end_filename '���������ļ�·��
        
        err.Clear
        aaaa = OX_CharacterLen(s_filename)
        
        dir_tf = Dir(path_filename & String(OX_CharacterLen(s_filename), "x") & end_filename) 'Dir�����ļ�·�������������ʾwin���ܴ������ļ�
        If err.Number <> 0 And filename_len > 2 Then
            filename_len = filename_len - 1
            GoTo re_len
        ElseIf err.Number <> 0 And filename_len <= 2 Then
            download_FileName = ""
            download_FileFullName = ""
            Exit Sub
        End If
    End If
    '-----------------------------------------------------------
    
    err.Clear
    If OX_Dirfile(temp_filename) = True And sysSet.file_compare = 2 Then
        old_FileSize = -1
        download_FileName = ""
        download_FileFullName = ""
        Exit Sub
    ElseIf OX_Dirfile(temp_filename) = True And sysSet.file_compare = 1 Then 'file_compare�Ѵ����ļ��Ա�
        old_FileSize = FileLen(GetShortName(temp_filename))
    Else
        old_FileSize = 0
    End If
    '---------------------------------------------------------����ļ����ظ�
    count = 0
restart:
    DoEvents
    count = count + 1
    If count > 20000 Then MsgBox "���ļ������ļ�������20000��������", vbOKOnly, "����": form_quit = True: Exit Sub
    
    If OX_Dirfile(temp_filename) = True Then
        temp_filename = path_filename & s_filename & "(" & count & ")" & end_filename
        GoTo restart
    End If
        
    If OX_GreatFile(temp_filename) = True Then
        download_FileName = GetShortName(temp_filename)
        download_FileFullName = temp_filename
    Else
    '���������ļ��������ڣ����ٽ������ز����������ǻ�������
        download_FileName = ""
        download_FileFullName = ""
    End If
End Sub

Private Sub delay(n As Integer)
    On Error Resume Next
    form_IsDelay_TF = True
    Dim start_time As Date
    start_time = Now
    DoEvents
    Do While DateDiff("s", start_time, Now()) < n
        Sleep 100
        If form_quit = True Then Exit Do
        DoEvents
    Loop
    DoEvents
    form_IsDelay_TF = False
End Sub

Private Sub user_open()
    On Error Resume Next
    Call user_list_Clear
    form_height = 3000
    newform_resize
    step_three
    If sysSet.listshow = False Then user_list.Visible = False
    start_three
    Web_Browser.Visible = False
    web_Picture.Visible = False
    Web_Search.Visible = False
    frame_resize
    form_quit = False
    count1.caption = 0
    count2.caption = 0
    'Frame2.caption = url_input
    OX_Script_Type = url_input
    pass_code = "163"
    urlpage_Referer = ""
    
    fast_down.Cancel
    
    OX_RunningInformation_Setting "׼������" & url_input.Text & "����б�"
    Form1.Icon = ico(1).Picture
    
    '�ж�163����Ƿ�İ�
    'http://photo.163.com/photos/wehi/
    'http://photo.163.com/photo/wehi/#m=0&p=1&n=42
    
    htmlCharsetType = "GB2312"
    start_fast_method = ""
    
    strURL = "http://photo.163.com/" & url_input.Text & "/?" & Int(Timer() * 100000)
    
    download_ok = False
    start_fast
    
    Do While download_ok = False
        If form_quit = True Then GoTo end_user_open
        DoEvents
        Sleep 10
        DoEvents
    Loop
    
    Dim url_file_name As String
    Dim pw_file_tf As Boolean
    Dim html_sort As String
    Dim cout_num As Integer
    Dim temp(4) As String
    
    '>����ͼ���ʵ�����ַ�����ڣ�����������ĵ�ַ�Ƿ���ȷ��<
    ', albumUrl : '
    Html_Temp = Replace(Html_Temp, " ", "")
    '------------------------------------------------------------------------------
    '------------------------------------------------------------------------------
    '------------------------------------------------------------------------------
    If InStr(Html_Temp, "albumUrl:'") > 0 Then
        '�����ģʽ--------------------------------------------------------------------
        pass_code = "new163_pass"
        ', albumUrl : 'http://s1.photo.163.com/xu47UZNLlyzc91_-vcTcRw==/139048638495096616.js',
        fast_down.Cancel
        
        Html_Temp = Mid(Html_Temp, InStr(Html_Temp, "albumUrl:'") + Len("albumUrl:'"))
        strURL = Mid(Html_Temp, 1, InStr(Html_Temp, "'") - 1) & "?" & Int(Timer() * 100000)
        Html_Temp = ""
        
        download_ok = False
        start_fast
        
        Do While download_ok = False
            If form_quit = True Then GoTo end_user_open
            DoEvents
            Sleep 10
            DoEvents
        Loop
        
        '----------------����url�ļ���----------------------------------------------------
        url_file_name = rename_URL("http://photo.163.com/" & url_input.Text & "/")
        pw_163 = App_path & "\url\" & url_file_name
        
        If Dir(pw_163) <> "" Then
            pw_file_tf = True
        Else
            pw_file_tf = False
        End If
        '----------------�б����----------------------------------------------------
        
        If InStr(Html_Temp, "=[{id:") > 0 Then
            OX_RunningInformation_Setting "���ڷ���" & url_input.Text & "����б�"
            
            'var g_a$514028s='1187485;1187484;1187472;1187470;1187468;1187464;1187460;1187457;1187456;1187453;1530930;';
            'var g_a$514028d=[{id:
            '1187468,name:'��� ��ʦ��ʮ�� ��ԭ�Ѽͻ��� ',s:3,desc:'�x����ʮ�� ��ԭ�Ѽo����',st:1,au:0,count:14,t:1220710254100,ut:0,curl:'396/HjWuimtpsp-486EMHXLQ3A==/3070610520936616491.jpg',surl:'396/OO0u-aWixlqZ2iVH5rT2vg==/3070610520936616515.jpg',dmt:1220924333238,alc:true,comm:'',comdmt:0,kw:'',purl:'s1.photo.163.com/2vNO5QX8iwqKXVr2xX2Oiw==/72620543991354232.js'
            '},{id:
            '1530930,name:'password_text',s:0,desc:'password_text',st:1,au:1,count:0,t:1221048756165,ut:0,curl:'',surl:'',dmt:1221583000801,alc:true,comm:'',comdmt:0,kw:'',purl:''}];
            
            
            Html_Temp = Replace$(Replace$(Html_Temp, Chr(13), ""), Chr(10), "")
            
            
            Html_Temp = Mid(Html_Temp, InStr(Html_Temp, "=[{id:") + 6) '��λ����һ������IDͷ
            Html_Temp = Mid(Html_Temp, 1, InStr(Html_Temp, "'}];") - 1) '��λ���һ�����
            
            albumsINFO = Split(Html_Temp, "'},{id:")
            
            Html_Temp = ""
            
            iCount = UBound(albumsINFO)
            
            For cout_num = 0 To iCount
                DoEvents
                '1187484,
                'name:'Emma(MaxFactory)2007-2-48',
                's:3,desc:'Emma(MaxFactory)(2007-4-28)\r\nӢ�������� ����\r\nӢ�������Z����',
                'st:1,au:0,count:24,t:1220710254259,ut:0,curl:'463/zCkQnRZRsGTajD3mPmWbPg==/2529052665745287561.jpg',surl:'463/WSgM5FA6TcNz6wDpA5Lygg==/2529052665745287567.jpg',
                'dmt:1415505726,alc:true,comm:'',comdmt:0,kw:'',
                'purl:'s1.photo.163.com/F_NKGYPejc2IEsiRlW6glw==/46443371157270973.js
                
                '2012/9/12
                '1530930,name:'û&������',s:0,desc:'û������',st:1,au:1,count:0,t:1221048756165,ut:0,cvid:0,curl:'',surl:'',lurl:'',dmt:0,alc:true,kw:'',purl:'
                temp(0) = Mid(albumsINFO(cout_num), InStr(albumsINFO(cout_num), ",name:'") + 7)
                temp(3) = temp(0)
                
                temp(0) = Trim(Mid(temp(0), 1, InStr(temp(0), "'") - 1))
                If temp(0) = "" Then temp(0) = url_input.Text & "[Noname_Albums]"
                
                
                temp(3) = Mid(temp(3), InStr(temp(3), "'") + 1)
                temp(3) = Mid(temp(3), InStr(temp(3), ",desc:'") + 7)
                temp(2) = temp(3)
                temp(1) = temp(3)
                
                temp(3) = Trim(Mid(temp(3), 1, InStr(temp(3), "'") - 1))
                
                temp(1) = Mid(temp(1), InStr(temp(1), "'") + 1)
                temp(1) = Mid(temp(1), InStr(temp(1), "au:") + 3)
                temp(4) = temp(1)
                temp(1) = Trim(Mid(temp(1), 1, InStr(temp(1), ",") - 1))
                
                temp(2) = Mid(temp(2), InStr(temp(2), "'") + 1)
                temp(2) = Mid(temp(2), InStr(temp(2), "count:") + 6)
                temp(2) = Trim(Mid(temp(2), 1, InStr(temp(2), ",") - 1))
                If IsNumeric(temp(2)) Then
                    temp(2) = Format$(temp(2), "00000")
                Else
                    temp(2) = ""
                End If
                
                albumsID = ""
                albumsID = "new163_ID_" & Mid(albumsINFO(cout_num), 1, InStr(albumsINFO(cout_num), ",") - 1)
                '                albumsID = Trim(Mid(albumsINFO(cout_num), InStrRev(albumsINFO(cout_num), "'") + 1))
                '                If albumsID = "" Then
                '                    albumsID = "new163_ID_" & Mid(albumsINFO(cout_num), 1, InStr(albumsINFO(cout_num), ",") - 1)
                '                Else
                '                    albumsID = "http://" & albumsID
                '                End If
                
                If temp(1) = "8" Then
                    temp(1) = "1"
                    temp(4) = Mid(temp(4), InStr(temp(4), "ut:") + 3)
                    temp(4) = Mid(temp(4), 1, InStr(temp(4), ",") - 1)
                    If temp(4) = "0" Then
                        temp(1) = "0"
                    End If
                ElseIf temp(1) <> "1" Then
                    temp(1) = "0"
                End If
                
                If temp(1) = "1" Then
                    temp(1) = ""
                    If pw_file_tf = True Then temp(1) = GetUnicodeIniStr("password", albumsID, pw_163)
                    If temp(1) = "" Then temp(1) = "����д����............" & vbCrLf & ".........."
                Else
                    temp(1) = ""
                End If
                
                'book_sort
                user_list.ListItems.Add cout_num + 1, , Format$(cout_num + 1, "00000")
                'book_name temp(0)
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , reName_Str(fix_Code(unicode2asc(temp(0))))
                'book_psw temp(1)
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , temp(1)
                'book_ID
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , albumsID
                'book_number temp(2)
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , temp(2)
                'book_disc temp(3)
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , Str_unicode_Ctrl(fix_Code(unicode2asc(temp(3))))
                'book_undown
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , ""
                
                
                count1.caption = cout_num + 1
                If form_quit = True Then GoTo end_user_open
            Next
        End If
    End If
    '------------------------------------------------------------------------------
    '------------------------------------------------------------------------------
    '------------------------------------------------------------------------------
    
end_user_open:
    
    If sysSet.check_all = True Then menu_all_Click
    
    user_list.ListItems.Item(1).Selected = False
    
    user_list.Visible = True
    
    end_three
    form_quit = True
    'Timer2.Enabled = False
    Form1.Icon = ico(0).Picture
    If now_tray = True Then
        TrayI.hIcon = ico(0).Picture
        TrayI.uFlags = NIF_ICON
        Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    End If
    
    count1.caption = user_list.ListItems.count
    OX_RunningInformation_Setting ""
    
    If Form1.WindowState = 0 Then
        Select Case user_list.ListItems.count
        Case 0
            list_back1_Click
        Case Is < 7
        Case Is < 15
            Form1.Height = Form1.Height + (user_list.ListItems.count - 6) * 250
        Case Else
            Form1.Height = Form1.Height + 9 * 250
        End Select
    End If
    
    
    '----------------����url�ļ���---------------------------------------
    If user_list.ListItems.count > 0 Then
        Call OX_CreateUrlIniFile(url_file_name)
        url_Filelist.Refresh
    End If
    '--------------------------------------------------------------------
    
    user_list.SetFocus
    
End Sub

Private Sub start_three()
    setProgram.Enabled = False
    list_back1.Enabled = False
    save_all.Enabled = False
    user_list.Enabled = False
    out_all.Enabled = False
    list_check.Enabled = False
    user_list_find.Enabled = False
    stop2.Enabled = True
    'If sysSet.bottom_StatusBar = True Then Refresh_Panel
End Sub
Private Sub end_three()
    setProgram.Enabled = True
    list_back1.Enabled = True
    save_all.Enabled = True
    user_list.Enabled = True
    out_all.Enabled = True
    list_check.Enabled = True
    user_list_find.Enabled = True
    stop2.Enabled = False
End Sub


Private Sub save_all_list(ByVal floder_path)
    On Error Resume Next
    
    Dim f_color
    Dim byteTmp() As Byte
    Dim name_rules_add As String
    Dim list_pic_cout As Long
    Dim script_code As String
    Dim script_code_str As String
    Dim out_lst_file_name As String
    Dim old_Name
    
    f_color = user_list.ListItems(1).ForeColor
    
    form_quit = False
    user_list.Enabled = False
    OX_RunningInformation_Setting "���ڷ�������б�"
    Form1.Icon = ico(1).Picture
    setProgram.Enabled = False
    user_list_find.Enabled = False
    Frame_search.Visible = False
    stop2.Enabled = True
    list_back1.Enabled = False
    out_all.Enabled = False
    save_all.Enabled = False
    list_check.Enabled = False
    
    floder_path = floder_path & "\" & reName_Str(OX_Script_Type)
    MkDir floder_path
    
    If sysSet.url_folder = True Then
        If is_username(OX_Script_Type) = True Then
            floder_path = floder_path & "\" & rename_URL("http://photo.163.com/" & OX_Script_Type)
        Else
            floder_path = floder_path & "\" & rename_URL(url_input.Text)
        End If
        MkDir floder_path
        text_sortname = GetShortName(floder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid(text_sortname, 1, Len(text_sortname) - 1)
        floder_path = text_sortname
    End If
    
    Open_path = floder_path
    
    '-----------------------------------------------------------------------
    '�����163����������֤��----------------------------------------------
    '-----------------------------------------------------------------------
    If is_username(OX_Script_Type) = True And user_list.ListItems(1).ListSubItems(3).Text Like "new163_ID_?*" Then
        
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" And user_list.ListItems(i).Checked = True And user_list.ListItems(i).ListSubItems(2).Text <> "" Then
                
                user_list.ListItems(i).EnsureVisible '��ʾ������
                user_list.ListItems(i).Bold = True
                
                If user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." And sysSet.change_psw = True Then
                    If MsgBox("Ҫ���ص�������м�����ᣬ�Ƿ���д���룿", vbYesNo, "ѯ��") = vbYes Then
retry_new_password:
                        Form1.Enabled = False
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.password_win_title.caption = "��� """ & Replace(user_list.ListItems(i).ListSubItems(1).Text, "&", "&&") & """ ��" & password_win.password_win_title.caption
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                    Else
                        If MsgBox("���Ƿ��������δ��д���������������᣿", vbYesNo, "ѯ��") = vbYes Then
                            user_list.ListItems(i).Bold = False
                            Exit For
                        Else
                            GoTo next_new_password
                        End If
                    End If
                End If
                
                Html_Temp = ""
                Html_Temp = new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(2).Text)
                
                If Html_Temp = "" And sysSet.change_psw = True Then
                    If MsgBox("���벻��ȷ�Ƿ�������д��", vbYesNo + vbExclamation, "����") = vbYes Then
                        If user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(2).Text
                        GoTo retry_new_password
                    End If
                End If
                user_list.ListItems(i).Bold = False
            End If
next_new_password:
        Next i
    End If
    '-----------------------------------------------------------------------
    '-----------------------------------------------------------------------
    
    
    list_pic_cout = 0
    script_code_str = ""
    '-----------------------------------------------------------------------
    '�����б�Ĭ��ҳ�����---------------------------------------------------
    '-----------------------------------------------------------------------
    If Dir(App_path & "\include\sys\OX163_htmlst_include.vbs") <> "" Then
        script_code_str = load_Script(App_path & "\include\sys\OX163_htmlst_include.vbs")
    End If
    
    If script_code_str = "" Then script_code_str = "<script language='javascript'>function loadxunlei(){var Thunder=null;try{Thunder=new ActiveXObject('ThunderAgent.Agent')}catch(e){var Thunder=null};for(i=1;i<gPhotoID.length;i++){Thunder.AddTask4(gPhotoInfo[i][0],gPhotoInfo[i][1],'','',gPhotoInfo[i][2],-1,0,-1,gPhotoInfo[i][3]);};Thunder.CommitTasks2(1);};</script><input type='submit' name='xunlei' id='xunlei' value='����Ѹ������' onclick='javascript:loadxunlei()'><br /><br />"
    script_code = "<script language='javascript'>var gPhotoInfo = {};var gPhotoID = [];</script>" & script_code_str
    '-----------------------------------------------------------------------
    '-----------------------------------------------------------------------
    
    For i = 1 To user_list.ListItems.count
        DoEvents
        If form_quit = True Then GoTo end_sub
        
        '��������---------------------------------------------------------------
        Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count
        TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
        If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        '-----------------------------------------------------------------------
        '��ʽ����---------------------------------------------------------------
        If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Selected = False
        If Trim(user_list.ListItems(i).ListSubItems(3).Text) = "" Then user_list.ListItems(i).Checked = False
        '-----------------------------------------------------------------------
        '��ʽ����---------------------------------------------------------------
        If user_list.ListItems(i).Checked = True Then
            user_list.ListItems(i).EnsureVisible
            user_list.ListItems(i).Bold = True
            fast_down.Cancel
            
            '-----------------------------------------------------------------------
            '����������-----------------------------------------------------------
            '-----------------------------------------------------------------------
            If user_list.ListItems(i).ListSubItems(2).Text <> "" Then
                
                '������163���������-----------------------------------------------
                If is_username(OX_Script_Type) = True And user_list.SelectedItem.ListSubItems(3).Text Like "new163_ID_?*" And user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." Then GoTo end_one
                If is_username(OX_Script_Type) = True And user_list.SelectedItem.ListSubItems(3).Text Like "new163_ID_?*" Then GoTo new163_password_OK
                '--------------------------------------------------------------------
                
restar_psw: '��������----------------------------------------------------------------
                If user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then
                    url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(3).Text))
                    If url_temp = "" Then GoTo end_one
                    pass_accept = check_album_password(url_temp, user_list.ListItems(i).ListSubItems(2).Text)
                End If
                
retry_psw: '��������----------------------------------------------------------------
                If (pass_accept = False Or user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & "..........") And sysSet.change_psw = True Then
                    If MsgBox("��� " & user_list.ListItems(i).ListSubItems(1).Text & " �����벻��ȷ���Ƿ�������д���룿", vbYesNo + vbExclamation, "����") = vbYes Then
                        Form1.Enabled = False
                        If user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(2).Text
                        password_win.password_win_title.caption = "��� """ & Replace(user_list.ListItems(i).ListSubItems(1).Text, "&", "&&") & """ ��" & password_win.password_win_title.caption
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                        If pw_163 <> "" Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(3).Text), user_list.ListItems(i).ListSubItems(2).Text, pw_163
                        GoTo restar_psw
                    End If
                End If
            End If
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            
new163_password_OK:
            '-----------------------------------------------------------------------------------------------------
            '��ʼ�����ļ��б�-------------------------------------------------------------------------------------
            '-----------------------------------------------------------------------------------------------------
            OX_RunningInformation_Setting "���ڷ������"
            Call List1_Clear
            
            'old 163-----------------------------------------------------------------------------------------------------
            'If is_username(OX_Script_Type) = True And IsNumeric(user_list.ListItems(i).ListSubItems(3).Text) = True Then
            '    If user_list.ListItems(i).ListSubItems(2).Text <> "" Then
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(3).Text, "&from=guest"
            '    Else
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(3).Text, ""
            '    End If
            '------------------------------------------------------------------------------------------------------------
            
            If is_username(OX_Script_Type) = True And user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" Then
                strURL = Trim(new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(2).Text))
                If strURL = "" Then GoTo end_one
                Call new163pic_listPhotoUrl
            Else
                url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(3).Text))
                If url_temp = "" Then GoTo end_one
                '!!!!!û�а�����ֵ�����������������վ���벻��ͨ��session�жϣ���ôǰһ��check_album_password�ͻ���Ч��һ����վ���ǿ��Եģ�
                Call list_photo_script(url_temp)
                If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
            End If
            '------------------------------------------------------------------------------------
            If List1.ListItems.count = 0 Then GoTo end_one
            If user_list.ListItems(i).ListSubItems(6).Text <> "" Then albums_checked_pic user_list.ListItems(i).ListSubItems(6).Text
            
            '----------------------------------------------------------------
            '�����ļ�--------------------------------------------------------
            '----------------------------------------------------------------
            If out_lst_type_tf = False Then
                'ÿ����ᵥ�������б�
                out_lst_file_name = floder_path & "\" & reName_Str(user_list.ListItems(i).ListSubItems(1).Text)
                'ÿ�����ü���
                list_pic_cout = 0
            Else
                '�������һ�������б�
                out_lst_file_name = floder_path & "\" & reName_Str(OX_Script_Type & "_in_all(" & Now() & ")")
            End If
            
            If list_pic_cout = 0 Then
                Select Case sysSet.list_type
                Case 1
                    download_FileName = out_lst_file_name & ".htm"
                    check_FileName
                    'Open download_FileName For Binary Access Write As #1
                    Open download_FileName For Output As #1
                    Print #1, script_code & "<font color=red>" & user_list.ListItems(i).ListSubItems(1).Text & "</font><br /><br />"
                    If out_lst_type_tf = True Then script_code = ""
                    
                Case 2
                    download_FileName = out_lst_file_name & ".txt"
                    check_FileName
                    Open download_FileName For Output As #1
                    download_FileName = out_lst_file_name & ".bat"
                    check_FileName
                    Open download_FileName For Output As #2
                    
                Case Else
                    download_FileName = out_lst_file_name & ".lst"
                    check_FileName
                    Open download_FileName For Output As #1
                End Select
                
            ElseIf out_lst_type_tf = True And sysSet.list_type = 1 Then
                Print #1, "<font color=red>" & user_list.ListItems(i).ListSubItems(1).Text & "</font><br /><br />"
            End If
            '-------------------------------------------------------------------
            '----------------------------------------------------------------
            '----------------------------------------------------------------
            
            OX_RunningInformation_Setting "׼������" & Chr(13) & download_FileName
            
            For list_save_i = 1 To List1.ListItems.count
                DoEvents
                Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count & " - " & list_save_i & "/" & List1.ListItems.count
                
                If List1.ListItems(list_save_i).Checked = True Then
                    
                    '----------------------------��������---------------------------------
                    Select Case rename_rules_val
                    Case 0
                        name_rules_add = ""
                    Case 1
                        name_rules_add = Format((0 + list_save_i), "00000") & "_"
                    Case 2
                        name_rules_add = Format((List1.ListItems.count + 1 - list_save_i), "00000") & "_"
                    End Select
                    '-----------------------------------------------------------------
                    
                    Select Case sysSet.list_type
                    Case 1
                        list_pic_cout = list_pic_cout + 1
                        Print #1, "<script language='javascript'>gPhotoID[" & list_pic_cout & "]=" & list_pic_cout & ";gPhotoInfo[" & list_pic_cout & "]=[""" & Trim(List1.ListItems(list_save_i).ListSubItems(3).Text) & """,""" & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & """," & fix_referer_cookies(Trim(List1.ListItems(list_save_i).ListSubItems(3).Text)) & "]</script>" & _
                        "<a href=" & Chr(34) & Trim(List1.ListItems(list_save_i).ListSubItems(3).Text) & Chr(34) & "title=" & Chr(34) & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & Chr(34) & " target=_blank>" & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & "</a><br />" & Trim(List1.ListItems(list_save_i).ListSubItems(2).Text) & "<br /><br />"
                        
                    Case 2
                        old_Name = ""
                        list_pic_cout = list_pic_cout + 1
                        Print #1, Trim(List1.ListItems(list_save_i).ListSubItems(3).Text) & vbCrLf
                        old_Name = Split(Trim(List1.ListItems(list_save_i).ListSubItems(3).Text), "/")
                        Print #2, "rename " & Chr(34) & old_Name(UBound(old_Name)) & Chr(34) & " " & Chr(34) & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) & Chr(34)
                        
                    Case Else
                        list_pic_cout = list_pic_cout + 1
                        Print #1, Trim(List1.ListItems(list_save_i).ListSubItems(3).Text) & "?/" & name_rules_add & Trim(List1.ListItems(list_save_i).ListSubItems(1).Text) 'fix_Unicode_FileName(Trim(List1.ListItems(list_save_i).ListSubItems(1).Text))
                    End Select
                    
                    DoEvents
                End If
                
            Next list_save_i
            
            DoEvents
            If form_quit = True Then GoTo end_sub
            
            
end_one:
            '--------------------------���ϲ��ļ��������رձ����ļ�-----------------------------------------
            If out_lst_type_tf = False Then
                Close #1
                If sysSet.list_type = 2 Then Close #2
            End If
            '--------------------------
            user_list.ListItems(i).ForeColor = f_color
            user_list.ListItems(i).Bold = False
            '--------------------------
        End If
        '--------------------------
        
    Next i
    '--------------------------
    
end_sub:
    user_list.ListItems(i).ForeColor = f_color
    user_list.ListItems(i).Bold = False
    Close #1
    If sysSet.list_type = 2 Then Close #2
    
    OX_RunningInformation_Setting ""
    user_list.ListItems(i).Bold = False
    form_quit = True
    
    setProgram.Enabled = True
    stop2.Enabled = False
    user_list_find.Enabled = True
    list_back1.Enabled = True
    out_all.Enabled = True
    save_all.Enabled = True
    list_check.Enabled = True
    user_list.Enabled = True
    OX_RunningInformation_Setting ""
    'Timer2.Enabled = False
    Form1.caption = title_info
    TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
    If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    
    Form1.Icon = ico(0).Picture
    
    If now_tray = True Then
        TrayI.hIcon = ico(0).Picture
        TrayI.uFlags = NIF_ICON
        Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    End If
    
    Html_Temp = ""
    
    If (sysSet.openfloder = True) And (auto_shutdown_tf = False) Then
        url_temp = floder_path
        Call Timer_Open_Floder
    ElseIf auto_shutdown_tf = True Then
        ShutDownWin.Show
    End If
    download_FileName = ""
    download_FileFullName = ""
End Sub


Private Sub save_all_pic(ByVal floder_path)
    On Error Resume Next
    
    Dim f_color
    Dim pass_accept As Boolean
    
    f_color = user_list.ListItems(1).ForeColor
    
    Dim name_rules_add As String
    
    form_quit = False
    user_list.Enabled = False
    OX_RunningInformation_Setting "���ڷ�������б�"
    Form1.Icon = ico(1).Picture
    setProgram.Enabled = False
    stop2.Enabled = True
    user_list_find.Enabled = False
    Frame_search.Visible = False
    list_back1.Enabled = False
    out_all.Enabled = False
    save_all.Enabled = False
    list_check.Enabled = False
    
    floder_path = floder_path & "\" & reName_Str(OX_Script_Type)
    MkDir floder_path
    
    If sysSet.url_folder = True Then
        If is_username(OX_Script_Type) = True Then
            floder_path = floder_path & "\" & rename_URL("http://photo.163.com/" & OX_Script_Type & "/")
        Else
            floder_path = floder_path & "\" & rename_URL(url_input.Text)
        End If
        MkDir floder_path
        text_sortname = GetShortName(floder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid(text_sortname, 1, Len(text_sortname) - 1)
        floder_path = text_sortname
    End If
    
    Open_path = floder_path
    
    '-----------------------------------------------------------------------
    '�����163����������֤��----------------------------------------------
    '-----------------------------------------------------------------------
    If is_username(OX_Script_Type) = True And user_list.ListItems(1).ListSubItems(3).Text Like "new163_ID_?*" Then
        
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" And user_list.ListItems(i).Checked = True And user_list.ListItems(i).ListSubItems(2).Text <> "" Then
                
                user_list.ListItems(i).EnsureVisible '��ʾ������
                user_list.ListItems(i).Bold = True
                
                If user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." And sysSet.change_psw = True Then
                    If MsgBox("Ҫ��������м�����ᣬ�Ƿ���д���룿", vbYesNo, "ѯ��") = vbYes Then
retry_new_password:
                        Form1.Enabled = False
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.password_win_title.caption = "��� """ & Replace(user_list.ListItems(i).ListSubItems(1).Text, "&", "&&") & """ ��" & password_win.password_win_title.caption
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                    Else
                        If MsgBox("���Ƿ��������δ��д���������������᣿", vbYesNo, "ѯ��") = vbYes Then
                            user_list.ListItems(i).Bold = False
                            Exit For
                        Else
                            GoTo next_new_password
                        End If
                    End If
                End If
                
                Html_Temp = ""
                Html_Temp = new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(2).Text)
                
                If Html_Temp = "" And sysSet.change_psw = True Then
                    If MsgBox("���벻��ȷ�Ƿ�������д��", vbYesNo + vbExclamation, "����") = vbYes Then
                        If user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(2).Text
                        GoTo retry_new_password
                    End If
                End If
                user_list.ListItems(i).Bold = False
            End If
next_new_password:
        Next i
    End If
    '-----------------------------------------------------------------------
    '-----------------------------------------------------------------------
    
    For i = 1 To user_list.ListItems.count
        DoEvents
        
        '��������---------------------------------------------------------------
        Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count
        TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
        If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        '-----------------------------------------------------------------------
        '��ʽ����---------------------------------------------------------------
        If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Selected = False
        If Trim(user_list.ListItems(i).ListSubItems(3).Text) = "" Then user_list.ListItems(i).Checked = False
        '-----------------------------------------------------------------------
        '��ʽ����---------------------------------------------------------------
        If user_list.ListItems(i).Checked = True Then
            user_list.ListItems(i).EnsureVisible
            user_list.ListItems(i).Bold = True
            fast_down.Cancel
            
            '��������ļ���-----------------------------------------------------
            'if then
            If is_username(OX_Script_Type) = True And IsNumeric(Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", "")) = True Then
                MkDir floder_path & "\" & reName_Str(user_list.ListItems(i).ListSubItems(1).Text) & "(AID_" & Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", "") & ")"
            Else
                MkDir floder_path & "\" & reName_Str(user_list.ListItems(i).ListSubItems(1).Text)
            End If
            
            If form_quit = True Then GoTo end_sub
            
            'Else
            '   MkDir floder_path & "\" & rename_str(user_list.ListItems(i).ListSubItems(1).Text) & Format$(Now, "_YYYYMMDD_HHMMNN")
            'End If
            'download_FileName = floder_path & "\" & rename_str(user_list.ListItems(i).ListSubItems(1).Text) & ".txt"
            'check_FileName
            '-------------------------------------------------------------------
            
            '-----------------------------------------------------------------------
            '����������-----------------------------------------------------------
            '-----------------------------------------------------------------------
            If user_list.ListItems(i).ListSubItems(2).Text <> "" Then
                
                '������163���������-----------------------------------------------
                If is_username(OX_Script_Type) = True And user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" And user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & ".........." Then GoTo end_one
                If is_username(OX_Script_Type) = True And user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" Then GoTo new163_password_OK
                '--------------------------------------------------------------------
                
restar_psw: '��������----------------------------------------------------------------
                If user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then
                    url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(3).Text))
                    If url_temp = "" Then GoTo end_one
                    pass_accept = check_album_password(url_temp, user_list.ListItems(i).ListSubItems(2).Text)
                End If
                
retry_psw: '��������----------------------------------------------------------------
                If (pass_accept = False Or user_list.ListItems(i).ListSubItems(2).Text = "����д����............" & vbCrLf & "..........") And sysSet.change_psw = True Then
                    If MsgBox("��� " & user_list.ListItems(i).ListSubItems(1).Text & " �����벻��ȷ���Ƿ�������д���룿", vbYesNo + vbExclamation, "����") = vbYes Then
                        Form1.Enabled = False
                        If user_list.ListItems(i).ListSubItems(2).Text <> "����д����............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(2).Text
                        password_win.password_win_title.caption = "��� """ & Replace(user_list.ListItems(i).ListSubItems(1).Text, "&", "&&") & """ ��" & password_win.password_win_title.caption
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                        If pw_163 <> "" Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(3).Text), user_list.ListItems(i).ListSubItems(2).Text, pw_163
                        GoTo restar_psw
                    End If
                End If
            End If
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            
new163_password_OK:
            '-----------------------------------------------------------------------------------------------------
            '��ʼ�����ļ��б�-------------------------------------------------------------------------------------
            '-----------------------------------------------------------------------------------------------------
            OX_RunningInformation_Setting "���ڷ������"
            Call List1_Clear
            
            'old 163-----------------------------------------------------------------------------------------------------
            'If is_username(OX_Script_Type) = True And IsNumeric(user_list.ListItems(i).ListSubItems(3).Text) = True Then
            '    If user_list.ListItems(i).ListSubItems(2).Text <> "" Then
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(3).Text, "&from=guest"
            '    Else
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(3).Text, ""
            '    End If
            '------------------------------------------------------------------------------------------------------------
            
            If is_username(OX_Script_Type) = True And user_list.ListItems(i).ListSubItems(3).Text Like "new163_ID_?*" Then
                strURL = Trim(new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(2).Text))
                If strURL = "" Then GoTo end_one
                Call new163pic_listPhotoUrl
            Else
                url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(3).Text))
                If url_temp = "" Then GoTo end_one
                '!!!!!û�а�����ֵ�����������������վ���벻��ͨ��session�жϣ���ôǰһ��check_album_password�ͻ���Ч��һ����վ���ǿ��Եģ�
                Call list_photo_script(url_temp)
                If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
            End If
            '------------------------------------------------------------------------------------
            
            If List1.ListItems.count = 0 Then GoTo end_one
            If user_list.ListItems(i).ListSubItems(6).Text <> "" Then albums_checked_pic user_list.ListItems(i).ListSubItems(6).Text
            
            '�����б��е�ͼƬ------------------------------------
            
            OX_RunningInformation_Setting "���ڱ���ͼƬ"
            user_list.ListItems(i).ListSubItems(4).Text = Format$(List1.ListItems.count, "00000")
            user_list.ListItems(i).ListSubItems(4).ForeColor = vbRed
            user_list.ListItems(i).ListSubItems(4).Bold = True
            user_list.ListItems(i).ListSubItems(4).Text = "0/" & user_list.ListItems(i).ListSubItems(4).Text
            '------------------------------------------------------------------------------------
            For save_img_i = 1 To List1.ListItems.count
                DoEvents
                Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count & " - " & save_img_i & "/" & List1.ListItems.count
                TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
                If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
                
                user_list.ListItems(i).ListSubItems(4).Text = save_img_i & Mid(user_list.ListItems(i).ListSubItems(4).Text, InStr(user_list.ListItems(i).ListSubItems(4).Text, "/"))
                
                If List1.ListItems(save_img_i).Checked = True And Trim(List1.ListItems(i).ListSubItems(3).Text) <> "" Then
                    
                    '----------------------------��������---------------------------------
                    Select Case rename_rules_val
                    Case 0
                        name_rules_add = ""
                    Case 1
                        name_rules_add = Format((0 + save_img_i), "00000") & "_"
                    Case 2
                        name_rules_add = Format((List1.ListItems.count + 1 - save_img_i), "00000") & "_"
                    End Select
                    '-----------------------------------------------------------------
                    
                    If is_username(OX_Script_Type) = True And IsNumeric(Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", "")) = True Then
                        download_FileName = floder_path & "\" & reName_Str(user_list.ListItems(i).ListSubItems(1).Text) & "(AID_" & Replace(user_list.ListItems(i).ListSubItems(3).Text, "new163_ID_", "") & ")\" & name_rules_add & List1.ListItems(save_img_i).ListSubItems(1).Text
                    Else
                        download_FileName = floder_path & "\" & Trim(reName_Str(user_list.ListItems(i).ListSubItems(1).Text)) & "\" & Trim(name_rules_add & List1.ListItems(save_img_i).ListSubItems(1).Text)
                    End If
                    
                    If form_quit = True Then GoTo end_sub
                    
                    m_lngDocSize = 0
                    old_FileSize = 0
                    Call check_FileName
                    
                    If old_FileSize <> -1 Then
                        
                        strURL = Trim(List1.ListItems(save_img_i).ListSubItems(3).Text)
                        
                        download_ok = False
                        Open download_FileName For Binary Access Write As #1
                        retry_time = 0
                        down_len = 0
                        start
                        
                        Do While ((download_ok = False) Or (form_IsDelay_TF = True))
                            If form_quit = True Then Close #1: GoTo end_sub
                            DoEvents
                            Sleep 10
                        Loop
                        Close #1
                        
                        If m_lngDocSize = -100 And old_FileSize = -100 Then OX_DelFile download_FileName
                        
                    End If
                    
                End If
                
            Next save_img_i
            '----------------------------------------------------
            
end_one:
            user_list.ListItems(i).ListSubItems(4).Text = Mid(user_list.ListItems(i).ListSubItems(4).Text, InStr(user_list.ListItems(i).ListSubItems(4).Text, "/") + 1)
            user_list.ListItems(i).ListSubItems(4).ForeColor = f_color
            user_list.ListItems(i).ListSubItems(4).Bold = False
            user_list.ListItems(i).Bold = False
        End If
        
    Next i
    
end_sub:
    user_list.ListItems(i).ListSubItems(4).Text = Mid(user_list.ListItems(i).ListSubItems(4).Text, InStr(user_list.ListItems(i).ListSubItems(4).Text, "/") + 1)
    user_list.ListItems(i).ListSubItems(4).ForeColor = f_color
    user_list.ListItems(i).ListSubItems(4).Bold = False
    user_list.ListItems(i).Bold = False
    
    OX_RunningInformation_Setting ""
    user_list.ListItems(i).Bold = False
    form_quit = True
    
    setProgram.Enabled = True
    stop2.Enabled = False
    user_list_find.Enabled = True
    list_back1.Enabled = True
    out_all.Enabled = True
    save_all.Enabled = True
    list_check.Enabled = True
    user_list.Enabled = True
    OX_RunningInformation_Setting ""
    Form1.caption = title_info
    TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
    If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    
    Form1.Icon = ico(0).Picture
    If now_tray = True Then
        TrayI.hIcon = ico(0).Picture
        TrayI.uFlags = NIF_ICON
        Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
    End If
    
    Html_Temp = ""
    
    If (sysSet.openfloder = True) And (auto_shutdown_tf = False) Then
        url_temp = floder_path
        Call Timer_Open_Floder
    ElseIf auto_shutdown_tf = True Then
        ShutDownWin.Show
    End If
    download_FileName = ""
    download_FileFullName = ""
End Sub
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'Private Sub Web_Browser_FileDownload(Cancel As Boolean)
'On Error Resume Next
'If top_Picture(0).Visible = False Then always_on_top False
'End Sub
'
'
'Private Sub Web_Search_FileDownload(Cancel As Boolean)
'On Error Resume Next
'If top_Picture(0).Visible = False Then always_on_top False
'End Sub


Private Sub Web_Browser_StatusTextChange(ByVal Text As String)
    On Error Resume Next
    'Web_Browser.ReadyState
    '0��READYSTATE_COMPLETE ����δ��ʼ������û�е��� open()����
    '1��READYSTATE_INTERACTIVE �����Ѿ����������ǻ�û�з��ͣ���û�е��� send()����
    '2��READYSTATE_LOADED �����ѷ��ͣ����ڴ����У�ͨ�����ڿ��Դ���Ӧ�л�ȡ����ͷ����
    '3��READYSTATE_LOADING �����ڴ����У�ͨ����Ӧ�����в������ݿ����ˣ����Ƿ�������û�������Ӧ�����ɡ�
    '4��READYSTATE_UNINITIALIZED ��Ӧ����ɣ������Ի�ȡ��ʹ�÷���������Ӧ�ˡ�
    If Text Like "?*://?*" Then
        OX_RunningInformation_Setting Text, 2
    ElseIf Web_Browser.ReadyState = 4 Then '
        OX_RunningInformation_Setting ""
    Else
        OX_RunningInformation_Setting "Web Browser - Busy=" & Web_Browser.Busy & " - ReadyState: loading...", 2
    End If
    
    If Web_Browser.ReadyState = 4 Then
        Web_Toolbar.Buttons(4).Enabled = False
    Else
        Web_Toolbar.Buttons(4).Enabled = True
    End If
End Sub

Private Sub Web_Search_StatusTextChange(ByVal Text As String)
    On Error Resume Next
    If Text Like "?*://?*" Then
        OX_RunningInformation_Setting Text, 2
    ElseIf Web_Search.ReadyState = 4 Or Web_Search.Busy = False Then 'If Text = "" Or Text = "���" Or Text = LCase("completed") Then
        OX_RunningInformation_Setting ""
    Else
        OX_RunningInformation_Setting "���ڴ�163�������", 2
    End If
    
End Sub

Private Sub Web_Browser_NewWindow2(ppDisp As Object, Cancel As Boolean)
    On Error Resume Next
    If sysSet.new_ie_win = True Then
        Cancel = True
    ElseIf sysSet.ox163_ie_win = True Then
        new_win = True
        Set ppDisp = Web_Search.Object
    Else
        new_win = False
    End If
End Sub


Private Sub Web_Search_BeforeNavigate2(ByVal pDisp As Object, url As Variant, flags As Variant, TargetFrameName As Variant, PostData As Variant, Headers As Variant, Cancel As Boolean)
    On Error Resume Next
    Static web_load_times As Boolean
    DoEvents
    If web_load_times = False Then Cancel = True: web_load_times = True: Exit Sub
    If new_win = True Then
        new_win = False
        Cancel = True
        If Form1.WindowState = 2 Then
            Shell "OX163.exe " & url & vbCrLf & "0|0|0|0" & vbCrLf & Web_Browser.LocationURL, vbNormalFocus
        Else
            Shell "OX163.exe " & url & vbCrLf & Form1.Top & "|" & Form1.Left & "|" & Form1.Width & "|" & Form1.Height & vbCrLf & Web_Browser.LocationURL, vbNormalFocus
        End If
        Exit Sub
    End If
End Sub

Private Sub Web_Search_TitleChange(ByVal Text As String)
    s136_title = Text
End Sub

Private Sub Web_Search_NewWindow2(ppDisp As Object, Cancel As Boolean)
    On Error Resume Next
    Web_Browser.Height = Web_Search.Height - Web_Toolbar.Height
    web_Picture.Visible = True
    Web_Browser.Visible = True
    s136_newwin = True
    Set ppDisp = Web_Browser.Object
    'Web_Browser.Navigate2 Web_Search, , , , sysSet.OX_HTTP_Head
    Web_Search.Visible = False
End Sub

'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------

Sub OX_RunningInformation_Setting(ByRef inform_text, Optional ByRef Obj_Type As Byte)
    If inform_text = "" Then
        StatusBar.Panels(3).Text = show_inform(0)
    Else
        Select Case Obj_Type
        Case 0 '��������״̬��������
            StatusBar.Panels(3).Text = inform_text
            OX_History_Logs.OX_HL_listView_Add 0, inform_text, strURL, IIf(Open_path <> "", Open_path, App_path & "\download\"), IIf(is_username(OX_Script_Type), "sys_163", OX_Script_Type)
        Case 1
            StatusBar.Panels(3).Text = inform_text
        Case 2 'Web_Browser_StatusTextChange
            StatusBar.Panels(3).Text = inform_text
            If Web_Browser.ReadyState <> 4 Or (Web_Browser.ReadyState = 4 And Left(LCase(inform_text), 4) <> "http") Then
                OX_History_Logs.OX_HL_listView_Add 1, inform_text, IIf(web_Picture.Visible = True, Web_Browser.LocationURL, Web_Search.LocationURL), IIf(web_Picture.Visible = True, web_Title_Lab.caption, "163�������"), IIf(web_Picture.Visible = True, Web_Browser.ReadyState, Web_Search.ReadyState)
            End If
        Case 3 'Inet Download Change
            If lblProgressInfo1.Visible = False Then lblProgressInfo1.Visible = True
            If lblProgressInfo2.Visible = False Then lblProgressInfo2.Visible = True
            lblProgressInfo1.caption = inform_text
            lblProgressInfo2.caption = inform_text
        End Select
    End If
End Sub

'------------------------------------------------------------------------------
'------------------------------------------------------------------------------

Private Sub OLEDragDrop(Data As DataObject)
    On Error Resume Next
    If Data.GetFormat(vbCFText) = True Then
        url_input.Text = Data.GetData(vbCFText)
        url_input.SelStart = 0
        url_input.SelLength = Len(url_input.Text)
        
    ElseIf Data.GetFormat(vbCFFiles) = True Then
        For Each n In Data.Files
            If LCase(n) Like "*.htm" Or LCase(n) Like "*txt" Or LCase(n) Like "*.html" Then
                url_input.Text = n
                Call view_command_Click
                Exit For
            End If
        Next
    End If
    url_input.SetFocus
End Sub

Public Sub fix_rar()
    On Error Resume Next
    
    OX_RunningInformation_Setting "���ڽ���αͼ���..."
    
    If sysSet.fix_rar_name = "" Or sysSet.fix_rar_name = "-1" Then Exit Sub
    name_list = Split(sysSet.fix_rar_name, "|")
    
    Dim a As Boolean
    a = False
    
    For i = 1 To List1.ListItems.count
        DoEvents
        Dim rar_type As String
        rar_type = ""
        
        For j = 0 To UBound(name_list)
            name_list(j) = Trim(name_list(j))
            If InStr(LCase(List1.ListItems(i).ListSubItems(1).Text), LCase("." & name_list(j))) > 1 And is_fileName(name_list(j)) Then
                rar_type = "." & name_list(j)
                Exit For
            End If
        Next j
        
        If rar_type <> "" Then
            
            If a = False And sysSet.fix_rar = 2 Then
                If MsgBox("ͼƬ����Ϊ" & Mid(rar_type, 2) & "αͼ���Ƿ������������", vbYesNo, "ѯ��") = vbNo Then List1.ListItems(1).EnsureVisible: Exit Sub
            End If
            
            a = True
            
            file_type = Mid(List1.ListItems(i).ListSubItems(1).Text, InStr(LCase(List1.ListItems(i).ListSubItems(1).Text), LCase(rar_type)) + Len(rar_type))
            If LCase(file_type) = ".jpg" Or LCase(file_type) = ".gif" Or LCase(file_type) = ".jpeg" Or LCase(file_type) = ".bmp" Then
                List1.ListItems(i).ListSubItems(1).Text = Left(List1.ListItems(i).ListSubItems(1).Text, InStr(LCase(List1.ListItems(i).ListSubItems(1).Text), LCase(rar_type)) + Len(rar_type) - 1)
            End If
        End If
    Next i
    List1.ListItems(1).EnsureVisible
End Sub

Private Function fix_referer_cookies(ByVal referer_cookies As String) As String
    On Error Resume Next
    Dim Referer_temp As String
    Dim a As String
    Dim b As String
    fix_referer_cookies = """"","""""
    a = ""
    b = ""
    
    If url_Referer <> "" Then
        Referer_temp = Trim(url_Referer)
        If InStr(LCase(Referer_temp), "cookie:") = 1 Or InStr(LCase(Referer_temp), vbCrLf & "cookie:") > 0 Then
            b = Mid(Referer_temp, InStr(LCase(Referer_temp), "cookie: "))
            b = Mid(b, 1, InStr(b, vbCrLf) - 1)
            b = Mid(b, InStr(LCase(b), "cookie:") + 8)
            Referer_temp = Replace(Referer_temp, 1, InStr(LCase(b), "cookie:") - 1) & Mid(Referer_temp, InStr(LCase(b), "cookie:") + 8)
        End If
        
        Referer_temp = OX_Set_Referer(Referer_temp, strURL)
        If InStr(LCase(Referer_temp), "referer:") = 1 Or InStr(LCase(Referer_temp), vbCrLf & "referer:") > 0 Then
            a = Mid(Referer_temp, InStr(LCase(Referer_temp), "referer:"))
            a = Mid(a, 1, InStr(a, vbCrLf) - 1)
            a = Mid(a, InStr(LCase(a), "referer:") + 9)
        End If
    End If
    
    fix_referer_cookies = """" & Trim(a) & """,""" & Trim(b) & """"
End Function

'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------

Private Sub list_163pic(ByVal user_ID, ByVal albums_ID, ByVal password)
    Dim a, b, C As String
    
    Dim check_2 As Boolean
    check_2 = False
    
    strURL = Trim("http://photo.163.com/js/photosinfo.php?user=" & user_ID & "&aid=" & albums_ID & password)
    
    OX_RunningInformation_Setting "׼������" & user_ID & "���" & albums_ID & "�б�"
    
check_2nd:
    
    fast_down.Cancel
    download_ok = False
    htmlCharsetType = "GB2312"
    start_fast_method = ""
    start_fast
    Do While download_ok = False
        If form_quit = True Then Exit Sub
        DoEvents
        Sleep 10
        DoEvents
    Loop
    
    OX_RunningInformation_Setting "���ڷ���" & user_ID & "���" & albums_ID & "�б�"
    
    If (InStr(Html_Temp, "gPhotosIds[") < 1) And check_2 = False Then strURL = strURL & "&from=guest": check_2 = True: GoTo check_2nd
    
    If InStr(Html_Temp, "gPhotosIds[") > 0 Then
        
        Html_Temp = Replace$(Replace$(Html_Temp, Chr(13), ""), Chr(10), "")
        '��λ����һ��ͼƬ���ı�ͷ
        Html_Temp = Mid(Html_Temp, InStr(Html_Temp, "gPhotosIds[") + 11)
        '��λ�����һ��ͼƬ
        Html_Temp = Mid(Html_Temp, 1, Len(Html_Temp) - 3)
        
        If Html_Temp = "" Then Exit Sub
        
        '------------------------------------------------------------------------------------------------
        'var hasPhoto = true;
        'var hasCover = true;
        'var hasPermission = true;
        '
        'var gAlbumInfo = {'cover':"536.1720686103.1.475x474",'privacy':1,'title':"jpg\u4f2a\u56fe\u5de5\u5177 ",'descr':"frar.exe "};
        'var gPhotosInfo = {};
        'var gPhotosIds = [];
        '
        'gPhotosIds[0] = 1720686103;
        'gPhotosInfo[1720686103] = [536,1,"475x474","frar.rar.jpg "];
        'gPhotosIds[1] = 3374951583;
        'gPhotosInfo[3374951583] = [840,2,"620x877","eri","http://img.photo.163.com/AyDZ553hZ6C1o9m8XWYS0g==/166914661191212341.jpg","http://img.photo.163.com/g3KiC-wAzGHManz4VXul-A==/166914661191212393.jpg"];
        'gPhotosIds[2] = 3374951167;
        'gPhotosInfo[3374951167] = [840,2,"480x711","shanhaijing","http://img.photo.163.com/ahGCmCqNq6SQ1N-UBxLkNA==/170573835888471309.jpg","http://img.photo.163.com/gqHMWo-i40ngCIze00d3ig==/165507286308585542.gif"];
        'gPhotosIds[3] = 3374948846;
        'gPhotosInfo[3374948846] = [840,2,"1500x1276","aniu","http://img.photo.163.com/pOgNDwIqLfIWGYX3PRQ86A==/168322036074781114.jpg","http://img.photo.163.com/yFNrdi8cX7tWVusok_-n4w==/170292360911762331.jpg"];
        
        '------------------------------------------------------------------------------------------------
        
        
        picINFO = Split(Html_Temp, Chr(34) & "];gPhotosIds[")
        
        '------>0] = 1720686103;gPhotosInfo[1720686103] = [536,1,"475x474","frar.rar.jpg
        
        Html_Temp = ""
        iCount = UBound(picINFO)
        
        Dim cout_num As Integer
        
        For cout_num = 0 To iCount
            
            DoEvents
            picINFO(cout_num) = Mid(picINFO(cout_num), InStr(picINFO(cout_num), ";gPhotosInfo[") + 13)
            '------>1720686103] = [536,1,"475x474","frar.rar.jpg
            
            picID = Mid(picINFO(cout_num), 1, InStr(picINFO(cout_num), "] = [") - 1)
            
            picINFO(cout_num) = Mid(picINFO(cout_num), InStr(picINFO(cout_num), "] = [") + 5)
            html_sort = Split(picINFO(cout_num), Chr(34) & "," & Chr(34))
            
            If UBound(html_sort) > 2 Then
                '--------------------------------------------------------
                '840,2,"620x877","ͼƬ����","http://img.photo.163.com/AyDZ553hZ6C1o9m8XWYS0g==/166914661191212341.jpg","http://img.photo.163.com/g3KiC-wAzGHManz4VXul-A==/166914661191212393.jpg
                
                'ͼƬ����
                If LCase(Mid(html_sort(3), Len(html_sort(3)) - 3)) = ".jpg" Then
                    C = "1"
                Else
                    C = Mid(html_sort(0), InStr(html_sort(0), ",") + 1, 1)
                End If
                '----------------
                'ͼƬ����
                a = reName_Str(fix_Code(unicode2asc(Trim(html_sort(1)))))
                '----------------
                'ͼƬ����
                b = Trim(html_sort(3))
                '----------------
                Select Case C
                Case "1"
                    If Len(a) > 4 Then
                        If Right(LCase(a), 4) <> ".jpg" Then
                            a = a & ".jpg"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".jpg"
                    Else
                        a = a & ".jpg"
                    End If
                    
                Case "2"
                    If Len(a) > 4 Then
                        If Right(LCase(a), 4) <> ".gif" Then
                            a = a & ".gif"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".gif"
                    Else
                        a = a & ".gif"
                    End If
                    
                Case Else
                    If Len(a) > 5 Then
                        If Right(LCase(a), 5) <> ".jpeg" Then
                            a = a & ".jpeg"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".jpeg"
                    Else
                        a = a & ".jpeg"
                    End If
                End Select
                
                'list_picID
                List1.ListItems.Add cout_num + 1, , Format$(cout_num + 1, "00000")
                'list_picName a
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , a
                'list_picDisc
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , fix_Pix(Mid(html_sort(0), InStr(html_sort(0), Chr(34)) + 1)) & " - " & Str_unicode_Ctrl(fix_Code(unicode2asc(Trim(html_sort(1)))))
                'list_picUrl temp(2)
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , b
                
                List1.ListItems(cout_num + 1).Checked = True
                
                
                '--------------------------------------------------------
            Else
                
                
                '--------------------------------------------------------
                '��ʽ  536,1,"475x474","frar.rar.jpg
                '�ļ����
                'picID
                '----------------
                
                'ͼƬ����
                C = Mid(html_sort(0), InStr(html_sort(0), ",") + 1, 1)
                '----------------
                
                '���img���
                a = Left(html_sort(0), InStr(html_sort(0), ",") - 1)
                '----------------
                
                'ͼƬ����
                If C = "1" Then
                    b = "http://img" & a & ".photo.163.com/" & user_ID & "/" & albums_ID & "/" & picID & ".jpg"
                ElseIf C = "2" Then
                    b = "http://img" & a & ".photo.163.com/" & user_ID & "/" & albums_ID & "/" & picID & ".gif"
                Else
                    b = "http://img" & a & ".photo.163.com/" & user_ID & "/" & albums_ID & "/" & picID & ".jpeg"
                End If
                
                'ͼƬ����
                a = reName_Str(fix_Code(unicode2asc(Trim(html_sort(1)))))
                
                Select Case C
                    
                Case "1"
                    If Len(a) > 4 Then
                        If Right(LCase(a), 4) <> ".jpg" Then
                            a = a & ".jpg"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".jpg"
                    Else
                        a = a & ".jpg"
                    End If
                    
                Case "2"
                    If Len(a) > 4 Then
                        If Right(LCase(a), 4) <> ".gif" Then
                            a = a & ".gif"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".gif"
                    Else
                        a = a & ".gif"
                    End If
                    
                Case Else
                    If Len(a) > 5 Then
                        If Right(LCase(a), 5) <> ".jpeg" Then
                            a = a & ".jpeg"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".jpeg"
                    Else
                        a = a & ".jpeg"
                    End If
                End Select
                
                'list_picID
                List1.ListItems.Add cout_num + 1, , Format$(cout_num + 1, "00000")
                'list_picName a
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , a
                'list_picDisc
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , fix_Pix(Mid(html_sort(0), InStr(html_sort(0), Chr(34)) + 1)) & " - " & Str_unicode_Ctrl(fix_Code(unicode2asc(Trim(html_sort(1)))))
                'list_picUrl temp(2)
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , b
                
                List1.ListItems(cout_num + 1).Checked = True
                
            End If
            
            
            list_count.caption = List1.ListItems.count
            DoEvents
            If form_quit = True Then Exit Sub
            
        Next
        
    End If
    
    If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
    
End Sub


'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------

Private Sub run_script()
    On Error Resume Next
    
    Dim run_script_str
    Dim url_file_name As String
    url_file_name = rename_URL(url_input.Text)
    
    run_script_str = Split(url_temp, "|")
    'url_temp������գ�������
    '-------------------------------------------------------------------------------------------------------------
    If LCase(run_script_str(3)) = "photo" Then
        '-------------------------------------------------------------------------------------------------------------
        
        form_height = 3000
        step_two
        search_run
        '-----------------------------------
        Web_Browser.Visible = False
        web_Picture.Visible = False
        Web_Search.Visible = False
        '-----------------------------------
        newform_resize
        List1.Width = Frame1.Width
        List1.Height = Form1.Height - List1.Top - 550 - show_StatusBar
        buttom_enable False
        
        Call List1_Clear
        List1.Visible = True
        If sysSet.listshow = False Then List1.Visible = False
        List1.Enabled = False
        
        'If sysSet.bottom_StatusBar = True Then Refresh_Panel
        
        list_count.Visible = True
        
        Form1.Icon = ico(1).Picture
        form_quit = False
        OX_Script_Type = run_script_str(0) & "|" & run_script_str(1) & "|" & run_script_str(2)
        OX_RunningInformation_Setting "��ʼִ���ⲿ�ű�"
        
        '--------------------------------------------------------
        
        list_photo_script url_temp
        If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
        
        '--------------------------------------------------------
        
        
        OX_RunningInformation_Setting ""
        Form1.Icon = ico(0).Picture
        If now_tray = True Then
            TrayI.hIcon = ico(0).Picture
            TrayI.uFlags = NIF_ICON
            Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        End If
        list_count.caption = List1.ListItems.count
        search_end
        buttom_enable True
        form_quit = True
        List1.Enabled = True
        Html_Temp = ""
        If List1.Visible = False Then List1.Visible = True
        If List1.ListItems.count = 0 Then
            list_back_Click
            view_command_Click
            Exit Sub
        End If
        
        If Form1.WindowState = 0 Then
            Select Case List1.ListItems.count
            Case Is < 7
            Case Is < 15
                Form1.Height = Form1.Height + (List1.ListItems.count - 6) * 250
            Case Else
                Form1.Height = Form1.Height + 9 * 250
            End Select
        End If
        
        '------------------------------����url�ļ�-----------------------
        If List1.ListItems.count > 0 Then
            Call OX_CreateUrlIniFile(url_file_name)
            url_Filelist.Refresh
        End If
        '----------------------------------------------------------------
        
        List1.ListItems.Item(1).Selected = False
        List1.SetFocus
        
        
        '-------------------------------------------------------------------------------------------------------------
    ElseIf LCase(run_script_str(3)) = "album" Then
        '-------------------------------------------------------------------------------------------------------------
        
        Call user_list_Clear
        
        form_height = 3000
        newform_resize
        step_three
        If sysSet.listshow = False Then user_list.Visible = False
        start_three
        Web_Browser.Visible = False
        web_Picture.Visible = False
        Web_Search.Visible = False
        frame_resize
        download_ok = False
        form_quit = False
        
        Form1.Icon = ico(1).Picture
        
        'Frame2.caption = run_script_str(0) & "|" & run_script_str(1) & "|" & run_script_str(2)
        OX_Script_Type = run_script_str(0) & "|" & run_script_str(1) & "|" & run_script_str(2)
        OX_RunningInformation_Setting "��ʼִ���ⲿ�ű�"
        '--------------------------------------------------------
        
        list_album_script url_temp
        
        '--------------------------------------------------------
        If sysSet.check_all = True Then menu_all_Click
        
        user_list.ListItems.Item(1).Selected = False
        
        If user_list.Visible = False Then user_list.Visible = True
        
        end_three
        form_quit = True
        'Timer2.Enabled = False
        
        Form1.Icon = ico(0).Picture
        If now_tray = True Then
            TrayI.hIcon = ico(0).Picture
            TrayI.uFlags = NIF_ICON
            Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        End If
        
        count1.caption = user_list.ListItems.count
        OX_RunningInformation_Setting ""
        
        If Form1.WindowState = 0 Then
            Select Case user_list.ListItems.count
            Case 0
                list_back1_Click
                view_command_Click
                Exit Sub
            Case Is < 7
            Case Is < 15
                Form1.Height = Form1.Height + (user_list.ListItems.count - 6) * 250
            Case Else
                Form1.Height = Form1.Height + 9 * 250
            End Select
        End If
        
        '------------------------------����url�ļ�----------------------------------
        If user_list.ListItems.count > 0 Then
            Call OX_CreateUrlIniFile(url_file_name)
            url_Filelist.Refresh
        End If
        '----------------------------------------------------------------
        
        
        user_list.SetFocus
        
        '-------------------------------------------------------------------------------------------------------------
    End If
    
End Sub

Private Sub list_photo_script(ByVal photo_info)
    On Error Resume Next
    Dim Script_App As New ScriptControl, Script_Retrun_Temp As String, i As Long, Script_Info As ScriptInfo
    Script_Info = ParseInclude(photo_info)
    '���ؽű�----------------------------------------------------
    Call OX_load_Script_Code(Script_Info, Script_App)
    Script_Retrun_Temp = ""
    '-------------------------------------------------------------------------
    DoEvents
    If form_quit = True Then Exit Sub
    Call DisplayCaption("ִ��return_download_url")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    'get cookies----------------------------------------------------------------
    cookies_text = GetCookie(Script_Info.Criteria)
    err.Clear
    Call Script_App.Run("set_urlpagecookies", cookies_text)
    Call CheckScriptError
    '---------------------------------------------------------------------------
    'ȡ�ø�ʽ��������ӵ�ַ��Ϣ
    Script_Retrun_Temp = Script_App.Run("return_download_url", Script_Info.Criteria)
    Call CheckScriptError
    'ȡ�ø�ʽ����ĸ�ҳ�������ҳ��ͷ��Ϣ��
    urlpage_Referer = Trim(Script_App.Eval("OX163_urlpage_Referer"))
    Call CheckScriptError
    '---------------------------------------------------------------------------
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    '��ʽ������ʼǰ����ʼ��������������ʼ��url_Referer������Ϣ����Ϊ������һ������б�ʱ���Ѿ�����ò���
    start_fast_method = "" '������ǰ���µ�POST��ʽ��Ϣ������ϢΪ��ʱ����ʹ��POST��ʽ����ʹ��GET��ʽ
    Dim Dl_Info As downloadInfo
    Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
    '������ʽ��ʼ-----------------------------------------------------------------------------
    Do
        Call DisplayCaption("׼������" & Dl_Info.downloadURL)
        '��������ȫ�ֱ���
        htmlCharsetType = Script_Info.Encoding 'ҳ���ַ���
        strURL = Dl_Info.downloadURL '����ҳ����
        If Dl_Info.refererINFO <> "" Then url_Referer = Dl_Info.refererINFO '���������ļ�ʱʹ�õ�����ҳ��ͷ��Ϣ��
        If Dl_Info.POSTmethod <> "" Then start_fast_method = Dl_Info.POSTmethod 'POST��ʽ������Ϣ����Ϊ��
        'ִ������ҳ�溯��
        If ScriptDownload(Dl_Info.mode) Then Exit Sub
        'replace html----------------------------------------------------------------------------
        Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language) 'ʹ��script_app.Run��ʽ����Ҫ�滻�س������ŵ������ַ�
        DoEvents
        If form_quit = True Then Exit Sub
        Call DisplayCaption("ִ��return_download_list")
        If Form1.WindowState = 0 Then always_on_top False
        top_Picture(0).Enabled = False
        top_Picture(1).Enabled = False
        'get cookies---------------------------------------------------------------------------------
        cookies_text = GetCookie(Dl_Info.downloadURL)
        err.Clear
        Call Script_App.Run("set_urlpagecookies", cookies_text)
        Call CheckScriptError
        'list Photo Url ȡ����Ƭ���ӵ�ַ����Ϣ------------------------------------------------------
        Script_Retrun_Temp = Script_App.Run("return_download_list", Html_Temp, Script_Info.Criteria)
        Call CheckScriptError
        'ȡ�ø�ʽ����ĸ�ҳ�������ҳ��ͷ��Ϣ��
        urlpage_Referer = Trim(Script_App.Eval("OX163_urlpage_Referer"))
        Call CheckScriptError
        If Form1.WindowState = 0 Then always_on_top sysSet.always_top
        top_Picture(0).Enabled = True
        top_Picture(1).Enabled = True
        Call DisplayCaption("���ڷ���" & Dl_Info.downloadURL)
        
        Dim photoInfos() As PhotoInfo
        photoInfos = ParsePhoto(Script_Retrun_Temp)
        
        For i = 0 To UBound(photoInfos)
            DoEvents
            If form_quit = True Then Exit Sub
            If i < UBound(photoInfos) Then
                Dim currentListItem As ListItem
                'list_picID
                Set currentListItem = List1.ListItems.Add(List1.ListItems.count + 1, , Format$(List1.ListItems.count + 1, "00000"))
                'list_picName
                Call currentListItem.ListSubItems.Add(, , photoInfos(i).fileName)
                'list_picDisc
                Call currentListItem.ListSubItems.Add(, , photoInfos(i).Description)
                'list_picUrl
                Call currentListItem.ListSubItems.Add(, , photoInfos(i).picURL)
                List1.ListItems(List1.ListItems.count).Checked = True
            Else
                If photoInfos(i).picURL = "" Or photoInfos(i).picURL = "0" Then Exit Sub
                Dl_Info = ParseDownloadURL(photoInfos(i).picURL)
                If Dl_Info.isResume = False Then Exit Sub
            End If
            list_count.caption = List1.ListItems.count
            count2.caption = List1.ListItems.count
        Next i
    Loop While (Dl_Info.isResume = True And Dl_Info.downloadURL <> "")
End Sub

Private Sub list_album_script(ByVal album_info)
    On Error Resume Next
    Dim Script_App As New ScriptControl, Script_Retrun_Temp As String, i As Long
    '����url�ļ���----------------------------------------------------
    Dim url_file_name As String
    url_file_name = rename_URL(url_input.Text)
    pw_163 = App_path & "\url\" & url_file_name
    Dim pw_file_tf As Boolean
    pw_file_tf = (Dir(pw_163) <> "")
    'ȡ���ⲿ�ű���Ϣ�Լ�ԭʼ����-----------------------------------------------
    Dim Script_Info As ScriptInfo
    Script_Info = ParseInclude(album_info)
    '���ؽű�----------------------------------------------------
    Call OX_load_Script_Code(Script_Info, Script_App)
    Script_Retrun_Temp = ""
    '-------------------------------------------------------------------------
    DoEvents
    If form_quit = True Then Exit Sub
    Call DisplayCaption("ִ��return_download_url")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    'get cookies----------------------------------------------------------------
    cookies_text = GetCookie(Script_Info.Criteria)
    err.Clear
    Call Script_App.Run("set_urlpagecookies", cookies_text)
    Call CheckScriptError
    '---------------------------------------------------------------------------
    'ȡ�ø�ʽ��������ӵ�ַ��Ϣ
    Script_Retrun_Temp = Script_App.Run("return_download_url", Script_Info.Criteria)
    Call CheckScriptError
    'ȡ�ø�ʽ����ĸ�ҳ�������ҳ��ͷ��Ϣ��
    urlpage_Referer = Trim(Script_App.Eval("OX163_urlpage_Referer"))
    Call CheckScriptError
    '---------------------------------------------------------------------------
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    '��ʽ������ʼǰ����ʼ��������
    url_Referer = ""       '���������ļ�ʱʹ�õ�����ҳ��ͷ��Ϣ��
    start_fast_method = "" '������ǰ���µ�POST��ʽ��Ϣ������ϢΪ��ʱ����ʹ��POST��ʽ����ʹ��GET��ʽ
    Dim Dl_Info As downloadInfo
    Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
    '������ʽ��ʼ-----------------------------------------------------------------------------
    Do
        Call DisplayCaption("׼������" & Dl_Info.downloadURL)
        '��������ȫ�ֱ���
        htmlCharsetType = Script_Info.Encoding 'ҳ���ַ���
        strURL = Dl_Info.downloadURL '����ҳ����
        If Dl_Info.refererINFO <> "" Then url_Referer = Dl_Info.refererINFO '���������ļ�ʱʹ�õ�����ҳ��ͷ��Ϣ��
        If Dl_Info.POSTmethod <> "" Then start_fast_method = Dl_Info.POSTmethod 'POST��ʽ������Ϣ����Ϊ��
        'ִ������ҳ�溯��
        If ScriptDownload(Dl_Info.mode) Then Exit Sub
        'replace html----------------------------------------------------------------------------
        Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language)'ʹ��script_app.Run��ʽ����Ҫ�滻�س������ŵ������ַ�
        DoEvents
        If form_quit = True Then Exit Sub
        Call DisplayCaption("ִ��return_albums_list")
        If Form1.WindowState = 0 Then always_on_top False
        top_Picture(0).Enabled = False
        top_Picture(1).Enabled = False
        err.Clear
        'get cookies---------------------------------------------------------------------------------
        cookies_text = GetCookie(Dl_Info.downloadURL)
        err.Clear
        Call Script_App.Run("set_urlpagecookies", cookies_text)
        Call CheckScriptError
        'list albums Url ȡ��������ӵ�ַ����Ϣ------------------------------------------------------
        Script_Retrun_Temp = Script_App.Run("return_albums_list", Html_Temp, Script_Info.Criteria)
        Call CheckScriptError
        'ȡ�ø�ʽ����ĸ�ҵ�������ҳ��ͷ��Ϣ��
        urlpage_Referer = Trim(Script_App.Eval("OX163_urlpage_Referer"))
        Call CheckScriptError
        If Form1.WindowState = 0 Then always_on_top sysSet.always_top
        top_Picture(0).Enabled = True
        top_Picture(1).Enabled = True
        Call DisplayCaption("���ڷ���" & Dl_Info.downloadURL)
        
        Dim albmInfos() As AlbumInfo
        albmInfos = ParseAlbum(Script_Retrun_Temp)
        
        For i = 0 To UBound(albmInfos)
            DoEvents
            If form_quit = True Then Exit Sub
            If i < UBound(albmInfos) Then
                Dim currentListItem As ListItem
                'album sort ID
                Set currentListItem = user_list.ListItems.Add(user_list.ListItems.count + 1, , Format$(user_list.ListItems.count + 1, "00000"))
                'album_name
                Call currentListItem.ListSubItems.Add(, , albmInfos(i).AlbumName)
                'list_album_password
                Script_Retrun_Temp = ""
                If albmInfos(i).hasPassword = True Then
                    If pw_file_tf = True Then Script_Retrun_Temp = GetUnicodeIniStr("password", rename_ini_str(albmInfos(i).url), pw_163)
                    If Script_Retrun_Temp = "" Then Script_Retrun_Temp = "����д����............" & vbCrLf & ".........."
                End If
                Call currentListItem.ListSubItems.Add(, , Script_Retrun_Temp)
                Script_Retrun_Temp = ""
                'list_album_url
                Call currentListItem.ListSubItems.Add(, , albmInfos(i).url)
                'list_album_photo_numbers
                Call currentListItem.ListSubItems.Add(, , albmInfos(i).picCount)
                'list_album_disc
                Call currentListItem.ListSubItems.Add(, , albmInfos(i).Description)
                'list_album_undown
                Call currentListItem.ListSubItems.Add(, , "")
            Else
                If albmInfos(i).url = "" Or albmInfos(i).url = "0" Then Exit Sub
                Dl_Info = ParseDownloadURL(albmInfos(i).url)
                If Dl_Info.isResume = False Then Exit Sub
            End If
            count1.caption = user_list.ListItems.count
        Next i
    Loop While (Dl_Info.isResume = True And Dl_Info.downloadURL <> "")
End Sub

Private Function check_album_password(ByVal album_info, ByVal pass_word) As Boolean
    On Error Resume Next
    check_album_password = False
    Dim Script_App As New ScriptControl, Script_Retrun_Temp As String, i As Long
    'ȡ���ⲿ�ű���Ϣ�Լ�ԭʼ����-----------------------------------------------
    run_script_str = Split(album_info, "|")
    Dim Script_Info As ScriptInfo
    Script_Info = ParseInclude(album_info)
    '���ؽű�----------------------------------------------------
    Call OX_load_Script_Code(Script_Info, Script_App)
    Script_Retrun_Temp = ""
    'get album Url----------------------------------------------------------------------------
    DoEvents
    If form_quit = True Then Exit Function
    Call DisplayCaption("ִ��return_download_url")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    'get cookies----------------------------------------------------------------
    cookies_text = GetCookie(Script_Info.Criteria)
    err.Clear
    Call Script_App.Run("set_urlpagecookies", cookies_text)
    Call CheckScriptError
    '---------------------------------------------------------------------------
    'ȡ�ø�ʽ��������ӵ�ַ��Ϣ
    Script_Retrun_Temp = Script_App.Run("return_download_url", Script_Info.Criteria)
    'ȡ�ø�ʽ����ĸ�ҳ�������ҳ��ͷ��Ϣ��
    Call CheckScriptError
    urlpage_Referer = Trim(Script_App.Eval("OX163_urlpage_Referer"))
    Call CheckScriptError
    '---------------------------------------------------------------------------
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    If Script_Retrun_Temp = "" Then Exit Function
    '��ʽ������ʼǰ����ʼ��������
    start_fast_method = "" '������ǰ���µ�POST��ʽ��Ϣ������ϢΪ��ʱ����ʹ��POST��ʽ����ʹ��GET��ʽ
    pass_word = URLEncode(pass_word)
    Call DisplayCaption("ִ��return_password_rules")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    '������ʽ��ʼ,ȡ���Ƿ�Ϊ�߼����봫��ģʽ����Ϊ�򵥷�ʽ�ķ�����������ӡ�POST��Ϣ���ж��ַ���
    Script_Retrun_Temp = Script_App.Run("return_password_rules", Script_Info.Criteria, pass_word)
    Call CheckScriptError
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    '�ж����봫���ģʽ
    If InStr(LCase(Script_Retrun_Temp), "return_ad_password_rules|") = 1 Then
        '�߼����봫��ģʽ���ص����ַ�Ϊ��return_ad_password_rules|������ģʽ������ģʽ����return_download_list��return_albums_list
        '�����ı���ʽ"return_ad_password_rules|inet|10,13|http://www.spymac.com/?u=24(|referce_url|post_method)"ע���Сд
        '�߼����봫��ģʽ��ʼ----------------------------------------------------------------------------------
        Script_Retrun_Temp = Mid(Script_Retrun_Temp, InStr(Script_Retrun_Temp, "|") + 1)
        Dim Dl_Info As downloadInfo
        Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
        Do
            Call DisplayCaption("׼������" & Dl_Info.downloadURL)
            '��������ȫ�ֱ���
            htmlCharsetType = Script_Info.Encoding 'ҳ���ַ���
            strURL = Dl_Info.downloadURL '����ҳ����
            If Dl_Info.refererINFO <> "" Then url_Referer = Dl_Info.refererINFO '���������ļ�ʱʹ�õ�����ҳ��ͷ��Ϣ��
            If Dl_Info.POSTmethod <> "" Then start_fast_method = Dl_Info.POSTmethod 'POST��ʽ������Ϣ����Ϊ��
            'ִ������ҳ�溯��
            If ScriptDownload(Dl_Info.mode) Then Exit Function
            'replace html----------------------------------------------------------------------------
            Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language)'ʹ��script_app.Run��ʽ����Ҫ�滻�س������ŵ������ַ�
            DoEvents
            If form_quit = True Then Exit Function
            Call DisplayCaption("ִ��return_ad_password_rules")
            If Form1.WindowState = 0 Then always_on_top False
            top_Picture(0).Enabled = False
            top_Picture(1).Enabled = False
            'get cookies---------------------------------------------------------------------------------
            cookies_text = GetCookie(Dl_Info.downloadURL)
            err.Clear
            Call Script_App.Run("set_urlpagecookies", cookies_text)
            Call CheckScriptError
            '--------------------------------------------------------------------------------------
            'Function return_ad_password_rules(ByVal html_str, ByVal url_str, ByVal pass_word)
            Script_Retrun_Temp = Script_App.Run("return_ad_password_rules", Html_Temp, Script_Info.Criteria, pass_word)
            Call CheckScriptError
            'ȡ�ø�ʽ����ĸ�ҳ�������ҳ��ͷ��Ϣ��
            urlpage_Referer = Trim(Script_App.Eval("OX163_urlpage_Referer"))
            Call CheckScriptError
            If Form1.WindowState = 0 Then always_on_top sysSet.always_top
            top_Picture(0).Enabled = True
            top_Picture(1).Enabled = True
            
            If InStr(LCase(Script_Retrun_Temp), "password_correct") = 1 Then
                check_album_password = True
            Else
                '1|inet|10,13|http://www.spymac.com/?u=24(|referce_url|post_method)
                Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
                If Dl_Info.isResume = False Then Exit Function
            End If
        Loop While (Dl_Info.isResume = True And Dl_Info.downloadURL <> "")
        
        '--------------------------------------------------'�߼����봫��ģʽ����----------------------------------------------------------------------------------
    ElseIf Script_Retrun_Temp <> "" And InStr(Script_Retrun_Temp, "|") > 5 Then
        'script_retrun_temp="url|post��ʽ���ݣ�����password|���͸�ʽreferce_url|���йؼ���Ϊ������ȷ(1��ʾ)���иùؼ���Ϊ�������(0��ʾ)|���йؼ��֣��ɺ��С�|����"
        Dim Post_Pass_Url
        Post_Pass_Url = Split(Script_Retrun_Temp, "|")
        Call DisplayCaption("���ڷ�������")
        If UBound(Post_Pass_Url) > 3 Then
            If Post_Pass_Url(0) <> "" And InStr(Post_Pass_Url(1), pass_word) > 0 Then
                fast_down.Cancel
                download_ok = False
                Dim Post_Referce As String, Psot_Data As String
                Post_Referce = OX_PrivateChr(Post_Pass_Url(2))
                Psot_Data = OX_PrivateChr(Post_Pass_Url(1))
                strURL = Trim(Post_Pass_Url(0))
                start_Post Psot_Data, Post_Referce
                Do While download_ok = False
                    If form_quit = True Then Exit Function
                    DoEvents
                    Sleep 10
                    DoEvents
                Loop
                'replace html----------------------------------------------------------------------------
                Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language)'ʹ��script_app.Run��ʽ����Ҫ�滻�س������ŵ������ַ�
                '�ϲ�ĩβ��
                Post_Pass_Url(0) = ""
                For i = 4 To UBound(Post_Pass_Url)
                    Post_Pass_Url(0) = Post_Pass_Url(0) & Post_Pass_Url(i)
                Next i
                Dim Post_password_tf As Boolean
                '�ж��Ƿ��йؼ��֣�����Post_password_tfΪTrue������Post_password_tfΪFalse
                Post_password_tf = (InStr(Html_Temp, Post_Pass_Url(0)) > 0)
                '���йؼ���Ϊ������ȷ(1��ʾ)���иùؼ���Ϊ�������(0��ʾ)
                If Post_Pass_Url(3) = "0" Then
                    check_album_password = Not Post_password_tf
                ElseIf Post_Pass_Url(3) = "1" Then
                    check_album_password = Post_password_tf
                End If
            End If
        End If
    End If
End Function
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'-------------------------------------------------------------------------

