VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "OX163"
   ClientHeight    =   10800
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15660
   ForeColor       =   &H00FF0000&
   Icon            =   "OX163_mainfrm.frx":0000
   LinkTopic       =   "Form1"
   OLEDropMode     =   1  'Manual
   ScaleHeight     =   10800
   ScaleWidth      =   15660
   StartUpPosition =   2  '屏幕中心
   Begin VB.TextBox cookies_text 
      Height          =   855
      Left            =   5400
      TabIndex        =   30
      Top             =   7920
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.PictureBox Proxy_img 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   2
      Left            =   3480
      MouseIcon       =   "OX163_mainfrm.frx":406A
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":4374
      ScaleHeight     =   180
      ScaleWidth      =   1020
      TabIndex        =   28
      ToolTipText     =   "代理B的设置被起用"
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
      MouseIcon       =   "OX163_mainfrm.frx":4452
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":475C
      ScaleHeight     =   180
      ScaleWidth      =   1020
      TabIndex        =   27
      ToolTipText     =   "代理A的设置被起用"
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
      MouseIcon       =   "OX163_mainfrm.frx":483A
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":4B44
      ScaleHeight     =   180
      ScaleWidth      =   1020
      TabIndex        =   26
      ToolTipText     =   "代理A和B的设置都被起用"
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
      Left            =   1130
      System          =   -1  'True
      TabIndex        =   24
      Top             =   650
      Visible         =   0   'False
      Width           =   5220
   End
   Begin MSComctlLib.StatusBar StatusBar 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   25
      Top             =   10545
      Width           =   15660
      _ExtentX        =   27623
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   2
            Bevel           =   0
            Enabled         =   0   'False
            Object.Width           =   564
            MinWidth        =   564
            Picture         =   "OX163_mainfrm.frx":4C27
            Object.Tag             =   "ref"
            Object.ToolTipText     =   "温馨提示，点击更换"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Bevel           =   0
            Object.Width           =   25065
            MinWidth        =   353
            Text            =   "信息栏，点击查看"
            TextSave        =   "信息栏，点击查看"
            Object.Tag             =   "info"
            Object.ToolTipText     =   "信息栏，点击查看"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   2
            Bevel           =   0
            Object.Width           =   953
            MinWidth        =   882
            Text            =   "设置"
            TextSave        =   "设置"
            Object.Tag             =   "mode"
            Object.ToolTipText     =   "OX163设定模式"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   2
            Object.Width           =   441
            MinWidth        =   441
            Picture         =   "OX163_mainfrm.frx":4F81
            Object.Tag             =   "process"
            Object.ToolTipText     =   "OX163进程优先级"
         EndProperty
      EndProperty
      MousePointer    =   99
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "宋体"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MouseIcon       =   "OX163_mainfrm.frx":4FDE
   End
   Begin InetCtlsObjects.Inet check_header 
      Left            =   1800
      Top             =   7440
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      RequestTimeout  =   10
   End
   Begin VB.Timer Timer3 
      Interval        =   200
      Left            =   480
      Top             =   8040
   End
   Begin VB.PictureBox homepage 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Left            =   5760
      MouseIcon       =   "OX163_mainfrm.frx":52F8
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":5602
      ScaleHeight     =   165
      ScaleMode       =   0  'User
      ScaleWidth      =   675
      TabIndex        =   23
      ToolTipText     =   "go to Homepage"
      Top             =   0
      Width           =   930
   End
   Begin VB.PictureBox Frame_search 
      BorderStyle     =   0  'None
      Height          =   420
      Left            =   9480
      ScaleHeight     =   420
      ScaleWidth      =   2895
      TabIndex        =   19
      ToolTipText     =   "Ctrl+F"
      Top             =   330
      Visible         =   0   'False
      Width           =   2895
      Begin VB.TextBox find_text 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   0
         TabIndex        =   20
         TabStop         =   0   'False
         Top             =   30
         Width           =   1935
      End
      Begin VB.Image find_next 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":56B2
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":59BC
         Stretch         =   -1  'True
         ToolTipText     =   "Next(PageDown)"
         Top             =   0
         Width           =   375
      End
      Begin VB.Image find_prev 
         Height          =   375
         Left            =   2520
         MouseIcon       =   "OX163_mainfrm.frx":5A55
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":5D5F
         Stretch         =   -1  'True
         ToolTipText     =   "Previous(PageUp)"
         Top             =   0
         Width           =   375
      End
   End
   Begin MSComctlLib.ListView List1 
      Height          =   1095
      Left            =   45
      TabIndex        =   18
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
         Text            =   "序号"
         Object.Width           =   1764
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Key             =   "list_picName"
         Object.Tag             =   "picName_mark"
         Text            =   "文件名"
         Object.Width           =   3528
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Key             =   "list_picDisc"
         Object.Tag             =   "picDisc_mark"
         Text            =   "其他描述"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Key             =   "list_picUrl"
         Object.Tag             =   "picUrl_mark"
         Text            =   "下载地址"
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
      TabIndex        =   16
      Text            =   $"OX163_mainfrm.frx":5DFC
      Top             =   8520
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.PictureBox top_Picture 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   1
      Left            =   6840
      MouseIcon       =   "OX163_mainfrm.frx":5E05
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":610F
      ScaleHeight     =   180
      ScaleWidth      =   675
      TabIndex        =   15
      ToolTipText     =   "Always on top"
      Top             =   0
      Visible         =   0   'False
      Width           =   675
   End
   Begin VB.PictureBox top_Picture 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   180
      Index           =   0
      Left            =   7680
      MouseIcon       =   "OX163_mainfrm.frx":61A2
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":64AC
      ScaleHeight     =   180
      ScaleWidth      =   675
      TabIndex        =   14
      ToolTipText     =   "Always on top"
      Top             =   0
      Width           =   675
   End
   Begin VB.Frame Frame2 
      Caption         =   "相册列表"
      Height          =   3535
      Left            =   50
      OLEDropMode     =   1  'Manual
      TabIndex        =   7
      Top             =   2880
      Width           =   7980
      Begin MSComctlLib.ListView user_list 
         Height          =   2460
         Left            =   45
         TabIndex        =   10
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
            Name            =   "宋体"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   6
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Key             =   "book_name"
            Object.Tag             =   "name_mark"
            Text            =   "相册名称"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Key             =   "book_psw"
            Object.Tag             =   "psw_mark"
            Text            =   "相册密码"
            Object.Width           =   2469
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Key             =   "book_ID"
            Object.Tag             =   "ID_mark"
            Text            =   "序号/链接"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   2
            SubItemIndex    =   3
            Key             =   "book_number"
            Object.Tag             =   "number_mark"
            Text            =   "图片数量"
            Object.Width           =   1764
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Key             =   "book_disc"
            Object.Tag             =   "disc_mark"
            Text            =   "相册描述"
            Object.Width           =   1940
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Key             =   "book_undown"
            Object.Tag             =   "undown_mark"
            Text            =   "禁止下载列表"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label count2 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "宋体"
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
         TabIndex        =   29
         Top             =   600
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Image user_list_find 
         Height          =   375
         Left            =   2640
         MouseIcon       =   "OX163_mainfrm.frx":653F
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":6849
         Stretch         =   -1  'True
         ToolTipText     =   "Find Keyword"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image user_list_save 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":68DE
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":6BE8
         Stretch         =   -1  'True
         ToolTipText     =   "Save Checked Files"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Image user_list_output 
         Height          =   375
         Left            =   1560
         MouseIcon       =   "OX163_mainfrm.frx":6C85
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":6F8F
         Stretch         =   -1  'True
         ToolTipText     =   "Outup Download List"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Image albumslist_back 
         Height          =   375
         Left            =   1080
         MouseIcon       =   "OX163_mainfrm.frx":702C
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":7336
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
         MouseIcon       =   "OX163_mainfrm.frx":73BF
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":76C9
         Stretch         =   -1  'True
         ToolTipText     =   "Range Checked Albums on Top"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label_url1 
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   7.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   150
         Left            =   1440
         TabIndex        =   12
         Top             =   120
         Visible         =   0   'False
         Width           =   75
      End
      Begin VB.Label count1 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "宋体"
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
         TabIndex        =   11
         Top             =   600
         Width           =   480
      End
      Begin VB.Image list_back1 
         Height          =   375
         Left            =   1080
         MouseIcon       =   "OX163_mainfrm.frx":7764
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":7A6E
         Stretch         =   -1  'True
         ToolTipText     =   "Back"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image save_all 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":7AF7
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":7E01
         Stretch         =   -1  'True
         ToolTipText     =   "Save Checked Albums"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image out_all 
         Height          =   375
         Left            =   1560
         MouseIcon       =   "OX163_mainfrm.frx":7E9E
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":81A8
         Stretch         =   -1  'True
         ToolTipText     =   "Outup Download List"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image stop2 
         Height          =   375
         Left            =   600
         MouseIcon       =   "OX163_mainfrm.frx":86BE
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":89C8
         Stretch         =   -1  'True
         ToolTipText     =   "Stop"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label_name1 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Label1"
         ForeColor       =   &H00FFFFFF&
         Height          =   180
         Left            =   480
         TabIndex        =   9
         Top             =   610
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.Label Label_text1 
         AutoSize        =   -1  'True
         Caption         =   "Label1"
         Height          =   180
         Left            =   1200
         TabIndex        =   8
         Top             =   610
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.Image open_set1 
         Height          =   375
         Left            =   80
         MouseIcon       =   "OX163_mainfrm.frx":8A5A
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":8D64
         Stretch         =   -1  'True
         ToolTipText     =   "Setup"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label lblProgressInfo1 
         AutoSize        =   -1  'True
         Height          =   180
         Left            =   3720
         TabIndex        =   13
         Top             =   200
         Visible         =   0   'False
         Width           =   90
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "侦测用户或网址"
      Height          =   855
      Left            =   50
      OLEDropMode     =   1  'Manual
      TabIndex        =   0
      Top             =   70
      Width           =   12735
      Begin VB.TextBox url_input 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1080
         OLEDropMode     =   1  'Manual
         TabIndex        =   1
         Text            =   "http://"
         Top             =   280
         Width           =   6735
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
         MouseIcon       =   "OX163_mainfrm.frx":8DFC
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":9106
         Stretch         =   -1  'True
         ToolTipText     =   "Find Keyword"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Image open_lock 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   810
         MouseIcon       =   "OX163_mainfrm.frx":919B
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":94A5
         Stretch         =   -1  'True
         ToolTipText     =   "Input Passwrd"
         Top             =   285
         Width           =   285
      End
      Begin VB.Image view_command 
         Height          =   375
         Left            =   8400
         MouseIcon       =   "OX163_mainfrm.frx":950E
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":9818
         Stretch         =   -1  'True
         ToolTipText     =   "View Web"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image text_show 
         Appearance      =   0  'Flat
         BorderStyle     =   1  'Fixed Single
         Height          =   285
         Left            =   480
         MouseIcon       =   "OX163_mainfrm.frx":98B3
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":9BBD
         Stretch         =   -1  'True
         ToolTipText     =   "Open Note"
         Top             =   285
         Width           =   285
      End
      Begin VB.Label list_count 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "宋体"
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
         TabIndex        =   6
         Top             =   620
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.Image stop1 
         Height          =   375
         Left            =   8400
         MouseIcon       =   "OX163_mainfrm.frx":9C17
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":9F21
         ToolTipText     =   "Stop"
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Image list_stop 
         Height          =   375
         Left            =   600
         MouseIcon       =   "OX163_mainfrm.frx":9FB3
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":A2BD
         ToolTipText     =   "Stop"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image list_output 
         Height          =   375
         Left            =   1560
         MouseIcon       =   "OX163_mainfrm.frx":A34F
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":A659
         Stretch         =   -1  'True
         ToolTipText     =   "Outup Download List"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image image_save 
         Height          =   375
         Left            =   2040
         MouseIcon       =   "OX163_mainfrm.frx":A6F8
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":AA02
         Stretch         =   -1  'True
         ToolTipText     =   "Save Checked Files"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image list_back 
         Height          =   375
         Left            =   1080
         MouseIcon       =   "OX163_mainfrm.frx":AA9F
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":ADA9
         Stretch         =   -1  'True
         ToolTipText     =   "Back"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label Label_url 
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   7.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   150
         Left            =   1440
         TabIndex        =   4
         Top             =   120
         Visible         =   0   'False
         Width           =   75
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
         BackColor       =   &H80000012&
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
         Height          =   375
         Left            =   8880
         MouseIcon       =   "OX163_mainfrm.frx":AE32
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":B13C
         Stretch         =   -1  'True
         ToolTipText     =   "Go & List"
         Top             =   260
         Width           =   375
      End
      Begin VB.Image search163 
         Height          =   375
         Left            =   7920
         MouseIcon       =   "OX163_mainfrm.frx":B1DA
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":B4E4
         Stretch         =   -1  'True
         ToolTipText     =   "Search Albums"
         Top             =   240
         Width           =   375
      End
      Begin VB.Image open_set 
         Height          =   375
         Left            =   80
         MouseIcon       =   "OX163_mainfrm.frx":B57E
         MousePointer    =   99  'Custom
         Picture         =   "OX163_mainfrm.frx":B888
         Stretch         =   -1  'True
         ToolTipText     =   "Setup"
         Top             =   240
         Width           =   375
      End
      Begin VB.Label lblProgressInfo 
         AutoSize        =   -1  'True
         Height          =   180
         Left            =   3600
         TabIndex        =   5
         ToolTipText     =   "200"
         Top             =   200
         Visible         =   0   'False
         Width           =   90
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
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
      Left            =   45
      TabIndex        =   17
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
      Height          =   5775
      Left            =   8160
      ScaleHeight     =   5775
      ScaleWidth      =   7335
      TabIndex        =   21
      Top             =   2160
      Visible         =   0   'False
      Width           =   7335
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   0
         Top             =   5160
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
               Picture         =   "OX163_mainfrm.frx":B920
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":B98F
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":B9FD
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":BA73
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":BAE4
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":BB60
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "OX163_mainfrm.frx":BBDD
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin MSComctlLib.Toolbar Web_Toolbar 
         Height          =   375
         Left            =   0
         TabIndex        =   31
         Top             =   0
         Width           =   7335
         _ExtentX        =   12938
         _ExtentY        =   661
         ButtonWidth     =   1429
         ButtonHeight    =   661
         AllowCustomize  =   0   'False
         Wrappable       =   0   'False
         Style           =   1
         TextAlignment   =   1
         ImageList       =   "ImageList1"
         _Version        =   393216
         BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
            NumButtons      =   9
            BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "后退"
               Key             =   "Web_Toolbar_Back"
               Description     =   "Back"
               Object.ToolTipText     =   "返回上一页"
               ImageIndex      =   1
            EndProperty
            BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "前进"
               Key             =   "Web_Toolbar_Forward"
               Description     =   "Forward"
               Object.ToolTipText     =   "前进至下一页"
               ImageIndex      =   2
            EndProperty
            BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "刷新"
               Key             =   "Web_Toolbar_refresh"
               Description     =   "Refresh"
               Object.ToolTipText     =   "刷新页面"
               ImageIndex      =   3
            EndProperty
            BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "停止"
               Key             =   "Web_Toolbar_Stop"
               Description     =   "Stop"
               Object.ToolTipText     =   "停止载入页面"
               ImageIndex      =   4
            EndProperty
            BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "网页"
               Key             =   "Web_Toolbar_Save"
               Description     =   "Save As"
               Object.ToolTipText     =   "保存网页"
               ImageIndex      =   5
               Style           =   5
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
                  NumButtonMenus  =   1
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "Web_Toolbar_Source"
                     Text            =   "仅保存源代码"
                  EndProperty
               EndProperty
            EndProperty
            BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "主页"
               Key             =   "Web_Toolbar_Support"
               Description     =   "Support"
               Object.ToolTipText     =   "软件支持"
               ImageIndex      =   6
               Style           =   5
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
                  NumButtonMenus  =   2
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_hp"
                     Text            =   "软件主页"
                  EndProperty
                  BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "shj_forum"
                     Text            =   "软件论坛"
                  EndProperty
               EndProperty
            EndProperty
            BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Style           =   3
            EndProperty
            BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
               Caption         =   "链接"
               Key             =   "Web_Toolbar_Link"
               Description     =   "Link"
               ImageIndex      =   7
               Style           =   5
               BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
                  NumButtonMenus  =   2
                  BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "Web_Toolbar_163"
                     Text            =   "登录163相册"
                  EndProperty
                  BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                     Key             =   "Web_Toolbar_s163"
                     Text            =   "搜索163相册"
                  EndProperty
               EndProperty
            EndProperty
         EndProperty
      End
      Begin SHDocVwCtl.WebBrowser Web_Browser 
         Height          =   4575
         Left            =   0
         TabIndex        =   22
         Top             =   360
         Visible         =   0   'False
         Width           =   7335
         ExtentX         =   12938
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
   Begin VB.Image process_Image 
      Height          =   150
      Index           =   2
      Left            =   6600
      Picture         =   "OX163_mainfrm.frx":BC53
      Stretch         =   -1  'True
      Top             =   7200
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image process_Image 
      Height          =   150
      Index           =   1
      Left            =   6360
      Picture         =   "OX163_mainfrm.frx":BCA3
      Top             =   7200
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image process_Image 
      Height          =   150
      Index           =   0
      Left            =   6120
      Picture         =   "OX163_mainfrm.frx":BCF0
      Stretch         =   -1  'True
      Top             =   7200
      Visible         =   0   'False
      Width           =   225
   End
   Begin VB.Image output_img 
      Height          =   375
      Index           =   2
      Left            =   6720
      MouseIcon       =   "OX163_mainfrm.frx":BD3B
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":C045
      Stretch         =   -1  'True
      ToolTipText     =   "Outup Download List"
      Top             =   7440
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image output_img 
      Height          =   375
      Index           =   1
      Left            =   6360
      MouseIcon       =   "OX163_mainfrm.frx":C0EA
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":C3F4
      Stretch         =   -1  'True
      ToolTipText     =   "Outup Download List"
      Top             =   7440
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image output_img 
      Height          =   375
      Index           =   0
      Left            =   6000
      MouseIcon       =   "OX163_mainfrm.frx":C493
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":C79D
      Stretch         =   -1  'True
      ToolTipText     =   "Outup Download List"
      Top             =   7440
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image set_ico 
      Height          =   375
      Index           =   1
      Left            =   2400
      MouseIcon       =   "OX163_mainfrm.frx":C838
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":CB42
      Stretch         =   -1  'True
      ToolTipText     =   "Setup"
      Top             =   7920
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image set_ico 
      Height          =   375
      Index           =   0
      Left            =   2400
      MouseIcon       =   "OX163_mainfrm.frx":CBE7
      MousePointer    =   99  'Custom
      Picture         =   "OX163_mainfrm.frx":CEF1
      Stretch         =   -1  'True
      ToolTipText     =   "Setup"
      Top             =   7440
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image ico 
      Height          =   1080
      Index           =   1
      Left            =   4080
      Picture         =   "OX163_mainfrm.frx":CF89
      Stretch         =   -1  'True
      Top             =   7320
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Image ico 
      Height          =   1080
      Index           =   0
      Left            =   2880
      Picture         =   "OX163_mainfrm.frx":10FF3
      Stretch         =   -1  'True
      Top             =   7320
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Menu menu 
      Caption         =   "相册列表操作"
      Visible         =   0   'False
      Begin VB.Menu menu_psw 
         Caption         =   "填写密码(&P)"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_pswc 
         Caption         =   "复制密码(&C)"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_pswv 
         Caption         =   "粘贴密码(&V)"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_1 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu menu_sel 
         Caption         =   "标记选择(&S)"
      End
      Begin VB.Menu menu_unsel 
         Caption         =   "反标选择(&D)"
      End
      Begin VB.Menu menu_qsel 
         Caption         =   "取消选择(&F)"
      End
      Begin VB.Menu menu_2 
         Caption         =   "-"
      End
      Begin VB.Menu menu_all 
         Caption         =   "标记全部(&A)"
      End
      Begin VB.Menu menu_unall 
         Caption         =   "反标全部(&Z)"
      End
      Begin VB.Menu menu_quit 
         Caption         =   "取消全部(&Q)"
      End
      Begin VB.Menu menu_3 
         Caption         =   "-"
      End
      Begin VB.Menu menu_spsw 
         Caption         =   "清空选择密码"
      End
      Begin VB.Menu menu_cpsw 
         Caption         =   "清空全部密码"
      End
      Begin VB.Menu menu_4 
         Caption         =   "-"
      End
      Begin VB.Menu menu_delall 
         Caption         =   "全删未标记项"
      End
   End
   Begin VB.Menu menu_pic 
      Caption         =   "图片列表操作"
      Visible         =   0   'False
      Begin VB.Menu menu_pic_sel 
         Caption         =   "标记选择(&S)"
      End
      Begin VB.Menu menu_pic_unsel 
         Caption         =   "反标选择(&D)"
      End
      Begin VB.Menu menu_pic_qsel 
         Caption         =   "取消选择(&F)"
      End
      Begin VB.Menu menu_pic1 
         Caption         =   "-"
      End
      Begin VB.Menu menu_pic_all 
         Caption         =   "标记全部(&A)"
      End
      Begin VB.Menu menu_pic_unall 
         Caption         =   "反标全部(&Z)"
      End
      Begin VB.Menu menu_pic_quit 
         Caption         =   "取消全部(&Q)"
      End
      Begin VB.Menu menu_pic2 
         Caption         =   "-"
      End
      Begin VB.Menu menu_pic_delall 
         Caption         =   "全删未标记项"
      End
   End
   Begin VB.Menu TrayMenu 
      Caption         =   "系统图标菜单"
      Visible         =   0   'False
      Begin VB.Menu tray_quit 
         Caption         =   "退出程序"
      End
      Begin VB.Menu menu_5 
         Caption         =   "-"
      End
      Begin VB.Menu auto_shutdown 
         Caption         =   "自动关机"
      End
      Begin VB.Menu menu_11 
         Caption         =   "-"
      End
      Begin VB.Menu tray_path 
         Caption         =   "下载路径"
      End
      Begin VB.Menu tray_p 
         Caption         =   "程序路径"
         Begin VB.Menu tray_dir 
            Caption         =   "程序路径"
         End
         Begin VB.Menu tray_dirsys 
            Caption         =   "系统脚本路径"
         End
         Begin VB.Menu tray_dircustom 
            Caption         =   "自定脚本路径"
         End
      End
      Begin VB.Menu menu_6 
         Caption         =   "-"
      End
      Begin VB.Menu tray_recover 
         Caption         =   "还原窗口"
      End
      Begin VB.Menu tray_exit 
         Caption         =   "隐藏菜单"
      End
   End
   Begin VB.Menu setMenu 
      Caption         =   "设定菜单"
      Visible         =   0   'False
      Begin VB.Menu setProgram 
         Caption         =   "程序设置"
      End
      Begin VB.Menu setProgram_quick 
         Caption         =   "快速设置"
         Enabled         =   0   'False
         Visible         =   0   'False
         Begin VB.Menu setProgram_Scrpit 
            Caption         =   "脚本控制"
         End
         Begin VB.Menu setProgram_Proxy 
            Caption         =   "代理设置"
         End
         Begin VB.Menu setProgram_Lst 
            Caption         =   "导出设置"
         End
         Begin VB.Menu setProgram_File 
            Caption         =   "文件控制"
         End
      End
      Begin VB.Menu menu11 
         Caption         =   "-"
      End
      Begin VB.Menu tray_script1 
         Caption         =   "更新脚本"
      End
      Begin VB.Menu menu_10 
         Caption         =   "-"
      End
      Begin VB.Menu input_file 
         Caption         =   "导入文件"
         Begin VB.Menu input_lst 
            Caption         =   "下载列表(LST,HTM,TXT+BAT)"
         End
      End
      Begin VB.Menu menu_7 
         Caption         =   "-"
      End
      Begin VB.Menu tray_path1 
         Caption         =   "下载路径"
      End
      Begin VB.Menu tray_p1 
         Caption         =   "程序路径"
         Begin VB.Menu tray_dir1 
            Caption         =   "程序路径"
         End
         Begin VB.Menu tray_dirsys1 
            Caption         =   "系统脚本路径"
         End
         Begin VB.Menu tray_dircustom1 
            Caption         =   "自定脚本路径"
         End
      End
      Begin VB.Menu menu_8 
         Caption         =   "-"
      End
      Begin VB.Menu auto_shutdown1 
         Caption         =   "自动关机"
      End
      Begin VB.Menu menu_9 
         Caption         =   "-"
      End
      Begin VB.Menu tray_exit1 
         Caption         =   "隐藏菜单"
      End
   End
   Begin VB.Menu searchMenu 
      Caption         =   "搜索选择"
      Visible         =   0   'False
      Begin VB.Menu search_internt 
         Caption         =   "页面搜索"
      End
      Begin VB.Menu search_local 
         Caption         =   "本地搜索"
      End
   End
   Begin VB.Menu out_lst_menu 
      Caption         =   "导出选择"
      Visible         =   0   'False
      Begin VB.Menu out_lst_stand 
         Caption         =   "多个下载列表"
      End
      Begin VB.Menu out_lst_one 
         Caption         =   "单个下载列表"
      End
   End
   Begin VB.Menu rename_rules 
      Caption         =   "命名规则"
      Visible         =   0   'False
      Begin VB.Menu rename_defult 
         Caption         =   "默认命名[原名]"
      End
      Begin VB.Menu rename_order 
         Caption         =   "升序命名[0->9]"
      End
      Begin VB.Menu rename_desc 
         Caption         =   "降序命名[9->0]"
      End
   End
   Begin VB.Menu process_set 
      Caption         =   "进程"
      Visible         =   0   'False
      Begin VB.Menu process_h 
         Caption         =   "高"
      End
      Begin VB.Menu process_mh 
         Caption         =   "高于标准"
         Checked         =   -1  'True
      End
      Begin VB.Menu process_m 
         Caption         =   "标准"
      End
      Begin VB.Menu process_c 
         Caption         =   "关闭菜单"
      End
   End
   Begin VB.Menu textboxpop_menu 
      Caption         =   "文本编辑菜单"
      Visible         =   0   'False
      Begin VB.Menu textboxpop_undo 
         Caption         =   "撤销(&U)"
         Enabled         =   0   'False
         Visible         =   0   'False
      End
      Begin VB.Menu textboxpop_1 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu textboxpop_cut 
         Caption         =   "剪切(&T)"
      End
      Begin VB.Menu textboxpop_copy 
         Caption         =   "复制(&C)"
      End
      Begin VB.Menu textboxpop_paste 
         Caption         =   "粘贴(&P)"
      End
      Begin VB.Menu textboxpop_del 
         Caption         =   "删除(&D)"
      End
      Begin VB.Menu textboxpop_2 
         Caption         =   "-"
      End
      Begin VB.Menu textboxpop_selectall 
         Caption         =   "全选(&A)"
      End
      Begin VB.Menu textboxpop_3 
         Caption         =   "-"
      End
      Begin VB.Menu textboxpop_read 
         Caption         =   "从右向左的阅读顺序(&R)"
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
'Dim newwindow_temp As String
Dim retry_time As Integer
Dim down_len As Long
Dim now_tray As Boolean
Dim Open_path As String
Dim Open_path_set As String
Dim auto_shutdown_tf As Boolean
Dim runtime_Label As String
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
Dim windows_destop_Width As Long
Dim windows_destop_Height As Long


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
            DoEvents
        Loop
    Case OX_WEB
        BrowserW.Show
        Do While BrowserW_load_ok = False
            DoEvents
            Sleep 10
            DoEvents
        Loop
        Do While BrowserW.WebBrowser.Busy
            If form_quit = True Then BrowserW.WebBrowser.Stop: BrowserW.Hide: Download = True: Exit Function
            DoEvents
            Sleep 10
            DoEvents
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
        Call MsgBox("错误：" & vbCrLf & err.Description, vbOKOnly + vbExclamation, "执行脚本错误")
        err.Clear
    End If
End Sub

Private Sub DisplayCaption(caption As String)
    Label_url.caption = caption
    Label_url1.caption = caption
End Sub



'---------------------自动关机函数---------------------------------------------
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
    open_set.Picture = set_ico(-Int(auto_shutdown_tf)).Picture
    open_set1.Picture = open_set.Picture
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
        '读取页面文件大小
        lblProgressInfo.caption = "读取页面文件大小"
        lblProgressInfo1.caption = "读取页面文件大小"
        If m_lngDocSize = 0 And stop_check_header = False Then
            '35756 不能完成请求
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
                    lblProgressInfo.caption = "ERROR 文件大小未知"
                    lblProgressInfo1.caption = "ERROR 文件大小未知"
                    
                ElseIf m_lngDocSize < 1 Then
                    '读取远程数据出错
                    m_lngDocSize = 0
                    lblProgressInfo.caption = "ERROR 文件大小未知"
                    lblProgressInfo1.caption = "ERROR 文件大小未知"
                    
                End If
                
            Else   'NOT LEN(INET1.GETHEADER("CONTENT-LENGTH"))...
                'ERROR
                m_lngDocSize = 0
                lblProgressInfo.caption = "ERROR 文件大小未知"
                lblProgressInfo1.caption = "ERROR 文件大小未知"
            End If
            If m_lngDocSize = 0 Then m_lngDocSize = 1
        End If
        check_header.Cancel
    End Select
End Sub




Private Sub count1_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 12 Then
        Label_name1 = " 列表统计: "
        Label_text1 = "列表中共有 " & count1.caption & " 条记录"
        label_rebuld1
        mouse_dic = 12
    End If
End Sub


Private Sub count2_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 12 Then
        Label_name1 = " 列表统计: "
        Label_text1 = "列表中共有 " & count2.caption & " 条记录"
        label_rebuld1
        mouse_dic = 12
    End If
End Sub

Public Sub fast_down_StateChanged(ByVal State As Integer)
    On Error Resume Next
    Static ic_error_time As Byte
    
    If form_quit = True Then fast_down.Cancel
    DoEvents
    
    Dim vtData As Variant '数据变量
    Dim binBuffer() As Byte
    Dim firt_byte As Boolean
    Dim buff() As Byte
    Dim file_size
    Dim file_size_long As Double
    Dim gzip_tf As Boolean
    
    Select Case State
        
    Case icResponseCompleted
        
        '检测文件大小--------------------------------------
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
        
        
        If file_size_long > 204800 Then
            '-------------------------------------------------
            '获得文件大小情况下,直接定义数组大小写入缓存
            ReDim buff(file_size_long - 1) As Byte
            Dim file_size_tmp As Double
            Dim at_all_long
            
            file_size_tmp = 0
            at_all_long = Int(file_size_long / 1024)
            
            Do   '从缓冲区读取数据
                DoEvents
                vtData = fast_down.GetChunk(25600, icByteArray)
                binBuffer = vtData
                
                For i = 0 To 25600 - 1
                    DoEvents
                    buff(i + file_size_tmp) = binBuffer(i)
                Next
                
                file_size_tmp = file_size_tmp + 25600
                
                lblProgressInfo.caption = "正在下载(" & Int(file_size_tmp / 1024) & "/" & at_all_long & "KB)" & strURL
                lblProgressInfo1.caption = lblProgressInfo.caption
                Label_url.caption = lblProgressInfo.caption
                Label_url1.caption = lblProgressInfo.caption
                
                If form_quit = True Then fast_down.Cancel: download_ok = True
            Loop Until (LenB(vtData) = 0)
            
            '-------------------------------------------------
        Else
            '-------------------------------------------------
            '未知文件大小情况下,使用函数写入缓存逐步扩大数组大小(大文件下速度慢)
            firt_byte = False
            
            Do   '从缓冲区读取数据
                DoEvents
                vtData = fast_down.GetChunk(25600, icByteArray)
                binBuffer = vtData
                If firt_byte = False Then
                    buff = vtData
                    firt_byte = True
                Else
                    buff = UniteByteArray(buff, binBuffer)
                End If
                
                lblProgressInfo.caption = "正在下载(" & Int(UBound(buff) / 1024) & "KB)" & strURL
                lblProgressInfo1.caption = lblProgressInfo.caption
                Label_url.caption = lblProgressInfo.caption
                Label_url1.caption = lblProgressInfo.caption
                
                If form_quit = True Then fast_down.Cancel: download_ok = True
            Loop Until (LenB(vtData) = 0)
            '-------------------------------------------------
        End If
        
        file_size = fast_down.GetHeader("Content-Encoding")
        If InStr(LCase(file_size), "gzip") > 0 Then
            Dim a As Boolean
            a = UnCompressGzipByte(buff)
            Html_Temp = bin2str(buff)
        Else
            Html_Temp = bin2str(buff)
        End If
        
        ic_error_time = 0
        
        download_ok = True
    Case icError
        '与主机通信出错
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
                    lblProgressInfo.caption = "该页面可能非法，等待" & (179 - DateDiff("s", start_GFW_time, Now())) & "秒后恢复网络连接"
                    lblProgressInfo1.caption = lblProgressInfo.caption
                    Label_url.caption = lblProgressInfo.caption
                    Label_url1.caption = lblProgressInfo.caption
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
        lblProgressInfo.caption = "正在转换页面文本(该文本过大，可能造成程序假死，请耐心等待)"
    Else
        lblProgressInfo.caption = "正在转换页面文本"
    End If
    lblProgressInfo1.caption = lblProgressInfo.caption
    Label_url.caption = lblProgressInfo.caption
    Label_url1.caption = lblProgressInfo.caption
    
    Const adTypeBinary = 1
    Const adTypeText = 2
    Dim BytesStream, StringReturn
    Set BytesStream = CreateObject("ADODB.Stream") '建立一个流对象
    With BytesStream
        
        '不规范
        '.Type = adTypeText
        '.Open
        '.WriteText binstr
        '.Position = 0
        '.Charset = htmlCharsetType
        '.Position = 2
        'StringReturn = .ReadText
        '.Close
        
        .Type = adTypeBinary
        .Open
        .Write binstr
        .Position = 0
        .Type = adTypeText
        .Charset = htmlCharsetType
        StringReturn = .ReadText
        .Close
    End With
    Set BytesStream = Nothing
    bin2str = StringReturn
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
    If Trim$(find_text.Text = "") Then Exit Sub
    find_unselect_Click
    If user_list.Visible = True And List1.Visible = False Then
        
        check_i = 0
        If user_list.SelectedItem.Index > 0 And user_list.SelectedItem.Index < user_list.ListItems.count Then check_i = user_list.SelectedItem.Index
        user_list.SelectedItem.Selected = False
        For i = check_i + 1 To user_list.ListItems.count
            DoEvents
            If InStr(1, user_list.ListItems(i).Text & user_list.ListItems(i).ListSubItems(4).Text, find_text.Text, vbTextCompare) > 0 Then
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
            If InStr(1, List1.ListItems(i).ListSubItems(1).Text & List1.ListItems(i).ListSubItems(2).Text, find_text.Text, vbTextCompare) > 0 Then
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

Private Sub find_next_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 23 Then
        Label_name1 = " 查找内容: "
        Label_text1 = "查找下一个匹配字符（PageDown）"
        label_rebuld1
        Label_name = " 查找内容: "
        Label_text = "查找下一个匹配字符（PageDown）"
        label_rebuld
        mouse_dic = 23
    End If
End Sub

Private Sub find_prev_Click()
    On Error Resume Next
    Dim check_i As Integer
    If Trim$(find_text.Text = "") Then Exit Sub
    find_unselect_Click
    If user_list.Visible = True And List1.Visible = False Then
        check_i = user_list.ListItems.count
        If user_list.SelectedItem.Index > 1 And user_list.SelectedItem.Index <= user_list.ListItems.count Then check_i = user_list.SelectedItem.Index
        user_list.SelectedItem.Selected = False
        For i = check_i - 1 To 1 Step -1
            DoEvents
            If InStr(1, user_list.ListItems(i).Text & user_list.ListItems(i).ListSubItems(4).Text, find_text.Text, vbTextCompare) > 0 Then
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
            If InStr(1, List1.ListItems(i).ListSubItems(1).Text & List1.ListItems(i).ListSubItems(2).Text, find_text.Text, vbTextCompare) > 0 Then
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

Private Sub find_prev_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 24 Then
        Label_name1 = " 查找内容: "
        Label_text1 = "查找上一个匹配字符（PageUp）"
        label_rebuld1
        Label_name = " 查找内容: "
        Label_text = "查找上一个匹配字符（PageUp）"
        label_rebuld
        mouse_dic = 24
    End If
End Sub

Private Sub find_text_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 65 And Shift = vbCtrlMask Then
        find_text.SelStart = 0
        find_text.SelLength = Len(find_text.Text)
    ElseIf (KeyCode = 70 And Shift = vbCtrlMask) Or KeyCode = 27 Then
        user_list_find_Click
    ElseIf KeyCode = 13 Or KeyCode = 34 Then
        find_text.Text = Trim$(find_text.Text)
        find_next_Click
    ElseIf KeyCode = 33 Then
        find_text.Text = Trim$(find_text.Text)
        find_prev_Click
    End If
End Sub

Private Sub find_text_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 25 Then
        Label_name1 = " 查找内容: "
        Label_text1 = "填写需要查找的文本"
        label_rebuld1
        Label_name = " 查找内容: "
        Label_text = "查找上一个匹配字符"
        label_rebuld
        mouse_dic = 25
    End If
End Sub

'Private Sub find_text_KeyPress(KeyAscii As Integer)
'If KeyAscii = 13 Then
'find_text.Text = Trim$(find_text.Text)
'find_next_Click
'ElseIf KeyAscii = 27 Then
'user_list_find_Click
'End If
'End Sub

Private Sub Form_Click()
    url_Filelist.Visible = False
End Sub

Private Sub Form_Load()
    On Error Resume Next
    'Label_text.Font = "新細明體"
    'user_list.Font = "新細明體"
    'text_sortname.Font = "新細明體"
    
    '------------------导出列表图标-------------------
    If sysSet.list_type >= 0 And sysSet.list_type <= 2 Then
        list_output.Picture = output_img(sysSet.list_type).Picture
        user_list_output.Picture = output_img(sysSet.list_type).Picture
        out_all.Picture = output_img(sysSet.list_type).Picture
    End If
    '-------------------------------------------------
    auto_shutdown_tf = False
    rename_rules_val = 0
    Form1.caption = title_info
    url_Filelist.Path = App_path & "\url"
    pw_163 = ""
    start_fast_method = ""
    proxy_warning = vbOK
    Open_path = ""
    Open_path_set = ""
    
    TrayI.hwnd = Form1.hwnd
    TrayI.uId = 0
    TrayI.uFlags = NIF_ICON Or NIF_MESSAGE Or NIF_TIP
    TrayI.ucallbackMessage = WM_MBUTTONDOWN
    '定义鼠标移动到托盘上时显示的Tip
    TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
    TrayI.cbSize = Len(TrayI)
    
    now_tray = False
    delay_time = False
    new_win = False
    
    If sysSet.bottom_StatusBar = True Then
        show_StatusBar = 255
        StatusBar.Visible = True
    Else
        show_StatusBar = 0
        StatusBar.Visible = False
    End If
    
    show_inform(0) = "▲点击捐助软件和相册搜索网站"
    show_inform(1) = sysSet.update_host & "?key=5"
    StatusBar.Panels(2) = show_inform(0)
    
    If sysSet.bottom_StatusBar = True Then
        sysSet.bottom_StatusBar = False
        step_one
        sysSet.bottom_StatusBar = True
    Else
        step_one
    End If
    
    download_ok = True
    Width = 7100
    Height = 1470 + show_StatusBar
    form_quit = True
    Web_Browser_header_tf = True
    form_height = 1500 + show_StatusBar
    htmlCharsetType = "GB2312"
    web_Picture.Top = 960
    web_Picture.Left = 45
    url_Referer = ""
    urlpage_Referer = ""
    pass_code = ""
    OX_Script_Type = ""
    List1.ListItems.Clear
    user_list.ListItems.Clear
    Frame2.Top = Frame1.Top
    'Web_Browser_url = ""
    Content_Range = ""
    Call load_in_Script_Code
    
    Proxy_set
    'url_input.Text = "http://"
    url_input_SelectAll
    
    If sysSet.always_top = True Then always_on_top sysSet.always_top
    fast_down.RequestTimeout = sysSet.time_out
    Inet1.RequestTimeout = sysSet.time_out
    
    If start_ox163.Com1.Visible = False Then Unload start_ox163
    process_mh_Click
    Timer3.Enabled = True
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

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        mouse_dic = 0
    End If
End Sub



Private Sub Form_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, Y As Single)
    If down_count = 0 Then
        OLEDragDrop Data
    ElseIf download_ok = True And form_quit = True Then
        If MsgBox("列表中存在数据，此次操作会导致数据丢失，是否继续？", vbOKCancel + vbDefaultButton2 + vbExclamation, "警告") = vbCancel Then Exit Sub
        step_one
        Frame1.Visible = True
        OLEDragDrop Data
    End If
End Sub



Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    sysTray False
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, Y As Single)
    On Error Resume Next
    
    If now_tray = False Then Exit Sub
    
    Dim lMsg As Single
    lMsg = x / Screen.TwipsPerPixelX
    
    Select Case lMsg
        
    Case WM_LBUTTONUP
        '单击左键，显示窗体
        sysTray False
        
    Case WM_RBUTTONUP
        
        PopupMenu TrayMenu '如果是在系统Tray图标上点右键，则弹出菜单TrayMenu
        
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
         Else
            Form1.Left = 0
        End If
    End If
    
    If Form1.Top + Form1.Height > windows_destop_Height Then
        If Form1.Height < windows_destop_Height Then
         Form1.Top = windows_destop_Height - Form1.Height
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
        
        If sysSet.sysTray = True And Not (down_count = 0 And (Web_Browser.Visible = True Or Web_Search.Visible = True)) Then sysTray True
        
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

Private Sub Form_Unload(Cancel As Integer)
    If form_quit = False And sysSet.askquit = True Then
        If MsgBox("正在执行操作，是否退出？", vbOKCancel + vbDefaultButton2, "退出询问") = vbCancel Then Cancel = True: Exit Sub
    End If
    form_quit = True
    DoEvents
    sysTray False
    End
End Sub

Private Sub Frame1_Click()
    url_Filelist.Visible = False
End Sub

Private Sub Frame1_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 0 Then
        Label_text.Visible = False
        Label_name.Visible = False
        mouse_dic = 0
    End If
End Sub

Private Sub Frame1_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, Y As Single)
    If down_count = 0 Then
        OLEDragDrop Data
    ElseIf download_ok = True And form_quit = True Then
        If List1.ListItems.count > 0 Then
            If MsgBox("列表中存在数据，此次操作会导致数据丢失，是否继续？", vbOKCancel + vbDefaultButton2 + vbExclamation, "警告") = vbCancel Then Exit Sub
        End If
        step_one
        OLEDragDrop Data
    End If
End Sub

Private Sub Frame2_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 15 Then
        Label_text1.Visible = False
        Label_name1.Visible = False
        mouse_dic = 15
    End If
End Sub

Private Sub Frame2_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, Y As Single)
    If down_count = 0 Then
        OLEDragDrop Data
    ElseIf download_ok = True And form_quit = True Then
        If user_list.ListItems.count > 0 Then
            If MsgBox("列表中存在数据，此次操作会导致数据丢失，是否继续？", vbOKCancel + vbDefaultButton2 + vbExclamation, "警告") = vbCancel Then Exit Sub
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

Private Sub homepage_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 22 Then
        Label_name = " 软件主页: "
        Label_text = "前往更新页"
        label_rebuld
        mouse_dic = 22
    End If
End Sub



Private Sub image_save_Click()
    On Error Resume Next
    
    rename_rules_val = 0
    PopupMenu rename_rules
    
    Folder_path = ""
    If sysSet.def_path_tf = True And sysSet.def_path <> "" Then
        Folder_path = GetFolder("默认下载文件夹", sysSet.def_path & "\", True)
    Else
        Folder_path = GetFolder("请选择下载文件夹", Open_path_set & "\", True)
    End If
    
    
    
    If Mid$(Folder_path, 2, 2) = ":\" Then
        If (GetFileAttributes(Folder_path) = -1) Then MsgBox "该路径不能保存文件", vbOKOnly + vbExclamation, "警告": Exit Sub
start:
        '打开路径菜单
        text_sortname = GetShortName(Folder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid$(text_sortname, 1, Len(text_sortname) - 1)
        Open_path = text_sortname
        Open_path_set = text_sortname
        
        Call save_list_image(Open_path)
        
    ElseIf sysSet.savedef = False Then
        Folder_path = App_path & "\download": GoTo start
        
    Else
        Msg = MsgBox("你没有选择文件夹，或者文件夹不正确，是否下载相册？" & vbCrLf & "<是>将文件下载到默认目录：" & App_path & "\download" & vbCrLf & "<否>放弃下载", vbYesNo + vbExclamation + vbDefaultButton2, "下载询问")
        If Msg = vbYes Then Folder_path = App_path & "\download": GoTo start
        
    End If
    
    'text_sortname = GetShortName("F:\我的程序\下载网页代码\OX163\download")
    'Open_path = text_sortname
    'save_list_image text_sortname
    
End Sub

Private Sub image_save_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 7 Then
        Label_name = " 保存图片: "
        Label_text = "保存列表中被勾选的文件"
        label_rebuld
        mouse_dic = 7
    End If
End Sub


Private Sub lblProgressInfo1_Change()
    lblProgressInfo1.ToolTipText = lblProgressInfo1.caption
End Sub

Private Sub lblProgressInfo_Change()
    lblProgressInfo.ToolTipText = lblProgressInfo.caption
End Sub

Private Sub list1_find_Click()
    user_list_find_Click
End Sub

Private Sub list1_find_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 21 Then
        Label_name1 = " 查找内容: "
        Label_text1 = "查找列表中的文本内容（Ctrl+F）"
        label_rebuld1
        mouse_dic = 21
    End If
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
        For i = 1 To List1.ListItems.count
            DoEvents
            List1.ListItems(i).Selected = True
        Next
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
    '复制url List1_url_copy:
    '复制文件名 List1_name_copy:
    '复制url+文件名 List1_lst_copy:
    '复制Ubb代码 List1_ubb_copy:
    '复制描述
    '--------------------------------------------------
List1_url_copy:
    List1.Enabled = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & Trim$(List1.ListItems(i).ListSubItems(3).Text) & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Enabled = True
    List1.SetFocus
    Exit Sub
    '--------------------------------------------------
List1_name_copy:
    List1.Enabled = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & Trim$(List1.ListItems(i).ListSubItems(1).Text) & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Enabled = True
    List1.SetFocus
    Exit Sub
    '--------------------------------------------------
List1_lst_copy:
    List1.Enabled = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & Trim$(List1.ListItems(i).ListSubItems(3).Text) & "?/" & Trim$(List1.ListItems(i).ListSubItems(1).Text) & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Enabled = True
    List1.SetFocus
    Exit Sub
    '--------------------------------------------------
List1_ubb_copy:
    List1.Enabled = False
    copy_txt = ""
    For i = 1 To List1.ListItems.count
        DoEvents
        If List1.ListItems(i).Selected = True Then copy_txt = copy_txt & "[url=" & Trim$(List1.ListItems(i).ListSubItems(3).Text) & "]" & Trim$(List1.ListItems(i).ListSubItems(1).Text) & "[/url]" & vbCrLf
    Next
    If copy_txt <> "" Then
        Call SetClipboardText(copy_txt)
    End If
    List1.Enabled = True
    List1.SetFocus
End Sub

Private Sub List1_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
    On Error Resume Next
    If Button = 2 And List1.ListItems.count > 0 Then
        PopupMenu menu_pic
    End If
End Sub

Private Sub open_lock_Click()
    On Error Resume Next
    
    Dim pass As String
    
    url_input.Text = Trim(url_input.Text)
    
    If Trim(url_input.Text) = "" And Trim(url_temp) <> "" Then
        url_input.Text = Trim(url_temp)
    End If
    
    '为用户名，填写用户名密码
    If is_username(url_input.Text) = True Then
        GoTo user_password
    End If
    
    
    'http://photo.163.com/photos/wehi/17653496/  判断是否为163单一相册----------------------
    If LCase(url_input.Text) Like "?*.photo.163.com" Or LCase(url_input.Text) Like "?*.photo.163.com/" Then
        If LCase(url_input.Text) Like "http://?*.photo.163.com" Then url_input.Text = Mid$(url_input.Text, 8)
        url_input.Text = Mid$(url_input.Text, 1, InStr(1, url_input.Text, ".photo", 1) - 1)
        GoTo user_password
    ElseIf LCase(url_input.Text) Like "*photo.163.com/photo*/?*" Then
        url_input.Text = Mid$(url_input.Text, InStr(1, url_input.Text, ".com/photo", 1) + 6)
        url_input.Text = Mid$(url_input.Text, InStr(url_input.Text, "/") + 1)
        If InStr(url_input.Text, "/") > 1 Then url_input.Text = Mid$(url_input.Text, 1, InStr(url_input.Text, "/") - 1)
        GoTo user_password
    End If
    If is_username(Trim(InputBox("请输入163通行证帐号", "提醒"))) Then GoTo user_password
    Exit Sub
    
user_password:
    
    url_temp = url_input.Text
    Form1.Enabled = False
    password_win.isDown = -1
    password_win.Combo1.Visible = False
    password_win.Show
    
    Do While Form1.Enabled = False
        Sleep 10
        DoEvents
    Loop
    
    If url_input.Text = "" Then url_input.Text = url_temp: Exit Sub
    url_input.Enabled = False
    pass = url_input.Text
    url_input.Text = url_temp
    
    fast_down.Cancel
    download_ok = False
    form_quit = False
    start_User format_username(url_temp, 1), pass
    Do While download_ok = False
        If form_quit = True Then url_input.Enabled = True: Exit Sub
        Sleep 10
        DoEvents
    Loop
    url_input.Enabled = True
    form_quit = True
    view_command_Click
    
End Sub

Private Sub open_lock_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 20 Then
        Label_name = " 填写密码: "
        Label_text = "填写用户名密码，或者填写相册密码"
        label_rebuld
        mouse_dic = 20
    End If
End Sub



'------------------------------进程设置------------------------------------------------------------------------------
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
    StatusBar.Panels.Item(4).Picture = process_Image(2).Picture
End Sub
Private Sub process_mh_Click()
    Dim CurrentProcesshWnd As Long
    CurrentProcesshWnd = GetCurrentProcess
    Call SetPriorityClass(CurrentProcesshWnd, &H8000)
    process_m.Checked = False
    process_mh.Checked = True
    process_h.Checked = False
    StatusBar.Panels.Item(4).Picture = process_Image(1).Picture
End Sub
Private Sub process_h_Click()
    Dim CurrentProcesshWnd As Long
    CurrentProcesshWnd = GetCurrentProcess
    Call SetPriorityClass(CurrentProcesshWnd, &H80)
    process_m.Checked = False
    process_mh.Checked = False
    process_h.Checked = True
    StatusBar.Panels.Item(4).Picture = process_Image(0).Picture
End Sub
'-------------------------------------------------------------------------------------------------------------------

Private Sub Proxy_img_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 26 Then
        Label_name = " 代理设置: "
        Label_text = "代理设置已经启用"
        label_rebuld
        mouse_dic = 26
    End If
End Sub

Private Sub search_internt_Click()
    form_height = 3000
    If Form1.WindowState = 0 Then
        If Form1.Width < 11000 Then Form1.Width = 12000
        If Form1.Height < 12000 Then Form1.Height = 8500
    End If
    newform_resize
    stop1_Click
    Web_Search.Visible = True
    Web_Browser.Visible = False
    web_Picture.Visible = False
    Web_Search.Width = Frame1.Width
    If InStr(LCase$(Web_Search.LocationURL), LCase$("Search163")) < 1 Then
        Web_Search.Navigate "http://163.ugschina.com/"
    End If
End Sub

Private Sub search_local_Click()
    On Error Resume Next
    Shell App_path & "\search163.exe", vbNormalFocus
End Sub

Private Sub search163_Click()
    On Error Resume Next
    If Dir(App_path & "\search163.exe") = "" Then
        search_internt_Click
    Else
        PopupMenu searchMenu
    End If
End Sub

Private Sub search163_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 18 Then
        Label_name = " 搜索相册: "
        Label_text = "OX163支持163相册和博客相册的搜索"
        label_rebuld
        mouse_dic = 18
    End If
End Sub



Private Sub setProgram_Click()
    sys.Top = Form1.Top
    sys.Left = Form1.Left
    sys.Show
End Sub

Private Sub StatusBar_PanelClick(ByVal Panel As MSComctlLib.Panel)
    On Error Resume Next
    If Panel.Tag = "ref" Then
        Refresh_Panel
    ElseIf Panel.Tag = "process" Then
        PopupMenu process_set
    ElseIf Panel.Tag = "mode" Then
        
    ElseIf LCase(show_inform(1)) Like "http*" Then
        ShellExecute 0&, vbNullString, StrConv(show_inform(1), vbUnicode), vbNullString, vbNullString, vbNormalFocus
    End If
End Sub
Private Sub Refresh_Panel()
    On Error Resume Next
    Dim Panel_info
    Panel_info = Trim(update.OpenURL(sysSet.update_host & "Panel_info.asp?key=" & down_count & "&ntime=" & CDbl(Now())))
    show_inform(0) = Mid$(Panel_info, 1, InStr(Panel_info, "|") - 1)
    show_inform(1) = Mid$(Panel_info, InStr(Panel_info, "|") + 1)
    StatusBar.Panels(2) = show_inform(0)
End Sub



Private Sub top_Picture_Click(Index As Integer)
    If Form1.WindowState = 2 Then always_on_top False: Exit Sub
    If top_Picture(0).Visible = True = sysSet.always_top Then top_Picture(0).Visible = False: top_Picture(1).Visible = True: Exit Sub
    sysSet.always_top = Not sysSet.always_top
    WriteIniTF "maincenter", "always_top", sysSet.always_top
    always_on_top sysSet.always_top
End Sub

Private Sub top_Picture_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 18 Then
        Label_name = " 窗体置前: "
        Label_text = "总是在最前面/Always on top"
        label_rebuld
        mouse_dic = 18
    End If
End Sub

Private Sub text_show_Click()
    On Error Resume Next
End Sub

Private Sub text_show_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 17 Then
        Label_name = " 查看信息: "
        Label_text = "查看程序运行细节信息"
        label_rebuld
        mouse_dic = 17
    End If
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

Private Sub list_back1_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 16 Then
        Label_name1 = " 返回首页: "
        Label_text1 = "返回初始界面"
        label_rebuld1
        mouse_dic = 16
    End If
End Sub



Private Sub list_check_Click()
    If user_list.ListItems.count < 1 Then Exit Sub
    setProgram.Enabled = False
    list_back1.Enabled = False
    out_all.Enabled = False
    save_all.Enabled = False
    list_check.Enabled = False
    user_list.Enabled = False
    
    j = 1
    i = 1
    
    user_list.ColumnHeaders.Item(1).Text = "相册名称"
    user_list.ColumnHeaders.Item(2).Text = "相册密码"
    user_list.ColumnHeaders.Item(3).Text = "序号/链接"
    user_list.ColumnHeaders.Item(4).Text = "图片数量"
    user_list.ColumnHeaders.Item(5).Text = "相册描述"
    
    user_list.Sorted = False
    
    Do
        If user_list.ListItems(i).Checked = False Then
            a = user_list.ListItems.count + 1
            'book_name
            user_list.ListItems.Add , , user_list.ListItems(i).Text
            'book_psw
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(1).Text
            'book_ID
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(2).Text
            'book_number
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(3).Text
            'book_disc
            user_list.ListItems(a).ListSubItems.Add , , user_list.ListItems(i).ListSubItems(4).Text
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

Private Sub list_check_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 16 Then
        Label_name1 = " 排列标记: "
        Label_text1 = "将已标记选择的相册排列在最上方"
        label_rebuld1
        mouse_dic = 16
    End If
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
    If MsgBox("是否删除列表中所有未标记的项目？" & Chr(13) & "该操作不可逆！", vbYesNo + vbExclamation + vbDefaultButton2, "删除询问") = vbYes Then
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
    If MsgBox("是否删除列表中所有未标记的项目？" & Chr(13) & "该操作不可逆！", vbYesNo + vbExclamation + vbDefaultButton2, "删除询问") = vbYes Then
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
'密码填写---------------------------------------------------------------------------
'-----------------------------------------------------------------------------------
Private Sub menu_cpsw_Click()
    If MsgBox("是否清空所有的相册密码？" & Chr(13) & "该操作不可逆！", vbYesNo + vbExclamation + vbDefaultButton2, "警告") = vbYes Then edit_psw 4, "请填写密码............" & vbCrLf & ".........."
End Sub

Private Sub menu_spsw_Click()
    If MsgBox("是否清空你所选择的相册密码？" & Chr(13) & "该操作不可逆！", vbYesNo + vbExclamation + vbDefaultButton2, "警告") = vbYes Then edit_psw 2, "请填写密码............" & vbCrLf & ".........."
End Sub

Private Sub menu_psw_Click()
    Form1.Enabled = False
    password_win.isDown = 0
    If user_list.SelectedItem.ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.SelectedItem.ListSubItems(1).Text
    password_win.password_win_title.caption = "相册 """ & Replace(user_list.SelectedItem.Text, "&", "&&") & """ 的" & password_win.password_win_title.caption
    password_win.Show
End Sub

Private Sub menu_pswv_Click()
    edit_psw 2, psw_v
End Sub

Private Sub menu_pswc_Click()
    If user_list.SelectedItem.ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then psw_v = user_list.SelectedItem.ListSubItems(1).Text
End Sub

Public Sub edit_psw(ByVal meth As Byte, ByVal psw_edit As String)
    Form1.Enabled = False
    Select Case meth
        '0输给 当前相册
        '1输给 选择中未输入密码的
        '2替换 所有被选择的
        '3输给 所有未输入密码的
        '4替换 全部密码
    Case 0
        If user_list.SelectedItem.ListSubItems(1).Text <> "" Then
            user_list.SelectedItem.ListSubItems(1).Text = psw_edit
            If pw_163 <> "" Then WriteUnicodeIni "password", rename_ini_str(user_list.SelectedItem.ListSubItems(2).Text), psw_edit, pw_163
        End If
        
    Case 1
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." And user_list.ListItems(i).Selected = True Then
                user_list.ListItems(i).ListSubItems(1).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(2).Text), psw_edit, pw_163
            End If
        Next i
        
    Case 2
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).Selected = True And user_list.ListItems(i).ListSubItems(1).Text <> "" Then
                user_list.ListItems(i).ListSubItems(1).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(2).Text), psw_edit, pw_163
            End If
        Next i
        
    Case 3
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." Then
                user_list.ListItems(i).ListSubItems(1).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(2).Text), psw_edit, pw_163
            End If
        Next i
        
    Case 4
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(1).Text <> "" Then
                user_list.ListItems(i).ListSubItems(1).Text = psw_edit
                If pw_163 <> "" And user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(2).Text), psw_edit, pw_163
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
    PopupMenu setMenu
End Sub

Private Sub open_set_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 13 Then
        Label_name = " 程序菜单: "
        Label_text = "程序设置-脚本更新-自动关机-路径查看"
        label_rebuld
        mouse_dic = 13
    End If
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
    
    'DoEvents
    
    Dim binBuffer() As Byte
    Dim sngProgerssValue As Double
    Dim getblock As Long
    ''''''''Dim start_time As Date
    getblock = sysSet.downloadblock
    
    On Error Resume Next
    
    Select Case State
    Case icResponseCompleted
        Do   '从缓冲区读取数据
            ''''''''start_time = Now
            vbyte = Inet1.GetChunk(getblock, icByteArray)
            binBuffer = vbyte
            If m_lngDocSize > 0 Then
                '获得进度百分比值
                sngProgerssValue = Int((down_len / m_lngDocSize) * 100)
                '更新进度标签显示内容
                lblProgressInfo.caption = download_FileName & Chr(13) & "已下载 " & CStr(down_len) & " 字节 (" & CStr(sngProgerssValue) & "%)"
                lblProgressInfo1.caption = lblProgressInfo.caption
            Else
                lblProgressInfo.caption = download_FileName & Chr(13) & "已下载 " & CStr(down_len) & " 字节 (文件大小未知)"
                lblProgressInfo1.caption = lblProgressInfo.caption
            End If
            '写入文件
            Put #1, down_len + 1, binBuffer()
            down_len = down_len + LenB(vbyte)
            If form_quit = True Then m_lngDocSize = 0: Inet1.Cancel
            '''''''''If DateDiff("s", start_time, Now()) > sysSet.time_out * 2 Then GoTo call_icError
        Loop Until (LenB(vbyte) = 0 Or (0 < m_lngDocSize And m_lngDocSize < down_len))
        
        If m_lngDocSize < 1 Or (m_lngDocSize = down_len) Then
            lblProgressInfo.caption = download_FileName & vbCrLf & "下载完毕"
            lblProgressInfo1.caption = lblProgressInfo.caption
err_12029:
            download_ok = True
        ElseIf m_lngDocSize < down_len Then
            Close #1
            If OX_DelFile(download_FileName) = False Then OX_DelFile download_FileName
            If OX_GreatFile(download_FileFullName) = False Then OX_GreatFile download_FileFullName
            Open download_FileName For Binary Access Write As #1
            down_len = 0
            m_lngDocSize = 0
            If download_ok = False And form_quit = False Then Call start
        Else
            If download_ok = False And form_quit = False Then Call start
        End If
        
        
    Case icError
        '与主机通信出错
        '''''''''''''call_icError:
        lblProgressInfo.caption = "与主机通信出错: " & Inet1.ResponseCode
        lblProgressInfo1.caption = lblProgressInfo.caption
        If Inet1.ResponseCode = 12029 Then error_12029 = error_12029 + 1
        If error_12029 > 3 Then
            error_12029 = 0
            lblProgressInfo.caption = "3次以上12029错误,不能建立与服务器的连接"
            lblProgressInfo1.caption = "3次以上12029错误,不能建立与服务器的连接"
            m_lngDocSize = 0
            GoTo err_12029
        End If
        download_ok = False
        If download_ok = False And form_quit = False And m_lngDocSize <> -100 Then Call start
        
    Case icResolvingHost
        lblProgressInfo.caption = "正在查找主机..."
        lblProgressInfo1.caption = "正在查找主机..."
        
    Case icHostResolved
        lblProgressInfo.caption = "已经找到主机"
        lblProgressInfo1.caption = "已经找到主机"
        
    Case icConnecting
        lblProgressInfo.caption = "正在连接主机"
        lblProgressInfo1.caption = "正在连接主机"
        
    Case icConnected
        lblProgressInfo.caption = "已经连接到主机"
        lblProgressInfo1.caption = "已经连接到主机"
        
    Case icRequesting
        lblProgressInfo.caption = "正在发送请求..."
        lblProgressInfo1.caption = "正在发送请求..."
        
    Case icRequestSent
        lblProgressInfo.caption = "成功发送请求"
        lblProgressInfo1.caption = "成功发送请求"
        
    Case icDisconnecting
        lblProgressInfo.caption = "正在断开连接..."
        lblProgressInfo1.caption = "正在断开连接..."
        
    Case icDisconnected
        lblProgressInfo.caption = "已经断开连接"
        lblProgressInfo1.caption = "已经断开连接"
        
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


Private Sub list_back_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 5 Then
        Label_name = " 返回首页: "
        Label_text = "返回初始界面"
        label_rebuld
        mouse_dic = 5
    End If
End Sub


Private Sub list_count_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 12 Then
        Label_name = " 列表统计: "
        Label_text = "列表中共有 " & list_count.caption & " 条记录"
        label_rebuld
        mouse_dic = 12
    End If
    
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
    List1.ListItems.Clear
    List1.Visible = True
    If sysSet.listshow = False Then List1.Visible = False
    List1.Enabled = False
    list_count.Visible = True
    
    '----------------------------正式列表----------------------------------
    lstfile_type = LCase(Mid$(LstFileName, InStrRev(LstFileName, ".")))
    
    Dim BytesStream, StringReturn
    
    '----------------------------bat重命名----------------------------------
    If lstfile_type = ".txt" Then
        bat_txt = Mid$(LstFileName, 1, InStrRev(LstFileName, ".")) & "bat"
        If Dir(bat_txt) <> "" Then
            ReturnEncoding = GetEncoding(bat_txt)
            If ReturnEncoding = "UTF-8" Then
                'UTF处理
                Set BytesStream = CreateObject("ADODB.Stream") '建立一个流对象
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
                'Unicode-BE处理
                bat_txt = load_normal_file(bat_txt, -1)
            Else
                'ANSI处理
                bat_txt = load_normal_file(bat_txt, 0)
                
            End If
        Else
            bat_txt = ""
        End If
    End If
    
    '----------------------------lst列表----------------------------------
    
    ReturnEncoding = GetEncoding(LstFileName)
    If ReturnEncoding = "UTF-8" Then
        'UTF处理
        Set BytesStream = CreateObject("ADODB.Stream") '建立一个流对象
        With BytesStream
            .Type = 2
            .mode = 3 '1－读，2－写，3－读写
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
        'Unicode-BE处理
        LstFileName = load_normal_file(LstFileName, -1)
        
    Else
        'ANSI处理
        LstFileName = load_normal_file(LstFileName, 0)
        
    End If
    '--------------------------------------------------------------
    
    Select Case lstfile_type
        
    Case ".htm"
        If InStr(LstFileName, "<script language='javascript'>var gPhotoInfo = {};var gPhotoID = [];</script>") = 1 Then
            
            LstFileName = Mid$(LstFileName, InStr(LstFileName, "<script language='javascript'>gPhotoID[") + Len("<script language='javascript'>gPhotoID["))
            
            split_url = Split(LstFileName, "<script language='javascript'>gPhotoID[")
            
            url_Referer = Mid$(split_url(0), InStr(split_url(0), """,""") + 3)
            url_Referer = Mid$(url_Referer, InStr(url_Referer, """,""") + 3)
            url_Referer = Trim(Mid$(url_Referer, 1, InStr(url_Referer, """") - 1))
            bat_txt = ""
            
            For i = 0 To UBound(split_url)
                url_i = ""
                name_i = ""
                
                split_url(i) = Mid$(split_url(i), InStr(split_url(i), "<a href=""") + 9)
                url_i = Mid$(split_url(i), 1, InStr(split_url(i), """") - 1)
                
                name_i = Mid$(split_url(i), InStr(split_url(i), ">") + 1)
                name_i = Mid$(name_i, 1, InStr(name_i, "</a>") - 1)
                
                If name_i = "" Then name_i = Mid$(url_i, InStrRev(url_i, "/") + 1)
                If name_i = "" Then name_i = "no_name_pic.jpg"
                
                If url_i <> "" Then
                    
                    If name_i = "" Then name_i = Mid$(url_i, InStrRev(url_i, "/") + 1)
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
        url_Referer = InputBox("请填写引用页信息", "询问", "http://")
        url_Referer = Trim(Replace(Replace(url_Referer, Chr(10), ""), Chr(13), ""))
        If LCase(url_Referer) = "http://" Then
            url_Referer = ""
        Else
            url_Referer = "Referer: " & url_Referer
        End If
        
        split_url = Split(LstFileName, vbCrLf)
        If bat_txt <> "" Then split_name = Split(bat_txt, vbCrLf)
        For i = 0 To UBound(split_url)
            url_i = ""
            name_i = ""
            'url
            url_i = Trim(split_url(i))
            'name
            
            If bat_txt <> "" Then
                If UBound(split_name) >= UBound(split_url) Then
                    If Trim(Mid$(split_name(i), 1, InStr(split_name(i), Chr(34)) - 1)) = "rename" Then
                        split_name(i) = Mid$(split_name(i), InStr(split_name(i), Chr(34)) + 1)
                        split_name(i) = Mid$(split_name(i), InStr(split_name(i), Chr(34)) + 1)
                        split_name(i) = Mid$(split_name(i), InStr(split_name(i), Chr(34)) + 1)
                        split_name(i) = Trim(Mid$(split_name(i), 1, InStrRev(split_name(i), Chr(34)) - 1))
                        name_i = split_name(i)
                    ElseIf Trim(Mid$(split_name(i), 1, InStr(split_name(i), " ") - 1)) = "rename" Then
                        split_name(i) = Trim(Mid$(split_name(i), InStr(split_name(i), " ") + 1))
                        split_name(i) = Trim(Mid$(split_name(i), InStr(split_name(i), " ") + 1))
                        name_i = split_name(i)
                    End If
                End If
            End If
            
            If name_i = "" Then name_i = Mid$(url_i, InStrRev(url_i, "/") + 1)
            If name_i = "" Then name_i = "no_name_pic.jpg"
            
            If url_i <> "" Then
                
                If name_i = "" Then name_i = Mid$(url_i, InStrRev(url_i, "/") + 1)
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
        url_Referer = InputBox("请填写引用页信息", "询问", "http://")
        url_Referer = Trim(Replace(Replace(url_Referer, Chr(10), ""), Chr(13), ""))
        If LCase(url_Referer) = "http://" Then
            url_Referer = ""
        Else
            url_Referer = "Referer: " & url_Referer
        End If
        
        split_url = Split(LstFileName, vbCrLf)
        For i = 0 To UBound(split_url)
            url_i = ""
            name_i = ""
            'name
            name_i = Trim(Mid$(split_url(i), InStr(split_url(i), "?/") + 2))
            'url
            url_i = Trim(Mid$(split_url(i), 1, InStr(split_url(i), "?/") - 1))
            
            If url_i <> "" Then
                
                If name_i = "" Then name_i = Mid$(url_i, InStrRev(url_i, "/") + 1)
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
    
    Label_url.Visible = False
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
    
    rename_rules_val = 0
    PopupMenu rename_rules
    
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
        txtpath = Mid(txtpath, InStrRev(txtpath, "\") + 1)
        txtpath = GetShortName(def_txtpath) & "\" & fix_Unicode_FileName(Hex_unicode_str(txtpath))
        
        
        If OX_Dirfile(txtpath) Then
            answer_save = MsgBox("该文件已存在，是否覆盖？", vbYesNo + vbExclamation + vbDefaultButton2, "警告")
            If answer_save = vbNo Then Exit Sub
        ElseIf OX_GreatFile(txtpath) = False Then
            MsgBox "文件创建失败！", vbOKOnly, "警告"
            Exit Sub
        End If
    End If
    txtpath = GetShortName(txtpath)
    list_save txtpath
    
End Sub

Private Sub list_output_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 6 Then
        Label_name = " 导出列表: "
        If sysSet.list_type = 1 Then
            Label_text = "导出HTM格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        ElseIf sysSet.list_type = 2 Then
            Label_text = "导出TXT+BAT格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        Else
            Label_text = "导出LST格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        End If
        label_rebuld
        mouse_dic = 6
    End If
End Sub

Private Sub list_stop_Click()
    form_quit = True
End Sub

Private Sub list_stop_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 4 Then
        Label_name = " 全部停止: "
        Label_text = "结束当前下载列表活动"
        label_rebuld
        mouse_dic = 4
    End If
End Sub

Private Sub List1_KeyUp(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If KeyCode = vbKeyDelete Then
        If MsgBox("是否删除所选内容？" & Chr(13) & "该操作不可逆！", vbYesNo + vbExclamation + vbDefaultButton2, "删除询问") = vbYes Then
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

Private Sub List1_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 10 Then
        Label_name = " 列表清单: "
        Label_text = "在当前列表删除或选择需要的文件"
        label_rebuld
        mouse_dic = 10
    End If
End Sub

Private Sub makelist_command_Click()
    On Error Resume Next
    
    Web_Browser.Stop
    
    If Proxy_img(0).Visible = True And proxy_warning = vbOK Then
        proxy_warning = MsgBox("当前 页面下载 图片下载" & vbCrLf & "正在使用OX163的代理设置" & vbCrLf & "[OK]确认" & vbCrLf & "[Cancel]取消,不再显示该提示", vbOKCancel + vbExclamation, "警告")
    ElseIf Proxy_img(1).Visible = True And proxy_warning = vbOK Then
        proxy_warning = MsgBox("当前 页面下载" & vbCrLf & "正在使用OX163的代理设置A" & vbCrLf & "[OK]确认" & vbCrLf & "[Cancel]取消,不再显示该提示", vbOKCancel + vbExclamation, "警告")
    ElseIf Proxy_img(2).Visible = True And proxy_warning = vbOK Then
        proxy_warning = MsgBox("当前 图片下载" & vbCrLf & "正在使用OX163的代理设置B" & vbCrLf & "[OK]确认" & vbCrLf & "[Cancel]取消,不再显示该提示", vbOKCancel + vbExclamation, "警告")
    End If
    
    '初始化----------------------------------------
    url_input.Text = Replace(Replace(url_input.Text, Chr(10), ""), Chr(13), "")
    url_input.Text = Trim(url_input.Text)
    url_Referer = ""
    urlpage_Referer = ""
    
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
    
    'http://photo.163.com/photos/wehi/17653496/  判断是否为163单一相册----------------------
    'http://photo.163.com/photo/wehi/#m=1&ai=1530930&p=1&n=70&cp=1
    'http://photo.163.com/wehi/list/#aid=63181820&m=0&page=1
    'http://photo.163.com/wehi/list/#m=1&aid=63181790&p=1
    
    If LCase(url_input.Text) Like "http://?*.photo.163.com*" Then
        '老相册地址，格式化为163用户名
        url_input.Text = Mid$(url_input.Text, 8)
        url_input.Text = Mid$(url_input.Text, 1, InStr(url_input.Text, ".photo.163.com") - 1)
        
    ElseIf LCase(url_input.Text) Like "?*photo.163.com/?*" And InStr(LCase(url_input.Text), "#aid=") < 1 And InStr(LCase(url_input.Text), "&aid=") < 1 Then
        If InStr(LCase(url_input.Text), "/list/#aid=") < 1 Or InStr(LCase(url_input.Text), "/list#aid=") < 1 Then
            url_input.Text = Mid$(url_input.Text, InStr(LCase(url_input.Text), "photo.163.com/") + Len("photo.163.com/"))
            url_input.Text = Mid$(url_input.Text, 1, InStr(url_input.Text, "/") - 1)
            url_input.Text = Mid$(url_input.Text, 1, InStr(url_input.Text, "#") - 1)
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
        url_temp = "#" & Mid$(url_input.Text, InStr(LCase(url_input.Text), "&aid=") + 1)
        url_input.Text = Mid$(url_input.Text, 1, InStr(LCase(url_input.Text), "#") - 1) & url_temp
        url_temp = ""
    End If
    'http://photo.163.com/wehi/list/#aid=63181790&p=1
    
    
    
    'wehi/17653496/
    'wehi/#m=1&ai=1530930&p=1&n=70&cp=1
    'http://photo.163.com/wehi/list/#aid=63181820&m=0&page=1
    Dim url_check
    If InStr(url_input.Text, "photo.163.com/photos/") > 0 Then
        url_temp = Mid$(url_input.Text, InStr(url_input.Text, "photo.163.com/photos/") + 21)
        url_check = Split(url_temp, "/")
        url_temp = url_check(0)
    ElseIf InStr(url_input.Text, "photo.163.com/photo/") > 0 Then
        url_temp = Mid$(url_input.Text, InStr(url_input.Text, "photo.163.com/photo/") + 20)
        url_check = Split(url_temp, "/")
        url_temp = url_check(0)
        If UBound(url_check) > 0 Then
            url_check(1) = LCase(url_check(1))
            url_check(1) = Mid$(url_check(1), InStr(url_check(1), "&ai=") + 4)
            url_check(1) = Mid$(url_check(1), 1, InStr(url_check(1), "&") - 1)
            If IsNumeric(url_check(1)) Then
                Call new163pic_list(url_check(0), url_check(1))
                Exit Sub
            End If
        End If
    ElseIf InStr(url_input.Text, "list/#aid=") > 0 Or InStr(url_input.Text, "list#aid=") > 0 Then
        url_temp = Mid$(url_input.Text, InStr(url_input.Text, "photo.163.com/") + Len("photo.163.com/"))
        url_temp = Replace(url_temp, "list#aid=", "list/#aid=")
        url_check = Split(url_temp, "/")
        url_temp = url_check(0)
        If UBound(url_check) > 1 Then
            url_check(2) = LCase(url_check(2))
            url_check(2) = Mid$(url_check(2), InStr(url_check(2), "#aid=") + 5)
            url_check(2) = Mid$(url_check(2), 1, InStr(url_check(2), "&") - 1)
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
    List1.ListItems.Clear
    List1.Visible = True
    If sysSet.listshow = False Then List1.Visible = False
    List1.Enabled = False
    list_count.Visible = True
    runtime_Label = "正在分析链接"
    Label_url.caption = runtime_Label
    Label_url.Visible = True
    'Timer2.Enabled = True
    Form1.Icon = ico(1).Picture
    
    url_temp = Trim$(url_input.Text)
    
    '163pic Url------------------------------------------------
    url_temp = url_input.Text
    list_163pic url_check(0), url_check(1), ""
    '----------------------------------------------------------
    
    
    Label_url.Visible = False
    'Timer2.Enabled = False
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
    
    '--------------------------创建url文件----------------------------
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
    
    List1.ListItems.Clear
    
    List1.Visible = True
    If sysSet.listshow = False Then List1.Visible = False
    List1.Enabled = False
    list_count.Visible = True
    runtime_Label = "正在分析链接"
    Label_url.caption = runtime_Label
    Label_url.Visible = True
    'Timer2.Enabled = True
    
    Form1.Icon = ico(1).Picture
    form_quit = False
    
    
    '--------------------------------------------------------
    
    strURL = Trim(new163pic_GetJs(input_User_Name, input_Album_ID, ""))
    
    If strURL <> "" Then Call new163pic_listPhotoUrl
    
    '--------------------------------------------------------
    
    
    Label_url.Visible = False
    'Timer2.Enabled = False
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
    
    '------------------------------创建url文件----------------------------------
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
        
        '老版本无效 strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&batchId=5_w_h_8_Pp_43&scriptSessionId=5_w_h_8_Pp_43&c0-id=0&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-param0=string:" & input_Album_ID & "&c0-param1=string:" & input_psw & "&c0-param2=string:" & pass_code & "&c0-param3=string:&c0-param4=boolean:false"
        'http://photo.163.com/photo/ wehi /dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D187&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A1530930&c0-param1=string%3Aasd&c0-param2=string%3Akkbk&c0-param3=string%3A32350899&c0-param4=boolean%3Afalse&batchId=974914
        strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D187&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A" & input_Album_ID & "&c0-param1=string%3A" & input_psw & "&c0-param2=string%3Afromblog&c0-param3=string%3A" & Int(Timer() * 1000000) & "&c0-param4=boolean%3Afalse&batchId=" & Int(Timer() * 1000000)
        
        'strURL = "http://photo.163.com/photo/dwrcross/" & input_User_Name & "/u/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D822&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A" & input_Album_ID & "&c0-param1=string%3A" & input_psw & "&c0-param2=string%3Afromblog&c0-param3=number%3A&c0-param4=boolean%3Afalse&batchId=4&ntime=" & CDbl(Now())
    Else
        
        'strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&batchId=5_w_h_8_Pp_43&scriptSessionId=5_w_h_8_Pp_43&c0-id=0&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-param0=string:" & input_Album_ID & "&c0-param1=string:&c0-param2=string:&c0-param3=string:&c0-param4=boolean:false"
        strURL = "http://photo.163.com/photo/" & input_User_Name & "/dwr/call/plaincall/AlbumBean.getAlbumData.dwr?callCount=1&scriptSessionId=%24%7BscriptSessionId%7D187&c0-scriptName=AlbumBean&c0-methodName=getAlbumData&c0-id=0&c0-param0=number%3A" & input_Album_ID & "&c0-param1=string%3A&c0-param2=string%3Afromblog&c0-param3=string%3A" & Int(Timer() * 1000000) & "&c0-param4=boolean%3Afalse&batchId=" & Int(Timer() * 1000000)
        
    End If
    
    runtime_Label = "正在分析链接表"
    Label_url.caption = runtime_Label
    Label_url1.caption = runtime_Label
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
        
        Html_Temp = Mid$(Html_Temp, 1, InStrRev(Html_Temp, ".js""") + 2)
        new163pic_GetJs = "http://" & Mid$(Html_Temp, InStrRev(Html_Temp, Chr(34)) + 1)
    Else
        Html_Temp = ""
        new163pic_GetJs = ""
    End If
    
    
End Function

Private Sub new163pic_listPhotoUrl()
    On Error Resume Next
    Dim ourl As String
    runtime_Label = "正在下载" & strURL
    Label_url.caption = runtime_Label
    Label_url1.caption = runtime_Label
    
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
    
    runtime_Label = "正在分析" & strURL
    Label_url.caption = runtime_Label
    Label_url1.caption = runtime_Label
    
    
    If InStr(Html_Temp, "=[{id:") > 0 Then
        
        Html_Temp = Replace$(Replace$(Html_Temp, Chr(13), ""), Chr(10), "")
        '定位到第一张图片的文本头
        Html_Temp = Mid$(Html_Temp, InStr(Html_Temp, "=[{id:") + 6)
        '定位到最后一张图片
        Html_Temp = Mid$(Html_Temp, 1, InStr(Html_Temp, "}];") - 3)
        
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
        new163post_pic_ourl = new163post_pic_ourl & "c0-param0=string:" '后面为图片ID号
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
                ourl = Mid$(new163pic_str_split(i), InStr(LCase(new163pic_str_split(i)), ",ourl:'") + 7)
                ourl = Trim(Mid$(ourl, 1, InStr(ourl, "'") - 1))
            End If
            new163_pic_ID = Mid$(new163pic_str_split(i), 1, InStr(new163pic_str_split(i), ",") - 1)
            
            
            '当获取图片地址失败,如果为相册主人,则进入单张列表模式------------------------------------------
            If new163_isAlbumOwner_TF = True And ourl = "" Then
                runtime_Label = "正在分析原始图片：第" & (i + 1) & "张/共" & (UBound(new163pic_str_split) + 1) & "张，耗时较长"
                Label_url.caption = runtime_Label
                Label_url1.caption = runtime_Label
                fast_down.Cancel
                download_ok = False
                htmlCharsetType = "GB2312"
                a = strURL
                strURL = "http://photo.163.com/photo/" & OX_Script_Type & "/dwr/call/plaincall/PhotoBean.getUrl.dwr?u=" & OX_Script_Type
                start_Post new163post_pic_ourl & new163_pic_ID, "User-Agent: Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)"
                
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
                    
                    runtime_Label = "您不是相册主人或者没有登陆相册，下载中等尺寸图片"
                    Label_url.caption = runtime_Label
                    Label_url1.caption = runtime_Label
                    new163_isAlbumOwner_TF = False
                    ourl = ""
                ElseIf InStr(LCase(Html_Temp), "http://") > 1 Then
                    ourl = Mid$(Html_Temp, InStr(Html_Temp, "http://"))
                    ourl = Mid$(ourl, 1, InStr(ourl, Chr(34)) - 1)
                Else
                    ourl = ""
                End If
            End If
            '----------------------------------------------------------------------------------------------
            
            If ourl = "" Then
                new163pic_str_split(i) = Mid$(new163pic_str_split(i), InStr(LCase(new163pic_str_split(i)), ",murl:'") + 7)
                a = Mid$(new163pic_str_split(i), 1, InStr(LCase(new163pic_str_split(i)), "'") - 1)
                ourl = a
            Else
                a = ourl
            End If
            
            '第一种
            '616/bq4wr0XiQkbDUgWICDBoTg==/1026539240063803524.jpg
            'http://img616.photo.163.com/bq4wr0XiQkbDUgWICDBoTg==/1026539240063803524.jpg
            '第二种
            '/photo/nzovvldOrJcsKJ2iLjW8rA==/2845149064591786998.jpg
            'http://img.bimg.126.net/photo/nzovvldOrJcsKJ2iLjW8rA==/2845149064591786998.jpg
            b = Mid$(a, 1, InStr(a, "/") - 1)
            a = Mid$(a, InStr(a, "/"))
            
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
                new163pic_str_split(i) = Mid$(new163pic_str_split(i), InStr(LCase(new163pic_str_split(i)), "',desc:'") + 8)
                
                '描述
                new163_pic_ID = "PID:" & new163_pic_ID & ",UID:" & OX_Script_Type
                
                b = reName_Str(Trim(Mid$(new163pic_str_split(i), 1, InStr(new163pic_str_split(i), "'") - 1)))
                If b = "" Then b = reName_Str(Mid$(a, InStrRev(a, "/") + 1))
                new163pic_str_split(i) = ""
                new163pic_str_split(i) = LCase(Mid$(b, InStrRev(b, ".")))
                
                If new163pic_str_split(i) <> LCase(Mid$(a, InStrRev(a, "."))) Then
                    b = b & Mid$(a, InStrRev(a, "."))
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


Private Sub makelist_command_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 2 Then
        Label_name = " 下载链接: "
        Label_text = "确定下载该链接，生成下载列表"
        label_rebuld
        mouse_dic = 2
    End If
End Sub


Private Sub open_set1_Click()
    If down_count = 0 Then
        input_file.Enabled = True
    Else
        input_file.Enabled = False
    End If
    PopupMenu setMenu
End Sub

Private Sub open_set1_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 14 Then
        Label_name1 = " 程序菜单: "
        Label_text1 = "程序设置-脚本更新-自动关机-路径查看"
        label_rebuld1
        mouse_dic = 14
    End If
End Sub

Private Sub out_all_Click()
    rename_rules_val = 0
    PopupMenu rename_rules
    PopupMenu out_lst_menu
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
        Folder_path = GetFolder("默认下载文件夹", sysSet.def_path & "\", True)
    Else
        Folder_path = GetFolder("请选择下载文件夹", Open_path_set & "\", True)
    End If
    
    
    If Mid$(Folder_path, 2, 2) = ":\" Then
        If (GetFileAttributes(Folder_path) = -1) Then MsgBox "该路径不能保存文件", vbOKOnly + vbExclamation, "警告": Exit Sub
start:
        text_sortname = GetShortName(Folder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid$(text_sortname, 1, Len(text_sortname) - 1)
        '菜单打开下载路径
        Open_path = text_sortname
        Open_path_set = text_sortname
        
        Call save_all_list(Open_path)
        
    ElseIf sysSet.savedef = False Then
        Folder_path = App_path & "\download": GoTo start
        
    Else
        Msg = MsgBox("你没有选择文件夹，或者文件夹不正确，是否下载相册？" & vbCrLf & "<是>将文件下载到默认目录：" & App_path & "\download" & vbCrLf & "<否>放弃下载", vbYesNo + vbExclamation + vbDefaultButton2, "下载询问")
        If Msg = vbYes Then Folder_path = App_path & "\download": GoTo start
        
    End If
    
End Sub

Private Sub out_all_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 6 Then
        Label_name1 = " 导出列表: "
        If sysSet.list_type = 1 Then
            Label_text1 = "导出HTM格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        ElseIf sysSet.list_type = 2 Then
            Label_text1 = "导出TXT+BAT格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        Else
            Label_text1 = "导出LST格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        End If
        label_rebuld1
        mouse_dic = 6
    End If
End Sub

Private Sub save_all_Click()
    On Error Resume Next
    
    rename_rules_val = 0
    PopupMenu rename_rules
    
    Folder_path = ""
    If sysSet.def_path_tf = True And sysSet.def_path <> "" Then
        Folder_path = GetFolder("默认下载文件夹", sysSet.def_path & "\", True)
    Else
        Folder_path = GetFolder("请选择下载文件夹", Open_path_set & "\", True)
    End If
    
    
    If Mid$(Folder_path, 2, 2) = ":\" Then
        If (GetFileAttributes(Folder_path) = -1) Then MsgBox "该路径不能保存文件", vbOKOnly + vbExclamation, "警告": Exit Sub
start:
        text_sortname = GetShortName(Folder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid$(text_sortname, 1, Len(text_sortname) - 1)
        '打开路径菜单
        Open_path = text_sortname
        Open_path_set = text_sortname
        
        save_all_pic text_sortname
        
    ElseIf sysSet.savedef = False Then
        Folder_path = App_path & "\download": GoTo start
        
    Else
        Msg = MsgBox("你没有选择文件夹，或者文件夹不正确，是否下载相册？" & vbCrLf & "<是>将文件下载到默认目录：" & App_path & "\download" & vbCrLf & "<否>放弃下载", vbYesNo + vbExclamation + vbDefaultButton2, "下载询问")
        If Msg = vbYes Then Folder_path = App_path & "\download": GoTo start
        
    End If
End Sub

Private Sub save_all_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 7 Then
        Label_name1 = " 保存相册: "
        Label_text1 = "保存列表中的全部文件"
        label_rebuld1
        mouse_dic = 7
    End If
End Sub

Private Sub stop1_Click()
    Web_Browser.Stop
    Timer1.Enabled = False
    Label_url.Visible = False
    stop1.Visible = False
    view_command.Visible = True
    buttom_enable True
End Sub

Private Sub stop1_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 11 Then
        Label_name = " 全部停止: "
        Label_text = "结束当前下载列表活动"
        label_rebuld
        mouse_dic = 11
    End If
End Sub

Private Sub stop2_Click()
    form_quit = True
End Sub

Private Sub stop2_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 4 Then
        Label_name1 = " 全部停止:"
        Label_text1 = "结束当前下载列表活动"
        label_rebuld1
        mouse_dic = 4
    End If
End Sub

Private Sub Timer3_Timer()
    On Error Resume Next
    Timer3.Enabled = False
    
    
    windows_destop_Width = Form1.Width + Form1.Left * 2
    windows_destop_Height = Form1.Height + Form1.Top * 2
    
    Web_Browser.Silent = True
    Web_Browser.Document.Open
    Web_Browser.Document.Write ""
    Web_Browser.Document.Close
    'Web_Browser.Navigate "about:blank" 'Replace$(App_path & "\start.htm", "\\start.htm", "\start.htm") '"about:blank"'
    Web_Search.Silent = True
    Web_Search.Document.Open
    Web_Search.Document.Write ""
    Web_Search.Document.Close
    'Web_Search.Navigate "about:blank" '"http://163.ugschina.com/"
    
    
    
    If sysSet.autocheck = False And Len(Command()) <= 0 Then Exit Sub
    
    
    Dim Command_str As String
    Dim Command_str_split
    '接收启动参数
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
        
        Call view_command_Click
        Exit Sub
    End If
    
    Dim ver As String, temp_str As String
    temp_str = show_inform(0)
    If sysSet.bottom_StatusBar = True Then
        show_inform(0) = "正在自动检查最新版本..."
        StatusBar.Panels(2) = show_inform(0)
    End If
    ver = update.OpenURL(sysSet.update_host & "ox163_update.htm?ntime=" & CDbl(Now()))
    If IsNumeric(ver) Then
        ver = Mid$(ver, 1, InStr(ver, ".") - 1)
        If CInt(ver) > sysSet.ver And Len(ver) < 5 Then
            ver = update.OpenURL(sysSet.update_host & "ox163_update_info.htm?ntime=" & CDbl(Now()))
            ver = Left$(Replace(Replace(ver, Chr(10), ""), Chr(13), ""), 100)
            
            If download_ok = True Then
                If MsgBox("发现新版本:" & vbCrLf & ver & vbCrLf & "是否前往主页下载？", vbYesNo + vbQuestion, "OX163版本检查") = vbYes Then
                    Call homepage_Click
                Else
                    Form1.caption = "[有新版本]" & Form1.caption
                    TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
                    If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
                End If
            Else
                Form1.caption = "[有新版本]" & Form1.caption
                TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
                If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
            End If
        End If
    End If
    
    If down_count = 0 And sysSet.bottom_StatusBar = True Then
        show_inform(0) = temp_str
        StatusBar.Panels(2) = show_inform(0)
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

Private Sub url_input_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 65 And Shift = vbCtrlMask Then
        url_input_SelectAll
    ElseIf KeyCode = 13 And Shift = vbCtrlMask Then
        view_command_Click
    ElseIf KeyCode = 13 And Shift = vbShiftMask Then
        open_lock_Click
    ElseIf KeyCode = 13 Then
        url_input.Text = Trim(url_input.Text)
        makelist_command_Click
    End If
End Sub

Private Sub url_input_KeyUp(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If Shift <> vbCtrlMask And Shift <> vbAltMask And url_Filelist.Visible = False Then
        
        url_Filelist.Visible = True
        
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
        
    End If
    
End Sub

Private Sub url_Filelist_Click()
    Dim File_urlstr As String
    File_urlstr = rename_URLfile(url_Filelist.fileName)
    If File_urlstr <> "" Then
        url_input.Text = File_urlstr
        url_input_SelectAll
    End If
End Sub

Private Sub url_input_LostFocus()
    url_Filelist.Visible = False
End Sub

Private Sub url_input_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 3 Then
        Label_name = " 填写链接: "
        Label_text = "填写用户名或链接(Ctrl+回车浏览网页,Shift+回车填写密码)"
        label_rebuld
        mouse_dic = 3
    End If
End Sub

Private Sub url_input_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, x As Single, Y As Single)
    OLEDragDrop Data
End Sub

Private Sub url_input_SelectAll()
    url_input.SelStart = 0
    url_input.SelLength = Len(url_input.Text)
End Sub
'---------------------------------------------------------------------------------
'---------------------------------------------------------------------------------

Private Sub user_list_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    If ColumnHeader.Text = "禁止下载列表" Then Exit Sub
    user_list.ColumnHeaders.Item(1).Text = "相册名称"
    user_list.ColumnHeaders.Item(2).Text = "相册密码"
    user_list.ColumnHeaders.Item(3).Text = "序号/链接"
    user_list.ColumnHeaders.Item(4).Text = "图片数量"
    user_list.ColumnHeaders.Item(5).Text = "相册描述"
    
    Static kind As Boolean
    kind = Not kind
    Select Case ColumnHeader
    Case "相册名称"
        user_list.SortKey = 0
    Case "相册密码"
        user_list.SortKey = 1
    Case "序号/链接"
        user_list.SortKey = 2
    Case "图片数量"
        user_list.SortKey = 3
    Case "相册描述"
        user_list.SortKey = 4
    End Select
    
    If kind = False Then
        user_list.SortOrder = lvwDescending
        ColumnHeader.Text = ColumnHeader.Text & "↓"
    Else
        user_list.SortOrder = lvwAscending
        ColumnHeader.Text = ColumnHeader.Text & "↑"
    End If
    user_list.Sorted = True
    
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
        If undown_str <> "" Then undown_str = Mid$(undown_str, 1, Len(undown_str) - 1)
        user_list.SelectedItem.ListSubItems(5).Text = undown_str
        
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

Private Sub albumslist_back_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 5 Then
        Label_name1 = " 返回列表: "
        Label_text1 = "返回相册列表"
        label_rebuld1
        mouse_dic = 5
    End If
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
    If Trim(user_list.SelectedItem.ListSubItems(2).Text) = "" Then Exit Sub
    
    Form1.Enabled = True
    
    '-------------------------------------------------------------------------
    '163新相册----------------------------------------------------------------
    If is_username(OX_Script_Type) = True Then
        If user_list.SelectedItem.ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." Then
            menu_psw_Click
            Exit Sub
            
        Else
            If user_list.SelectedItem.ListSubItems(1).Text <> "" Then
                list_albums_ID = new163pic_GetJs(OX_Script_Type, Replace(user_list.SelectedItem.ListSubItems(2).Text, "new163_ID_", ""), user_list.SelectedItem.ListSubItems(1).Text)
                If list_albums_ID = "" Then
                    If MsgBox("密码不正确是否重新填写？", vbYesNo + vbExclamation, "警告") = vbYes Then menu_psw_Click
                    Exit Sub
                End If
            ElseIf user_list.SelectedItem.ListSubItems(2).Text Like "new163_ID_?*" Then
                'list_albums_ID like http://s2.ph.126.net/aZQ_eDjNsFowIq9SG-bGpg==/195713069957396.js
                list_albums_ID = new163pic_GetJs(OX_Script_Type, Replace(user_list.SelectedItem.ListSubItems(2).Text, "new163_ID_", ""), "")
            End If
            
            If Left(list_albums_ID, 4) = "http" Then
                form_quit = False
                user_list.Visible = False
                count1.Visible = False
                List1.ListItems.Clear
                
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
                runtime_Label = "正在分析链接"
                Label_url1.caption = runtime_Label
                Label_url1.Visible = True
                'Timer2.Enabled = True
                Form1.Icon = ico(1).Picture
                If sysSet.listshow = False Then List1.Visible = False
                
                count2.caption = 0
                
                strURL = list_albums_ID
                new163pic_listPhotoUrl
                
                Label_url1.Visible = False
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
                
                If user_list.SelectedItem.ListSubItems(5).Text <> "" Then albums_checked_pic user_list.SelectedItem.ListSubItems(5).Text
                
                List1.ListItems.Item(1).Selected = False
                List1.SetFocus
                Exit Sub
                
            End If
            list_albums_ID = ""
        End If
        Exit Sub
    End If
    '163新相册结束
    '------------------------------------------------------------------------------------
    '------------------------------------------------------------------------------------
    '外部脚本调用------------------------------------------------------------------------
    
    If user_list.SelectedItem.ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." Then
        menu_psw_Click
        Exit Sub
        
    ElseIf user_list.SelectedItem.ListSubItems(1).Text <> "" Then
        'check_album_password----------------------------------------------
        Dim pass_accept As Boolean
        url_temp = check_Include(Trim(user_list.SelectedItem.ListSubItems(2).Text))
        If url_temp = "" Then GoTo script_nopass_list
        
        form_quit = False
        
        runtime_Label = "开始执行外部脚本"
        Label_url1.caption = runtime_Label
        Label_url1.Visible = True
        pass_accept = check_album_password(url_temp, user_list.SelectedItem.ListSubItems(1).Text)
        Label_url1.Visible = False
        
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
        List1.ListItems.Clear
        
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
        runtime_Label = "正在分析链接"
        Label_url1.caption = runtime_Label
        Label_url1.Visible = True
        'Timer2.Enabled = True
        Form1.Icon = ico(1).Picture
        If sysSet.listshow = False Then List1.Visible = False
        
        count2.caption = 0
        
        url_temp = check_Include(Trim(user_list.SelectedItem.ListSubItems(2).Text))
        If url_temp <> "" Then list_photo_script url_temp
        If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
        
        Label_url1.Visible = False
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
        '去除上一次不被勾选的图片
        If user_list.SelectedItem.ListSubItems(5).Text <> "" Then albums_checked_pic user_list.SelectedItem.ListSubItems(5).Text
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

Private Sub user_list_find_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 21 Then
        Label_name1 = " 查找内容: "
        Label_text1 = "查找列表中的文本内容（Ctrl+F）"
        label_rebuld1
        mouse_dic = 21
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
        For i = 1 To user_list.ListItems.count
            DoEvents
            user_list.ListItems(i).Selected = True
        Next
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
    copy_txt = ""
    For i = 1 To user_list.ListItems.count
        DoEvents
        If user_list.ListItems(i).Selected = True Then
            If user_list.ListItems(i).ListSubItems(2).Text Like "new163_ID_?*" Then
                copy_txt = copy_txt & "http://photo.163.com/" & OX_Script_Type & "/#m=1&aid=" & Mid(user_list.ListItems(i).ListSubItems(2).Text, 11) & vbCrLf
            Else
                copy_txt = copy_txt & user_list.ListItems(i).ListSubItems(2).Text & vbCrLf
            End If
        End If
    Next
    If copy_txt <> "" Then
        Clipboard.Clear
        Clipboard.SetText copy_txt
    End If
    user_list.Enabled = True
    user_list.SetFocus
    Exit Sub
    '--------------------------------------------------
user_ubb_copy:
    user_list.Enabled = False
    copy_txt = ""
    For i = 1 To user_list.ListItems.count
        DoEvents
        If user_list.ListItems(i).Selected = True Then
            If user_list.ListItems(i).ListSubItems(2).Text Like "new163_ID_?*" Then
                copy_txt = copy_txt & "[url=http://photo.163.com/" & OX_Script_Type & "/#m=1&aid=" & Mid(user_list.ListItems(i).ListSubItems(2).Text, 11) & "]" & user_list.ListItems(i).Text & "[/url]" & vbCrLf
            Else
                copy_txt = copy_txt & "[url=" & user_list.ListItems(i).ListSubItems(2).Text & "]" & user_list.ListItems(i).Text & "[/url]" & vbCrLf
            End If
        End If
    Next
    If copy_txt <> "" Then
        Clipboard.Clear
        Clipboard.SetText copy_txt
    End If
    user_list.Enabled = True
    user_list.SetFocus
    
End Sub

Private Sub user_list_KeyUp(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If KeyCode = vbKeyDelete Then
        If MsgBox("是否删除所选内容？" & Chr(13) & "该操作不可逆！", vbYesNo + vbExclamation + vbDefaultButton2, "删除询问") = vbYes Then
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

Private Sub user_list_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 3 Then
        Label_name1 = " 相册列表: "
        Label_text1 = "在列表中标记复选框确定下载相册（右键列出详细菜单）"
        label_rebuld1
        mouse_dic = 3
    End If
End Sub

Private Sub user_list_MouseUp(Button As Integer, Shift As Integer, x As Single, Y As Single)
    On Error Resume Next
    If Button = 2 And user_list.ListItems.count > 0 Then
        If user_list.SelectedItem.ListSubItems(1).Text = "" Then
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
                menu_pswv.caption = "粘贴密码(&V)"
            Else
                menu_pswv.caption = "粘贴密码(&V)-密码为:" & psw_v
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

Private Sub user_list_output_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 6 Then
        Label_name1 = " 导出列表:"
        If sysSet.list_type = 1 Then
            Label_text1 = "导出HTM格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        ElseIf sysSet.list_type = 2 Then
            Label_text1 = "导出TXT+BAT格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        Else
            Label_text1 = "导出LST格式下载列表 (程序设置>下载栏中可更改和查看说明)"
        End If
        label_rebuld1
        mouse_dic = 6
    End If
End Sub

Private Sub user_list_save_Click()
    image_save_Click
End Sub

Private Sub user_list_save_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 7 Then
        Label_name1 = " 保存相册: "
        Label_text1 = "保存列表中被勾选的文件"
        label_rebuld1
        mouse_dic = 7
    End If
End Sub

Private Sub view_command_Click()
    If Trim(url_input.Text) = "" Or Trim(url_input.Text) = "http://" Then url_input.Text = "http://photo.163.com/"
    url_input.Text = Trim(url_input.Text)
    If is_username(url_input.Text) = True Then url_input.Text = "http://photo.163.com/photos/" & format_username(url_input.Text, 2) & "/"
    'buttom_enable False
    form_height = 3000
    If Form1.WindowState = 0 Then
        If Form1.Width < 11000 Then
            'If Form1.Left > 3900 Then Form1.Left = Form1.Left - 3900 ' (15000 - 7100) / 2
            Form1.Width = 15000
        End If
        If Form1.Height < 8500 Then
            'If Form1.Top > (8500 - 1500) / 2 Then Form1.Top = Form1.Top - 3500 '(8500 - 1500) / 2
            Form1.Height = 8500
        End If
    End If
    newform_resize
    'path_url
    If InStr(url_temp, "Referer: ") = 1 Then
        Web_Browser.Navigate Trim(url_input.Text), , , , url_temp
    Else
        Web_Browser.Navigate Trim(url_input.Text) ', , , , "User-Agent: Mozilla/4.0 (compatible; MSIE 8.0)"    '//.Navigate2 http://zhidao.baidu.com/question/9685639.html
    End If
    url_temp = Trim(url_input.Text)
    web_Picture.Visible = True
    Web_Browser.Visible = True
    Web_Search.Visible = False
    Web_Browser.Width = Frame1.Width
    Web_Toolbar.Width = Web_Browser.Width
    
    'Label_url.caption = "正在打开页面"
    'view_command.Visible = False
    'stop1.Visible = True
    'Label_url.Visible = True
    'Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
    Static open_web_count As Byte
    
    If down_count <> 0 Then
        Timer1.Enabled = False
        buttom_enable True
        Exit Sub
    End If
    
    If Not Web_Browser.Busy Or Web_Browser.Visible = False Then
        Label_url.Visible = False
        stop1.Visible = False
        view_command.Visible = True
        Timer1.Enabled = False
        buttom_enable True
    End If
    Select Case open_web_count
    Case 1
        Label_url.caption = "正在打开页面.."
        open_web_count = 2
    Case 2
        Label_url.caption = "正在打开页面..."
        open_web_count = 3
    Case 3
        Label_url.caption = "正在打开页面...."
        open_web_count = 4
    Case 4
        Label_url.caption = "正在打开页面....."
        open_web_count = 0
    Case Else
        Label_url.caption = "正在打开页面."
        open_web_count = 1
    End Select
    
End Sub

Private Function buttom_enable(buttom_ckick As Boolean)
    open_lock.Enabled = buttom_ckick
    url_input.Enabled = buttom_ckick
    view_command.Enabled = buttom_ckick
    makelist_command.Enabled = buttom_ckick
End Function


Public Sub frame_resize()
    On Error Resume Next
    
    Frame1.Width = Form1.ScaleWidth - 100
    Frame2.Width = Form1.ScaleWidth - 100
    Frame2.Height = Form1.ScaleHeight - 100 - show_StatusBar
    web_Picture.Width = Form1.ScaleWidth
    web_Picture.Height = Form1.ScaleHeight - 700 - show_StatusBar
    Frame_search.Left = Form1.ScaleWidth - 3120
    top_Picture(0).Left = Frame1.Width - 650
    top_Picture(1).Left = top_Picture(0).Left
    homepage.Left = top_Picture(0).Left - 925
    Proxy_img(0).Left = homepage.Left - 1150
    Proxy_img(1).Left = Proxy_img(0).Left
    Proxy_img(2).Left = Proxy_img(0).Left
    
    '长度判断关键
    url_input.Width = Frame1.Width - 2400
    url_Filelist.Width = url_input.Width
    If Form1.ScaleHeight - 650 < 3000 Then '1830
        url_Filelist.Height = Form1.ScaleHeight - 650
    Else
        url_Filelist.Height = 3000
    End If
    
    search163.Left = url_input.Left + url_input.Width + 50
    stop1.Left = search163.Left + 430
    view_command.Left = stop1.Left
    makelist_command.Left = stop1.Left + 400

    If down_count = 0 Then
        Web_Browser.Width = Frame1.Width
        Web_Toolbar.Width = Web_Browser.Width
        Web_Search.Width = Frame1.Width
        If Web_Browser.Visible = True Then Web_Browser.Height = Form1.Height - 1510 - show_StatusBar - Web_Toolbar.Height
        If Web_Search.Visible = True Then Web_Search.Height = Form1.Height - 1510 - show_StatusBar
    ElseIf down_count = 1 Then
        
        'List1默认宽度 1序号 1000.06 - 2文件名 2000 - 3其他描述 1440.00 - 4下载链接 1200
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
        
        'user_list默认宽度 1相册名称 1440.00 - 2相册密码 1400 - 3序号/链接 1200 - 4图片数量 1400 - 5相册描述 1099.84
        user_list.Height = Frame2.Height - 900
        user_list.Width = Frame2.Width - 100
        
        If user_list.Width - 5000 > 4000 Then
            user_list.ColumnHeaders.Item(1).Width = 3500
            user_list.ColumnHeaders.Item(3).Width = (user_list.Width - 6800) * 0.5
            user_list.ColumnHeaders.Item(5).Width = (user_list.Width - 6800) * 0.5
        Else
            user_list.ColumnHeaders.Item(2).Width = 1400
            user_list.ColumnHeaders.Item(3).Width = 1100
            user_list.ColumnHeaders.Item(4).Width = 1400
            user_list.ColumnHeaders.Item(5).Width = 1100
            user_list.ColumnHeaders.Item(1).Width = user_list.Width - 5500
        End If
    End If
End Sub

Private Sub newform_resize()
    On Error Resume Next
    If Form1.WindowState = 0 Then
        If Form1.Height < 3400 Then Form1.Height = Form1.Height + 2000
    End If
    If down_count = 0 And WindowState <> 1 Then Web_Browser.Height = Form1.Height - 1510 - show_StatusBar - Web_Toolbar.Height: Web_Search.Height = Form1.Height - 1510 - show_StatusBar
End Sub


Private Sub view_command_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If mouse_dic <> 1 Then
        Label_name = " 查看网页: "
        Label_text = "如果该相册为加密相册或者不能确定内容，请点击"
        label_rebuld
        mouse_dic = 1
    End If
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
    url_input_SelectAll
    url_input.Enabled = False
    url_input.Visible = False
    Frame1.caption = "列表与下载相册"
    view_command.Visible = False
    makelist_command.Visible = False
    stop1.Visible = False
    search163.Visible = False
    text_show.Visible = False
    open_lock.Visible = False
    
    list_stop.Visible = True
    list_back.Visible = True
    list_output.Visible = True
    image_save.Visible = True
    Line2.Visible = True
    list1_find.Visible = True
End Sub

Public Sub step_one()
    On Error Resume Next
    down_count = 0
    Label_url.Visible = False
    rename_rules_val = 0
    pass_code = ""
    OX_Script_Type = ""
    Frame1.caption = "侦测用户名或网址"
    Frame2.Visible = False
    Frame_search.Visible = False
    stop1.Visible = False
    search163.Visible = True
    view_command.Visible = True
    makelist_command.Visible = True
    text_show.Visible = True
    open_lock.Visible = True
    list_stop.Visible = False
    list_back.Visible = False
    list_output.Visible = False
    image_save.Visible = False
    Line2.Visible = False
    list1_find.Visible = False
    List1.Visible = False
    Web_Browser.Stop
    Web_Browser.Visible = False
    Web_Search.Visible = False
    list_count.Visible = False
    form_height = 1500 + show_StatusBar
    If Form1.WindowState = 0 Then Form1.Height = 1470 + show_StatusBar
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
    user_list.Sorted = False
    List1.Sorted = False
    List1.ListItems.Clear
    user_list.ListItems.Clear
    user_list.ColumnHeaders.Item(1).Text = "相册名称"
    user_list.ColumnHeaders.Item(2).Text = "相册密码"
    user_list.ColumnHeaders.Item(3).Text = "序号/链接"
    user_list.ColumnHeaders.Item(4).Text = "图片数量"
    user_list.ColumnHeaders.Item(5).Text = "相册描述"
    
End Sub

Public Sub step_three()
    down_count = 1
    rename_rules_val = 0
    search163.Visible = False
    url_input_SelectAll
    url_input.Visible = False
    url_input.Enabled = False
    Frame1.Visible = False
    Frame2.Visible = True
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
        Call Web_Browser.ExecWB(OLECMDID_SAVEAS, OLECMDEXECOPT_DONTPROMPTUSER)
    Case "shj_hp"
        Web_Browser.Navigate "http://www.shanhaijing.net/163/"
    Case "shj_forum"
        Web_Browser.Navigate "http://www.ugschina.com/forum/"
    Case "Web_Toolbar_163"
        Web_Browser.Navigate "http://photo.163.com/"
    Case "Web_Toolbar_s163"
        Web_Browser.Navigate "http://163.ugschina.com/"
    End Select
End Sub

Private Sub Web_Browser_BeforeNavigate2(ByVal pDisp As Object, URL As Variant, flags As Variant, TargetFrameName As Variant, PostData As Variant, Headers As Variant, Cancel As Boolean)
    
    On Error GoTo Web_Browser_BeforeNavigate_error
    
    Static web_load_times As Boolean
    
    DoEvents
    
    If OX163_WebBrowser_scriptCode = "" Or web_load_times = False Then web_load_times = True: Exit Sub 'URL = Replace$(App_path & "\start.htm", "\\start.htm", "\start.htm") Or
    
    'Web_Browser_header_tf = False
    
    '--------------------------------------------------------------------------------------------------
    If Web_Browser_header_tf = True Then GoTo Web_Browser_BeforeNavigate_error
    
    
    Dim Script_App As New ScriptControl
    Dim script_retrun_code As String
    Dim run_script_str
    
    Set Script_App = Nothing
    Script_App.Language = "vbscript"
    'Script_App.Reset
    Script_App.AddCode (OX163_WebBrowser_scriptCode)
    
    script_retrun_code = Script_App.Eval("OX163_Web_Browser_ctrl(" & Chr(34) & URL & Chr(34) & "," & Chr(34) & flags & Chr(34) & "," & Chr(34) & TargetFrameName & Chr(34) & "," & Chr(34) & PostData & Chr(34) & "," & Chr(34) & Headers & Chr(34) & ")")
    
    '0-URL, 1-Flags, 2-TargetFrameName, 3-PostData, 4-Headers
    run_script_str = Split(script_retrun_code, vbCrLf & vbCrLf)
    
    If (run_script_str(0) <> "" Or run_script_str(1) <> "" Or run_script_str(2) <> "" Or run_script_str(3) <> "" Or run_script_str(4) <> "") And Web_Browser_header_tf = False Then
        If run_script_str(0) <> "" Then URL = run_script_str(0)
        If run_script_str(1) <> "" Then flags = run_script_str(1)
        If run_script_str(2) <> "" Then TargetFrameName = run_script_str(2)
        If run_script_str(3) <> "" Then PostData = run_script_str(3)
        If run_script_str(4) <> "" Then Headers = run_script_str(4) ': MsgBox URL & vbCrLf & flags & vbCrLf & TargetFrameName & vbCrLf & PostData & vbCrLf & Headers
        Web_Browser_header_tf = True
        Cancel = True
        pDisp.Navigate URL, flags, TargetFrameName, PostData, Headers
        'URL = Replace(URL, "g.e-hentai.org", "www.hentaiverse.net")
        'Web_Browser.Navigate URL, , , PostData, "Host: 95.211.21.16" & vbCrLf & "Referer: http://g.e-hentai.org/"
        
    Else
Web_Browser_BeforeNavigate_error:
        
        Web_Browser_header_tf = False
        
    End If
    '------------------------------------------
    
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

Private Sub Web_Browser_NavigateComplete2(ByVal pDisp As Object, URL As Variant)
    On Error Resume Next
    
    If down_count = 0 Then
        Dim Script_App As New ScriptControl
        Dim script_retrun_code As String
        
        Set Script_App = Nothing
        Script_App.Language = "vbscript"
        'Script_App.Reset
        Script_App.AddCode (OX163_WebBrowser_scriptCode)
        
        If Web_Browser.Visible = True And script_retrun_code <> Replace$(App_path & "\start.htm", "\\start.htm", "\start.htm") Then
            script_retrun_code = Web_Browser.LocationURL
            script_retrun_code = Script_App.Eval("OX163_Web_Browser_url(" & Chr(34) & script_retrun_code & Chr(34) & ")")
            url_temp = script_retrun_code
            url_input.Text = script_retrun_code
            buttom_enable True
        End If
    End If
    Web_Browser_header_tf = False
End Sub

Private Sub Web_Browser_DownloadBegin()
    If down_count = 0 Then
        If Web_Browser.Visible = True Then
            'buttom_enable False
            'Timer1.Enabled = True
            'Label_url.Visible = True
            'view_command.Visible = False
            'stop1.Visible = True
        End If
    End If
End Sub

Private Sub path_url(ByVal vb_kind)
    url_input.Text = Trim(url_input.Text)
    If vb_kind = vbYes Then
        If InStr(url_input.Text, "#p") > 0 Then
            url_input.Text = Mid$(url_input.Text, 1, InStr(url_input.Text, "#p") - 1)
        ElseIf Right$(url_input.Text, 1) <> "/" Then
            url_input.Text = url_input.Text & "/"
        End If
    ElseIf vb_kind = vbNo Then
        If InStr(url_input.Text, "#p") < 1 And Right$(url_input.Text, 1) <> "/" Then url_input.Text = url_input.Text & "/"
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
    
    '------------------------------调用迅雷 flashget 等脚本------------------------------
    Dim list_pic_cout As Long
    Dim script_code As String
    Dim script_code_str As String
    Dim byteTmp() As Byte
    Dim old_Name
    
    script_code_str = ""
    
    If Dir(App_path & "\include\sys\OX163_htmlst_include.vbs") <> "" Then
        script_code_str = load_Script(App_path & "\include\sys\OX163_htmlst_include.vbs")
    End If
    
    If script_code_str = "" Then script_code_str = "<script language='javascript'>function loadxunlei(){var Thunder=null;try{Thunder=new ActiveXObject('ThunderAgent.Agent')}catch(e){var Thunder=null};for(i=1;i<gPhotoID.length;i++){Thunder.AddTask4(gPhotoInfo[i][0],gPhotoInfo[i][1],'','',gPhotoInfo[i][2],-1,0,-1,gPhotoInfo[i][3],'','');};Thunder.CommitTasks2(1);};</script><input type='submit' name='xunlei' id='xunlei' value='调用迅雷下载' onclick='javascript:loadxunlei()'><br /><br />"
    
    list_pic_cout = 0
    script_code = "<script language='javascript'>var gPhotoInfo = {};var gPhotoID = [];</script>" & script_code_str
    
    '------------------------------------------------------------------------------------------
    
    Select Case sysSet.list_type
    Case 1
        'Open list_name For Binary Access Write As #1
        Open list_name For Output As #1
        Print #1, script_code
    Case 2
        Open list_name For Output As #1
        Open Left$(list_name, Len(list_name) - 4) & ".bat" For Output As #2
    Case Else
        Open list_name For Output As #1
    End Select
    
    For list_save_i = 1 To List1.ListItems.count
        DoEvents
        List1.ListItems(list_save_i).EnsureVisible
        If List1.ListItems(list_save_i).Selected = True Then List1.ListItems(list_save_i).Selected = False
        
        If List1.ListItems(list_save_i).Checked = True Then
            List1.ListItems(list_save_i).Bold = True
            List1.ListItems(list_save_i).ForeColor = vbRed
            
            '----------------------------命名规则---------------------------------
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
                Print #1, "<script language='javascript'>gPhotoID[" & list_pic_cout & "]=" & list_pic_cout & ";gPhotoInfo[" & list_pic_cout & "]=[""" & Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & """,""" & name_rules_add & Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text) & """," & fix_referer_cookies(Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text)) & "]</script>" & _
                "<a href=" & Chr(34) & Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & Chr(34) & "title=" & Chr(34) & name_rules_add & Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text) & Chr(34) & " target=_blank>" & name_rules_add & Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text) & "</a><br />" & Trim$(List1.ListItems(list_save_i).ListSubItems(2).Text) & "<br /><br />"
                
            Case 2
                old_Name = ""
                Print #1, Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & vbCrLf
                old_Name = Split(Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text), "/")
                Print #2, "rename " & Chr(34) & old_Name(UBound(old_Name)) & Chr(34) & " " & Chr(34) & name_rules_add & fix_Unicode_FileName(Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text)) & Chr(34)
                
            Case Else
                Print #1, Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & "?/" & name_rules_add & fix_Unicode_FileName(Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text))
            End Select
            
            DoEvents
            List1.ListItems(list_save_i).ForeColor = f_color
            List1.ListItems(list_save_i).Bold = False
        End If
        
    Next list_save_i
    
    Close #1
    If sysSet.list_type = 2 Then Close #2
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
    
    new_name = ""
    
    Do
        new_name = new_name & Mid(list_name, 1, InStr(list_name, "\"))
        list_name = Mid(list_name, InStr(list_name, "\") + 1)
    Loop While InStr(list_name, "\") > 0
    
    If (sysSet.openfloder = True) And (auto_shutdown_tf = False) Then
        If MsgBox("保存完成,是否打开文件夹？", vbYesNo + vbQuestion, "提醒") = vbYes Then Shell "explorer.exe " & new_name, vbNormalFocus
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
        
        runtime_Label = "正在下载图片"
        Label_url1.caption = runtime_Label
        Label_url1.Visible = True
        'Timer2.Enabled = True
        
        user_list_find.Enabled = False
        Frame_search.Visible = False
        stop2.Enabled = True
        lblProgressInfo1.Visible = True
    End If
    '------------------------------
    
    
    lblProgressInfo.Visible = True
    form_quit = False
    Form1.Icon = ico(1).Picture
    
    For i = 1 To List1.ListItems.count
        DoEvents
        Form1.caption = title_info & " - " & i & "/" & List1.ListItems.count
        TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
        If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        
        If List1.ListItems(i).Selected = True Then List1.ListItems(i).Selected = False
        
        
        If List1.ListItems(i).Checked = True And Trim$(List1.ListItems(i).ListSubItems(3).Text) <> "" Then
            
            '----------------------------命名规则---------------------------------
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
            
            
            
            download_FileName = floder_path & "\" & name_rules_add & List1.ListItems(i).ListSubItems(1).Text
            strURL = Trim$(List1.ListItems(i).ListSubItems(3).Text)
            
            If form_quit = True Then GoTo end_sub
            m_lngDocSize = 0
            old_FileSize = 0
            check_FileName
            
            If old_FileSize <> -1 Then
                download_ok = False
                Open download_FileName For Binary Access Write As #1
                retry_time = 0
                down_len = 0
                start
                Do While ((download_ok = False) Or (delay_time = True))
                    If form_quit = True Then Close #1: GoTo end_sub
                    DoEvents
                    Sleep 10
                Loop
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
    lblProgressInfo.Visible = False
    search_end
    
    'user_list---------------------
    If Frame2_Visible = True Then
        albumslist_back.Enabled = True
        user_list_output.Enabled = True
        user_list_save.Enabled = True
        
        Label_url1.Visible = False
        'Timer2.Enabled = False
        
        user_list_find.Enabled = True
        stop2.Enabled = False
        lblProgressInfo1.Visible = False
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
        If MsgBox("保存完成,是否打开文件夹？", vbYesNo + vbQuestion, "提醒") = vbYes Then Shell "explorer.exe " & floder_path, vbNormalFocus
    ElseIf auto_shutdown_tf = True Then
        ShutDownWin.Show
    End If
End Sub

Sub start()
    DoEvents
    '文件大小值复位
    Dim url_temp As String
    Dim start_time As Date
    
    On Error Resume Next
    Inet1.Cancel
    
    '定义ITC控件使用的协议为HTTP协议
    'Inet1.Protocol = icHTTP
    
    If retry_time > sysSet.retry_times + 1 Then GoTo err_end
    retry_time = retry_time + 1
    
    If retry_time = 1 Then
        
        m_lngDocSize = 0
        
new_down:
        
        check_header.Cancel
        Inet1.Cancel
        
        Do While (check_header.StillExecuting = True)
            If form_quit = True Then Exit Do
            DoEvents
            lblProgressInfo.caption = "准备获取文件信息..."
            lblProgressInfo1.caption = "准备获取文件信息..."
            Sleep 10
        Loop
        If form_quit = True Then GoTo err_end
        
        '调用Execute方法向Web服务器发送HTTP请求
        If url_Referer <> "" Then
            stop_check_header = False
            check_header.Execute Trim$(strURL), "GET", , OX_Set_Referer(url_Referer, strURL) & vbCrLf & "Range: bytes=0-1"
            
            start_time = Now
            Do
                DoEvents
                Sleep 10
                If form_quit = True Then GoTo err_end
                lblProgressInfo.caption = "获取文件信息中..."
                lblProgressInfo1.caption = "获取文件信息中..."
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
            
            Inet1.Execute Trim$(strURL), "GET", , OX_Set_Referer(url_Referer, strURL) 'User-Agent: Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)
            
        Else
            stop_check_header = False
            check_header.Execute Trim$(strURL), "GET", , "User-Agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)" & vbCrLf & "Range: bytes=0-1"
            start_time = Now
            Do
                DoEvents
                Sleep 10
                If form_quit = True Then GoTo err_end
                lblProgressInfo.caption = "获取文件信息中..."
                lblProgressInfo1.caption = "获取文件信息中..."
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
            
            Inet1.Execute Trim$(strURL), "GET", , "User-Agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)"
            
        End If
        
    Else
        download_ok = False
        
        If (5 * retry_time - 5) < sysSet.time_out Then
            lblProgressInfo.caption = "等待" & (5 * retry_time - 5) & "秒后第" & (retry_time - 1) & "次重试..."
            lblProgressInfo1.caption = lblProgressInfo.caption
            delay (5 * retry_time - 5)
        Else
            lblProgressInfo.caption = "等待" & (sysSet.time_out) & "秒后第" & (retry_time - 1) & "次重试..."
            lblProgressInfo1.caption = lblProgressInfo.caption
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
        
        If url_Referer <> "" Then
            Inet1.Execute Trim$(strURL), "GET", , OX_Set_Referer(url_Referer, strURL) & vbCrLf & "Range: bytes=" & down_len & "-"
        Else
            Inet1.Execute Trim$(strURL), "GET", , "User-Agent: Mozilla/4.0 (compatible; MSIE 5.00; Windows 98)" & vbCrLf & "Range: bytes=" & down_len & "-"
        End If
    End If
    
    Exit Sub
    
err_end:
    
    lblProgressInfo.caption = strURL & "下载失败"
    lblProgressInfo1.caption = strURL & "下载失败"
    Inet1.Cancel
    download_ok = True
    
End Sub

Sub start_fast()
    DoEvents
    '文件大小值复位
    On Error GoTo err_ctrl
    '定义ITC控件使用的协议为HTTP协议
    'fast_down.Protocol = icHTTP
    '调用Execute方法向Web服务器发送HTTP请求
    'Microsoft URL Control - 6.01.9782
    
    If start_fast_method = "" Then
        If urlpage_Referer = "" Then
            fast_down.Execute Trim$(strURL), "GET", , "User-Agent: Mozilla/4.0 (compatible; MSIE 6.00; Windows 98)"
        Else
            fast_down.Execute Trim$(strURL), "GET", , OX_Set_Referer(urlpage_Referer, strURL)
        End If
    Else
        If urlpage_Referer = "" Then
            fast_down.Execute Trim$(strURL), "POST", start_fast_method, "User-Agent: Mozilla/4.0 (compatible; MSIE 6.00; Windows 98)"
        Else
            fast_down.Execute Trim$(strURL), "POST", start_fast_method, OX_Set_Referer(urlpage_Referer, strURL)
        End If
    End If
    Exit Sub
err_ctrl:
    fast_down.Cancel
    download_ok = True
End Sub

Sub startBrowser_fast()
    DoEvents
    Dim PostData() As Byte
    On Error Resume Next
    BrowserW_url = strURL
    If start_fast_method = "" Then
        If urlpage_Referer = "" Then
            BrowserW.WebBrowser.Navigate Trim$(strURL)
        Else
            BrowserW.WebBrowser.Navigate Trim$(strURL), , , , OX_Set_Referer(urlpage_Referer, strURL)
        End If
    Else
        PostData = StrConv(start_fast_method, vbFromUnicode)
        If urlpage_Referer = "" Then
            BrowserW.WebBrowser.Navigate Trim$(strURL), , , PostData
        Else
            BrowserW.WebBrowser.Navigate Trim$(strURL), , , PostData, OX_Set_Referer(urlpage_Referer, strURL)
        End If
    End If
End Sub

Function new163_check_passcode(ByVal code_type As Boolean, ByVal check_passcode_isDown As Integer) As String
    On Error Resume Next
    new163_check_passcode = ""
    If isDown = 0 Then
        Html_Temp = new163pic_GetJs(OX_Script_Type, Replace(user_list.SelectedItem.ListSubItems(2).Text, "new163_ID_", ""), user_list.SelectedItem.ListSubItems(1).Text)
        form_quit = True
        If Html_Temp <> "" Then
            new163_check_passcode = Html_Temp
            If code_type = True Then user_list.SelectedItem.ListSubItems(2).Text = new163_check_passcode
        Else
            If MsgBox("密码不正确是否重新填写？", vbYesNo + vbExclamation, "警告") = vbYes Then menu_psw_Click
        End If
    End If
End Function

Sub start_Post(ByVal psw As String, Referer_str As String)
    DoEvents
    '文件大小值复位
    On Error GoTo err_ctrl
    '定义ITC控件使用的协议为HTTP协议
    'fast_down.Protocol = icHTTP
    '调用Execute方法向Web服务器发送HTTP请求
    fast_down.Execute Trim(strURL), "POST", psw, Referer_str 'Content-Type: application/x-www-form-urlencoded
    Exit Sub
    
err_ctrl:
    
    fast_down.Cancel
    
    download_ok = True
End Sub

Sub start_User(ByVal username, ByVal psw As String)
    DoEvents
    '文件大小值复位
    On Error GoTo err_ctrl
    
    '定义ITC控件使用的协议为HTTP协议
    'fast_down.Protocol = icHTTP
    '调用Execute方法向Web服务器发送HTTP请求
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
    
    Dim count As Integer, filename_len As Integer
    Dim path_filename As String, temp_filename As String, text_sortname As String
    Dim dir_tf
    filename_len = 250
    temp_filename = download_FileName
    '---------------------------------------------------------
    path_filename = ""
    path_filename = Mid(download_FileName, 1, InStrRev(download_FileName, "\")) '取得文件路径：path_filename
    temp_filename = Mid(temp_filename, InStrRev(temp_filename, "\") + 1) '单独文件名：temp_filename
    '-------------------------------------------------------------------
    text_sortname = GetShortName(path_filename)
    If Right(text_sortname, 1) <> "\" Then text_sortname = text_sortname & "\"
    path_filename = text_sortname '取得文件短路径：path_filename
    
    '检查过长文件名
    If InStrRev(temp_filename, ".") > 1 Then
        '单独文件名(无后缀)
        s_filename = Mid$(temp_filename, 1, InStrRev(temp_filename, ".") - 1)
        '文件后缀
        end_filename = Mid$(temp_filename, InStrRev(temp_filename, "."))
    Else
        s_filename = temp_filename
        end_filename = ""
    End If
    
    If Len(end_filename) > 11 Then
        s_filename = s_filename & end_filename
        end_filename = ""
    End If
    
    If sysSet.Unicode_File = 0 Then
        s_filename = fix_Unicode_FileName(s_filename) '修复含有unicode字符的文件名
        If Left(s_filename, 1) = "." Then s_filename = "_" & Mid$(s_filename, 2)
        
        end_filename = fix_Unicode_FileName(end_filename) '修复含有unicode字符的文件名
        If Right(end_filename, 1) = "." Then end_filename = Mid$(end_filename, 1, Len(end_filename) - 1) & "_"
    End If
    
    '-------------------判断文件名长度--------------------------
re_len:
    temp_filename = ""
    Do While LenB(s_filename & end_filename) > filename_len
        DoEvents
        temp_filename = "~"
        s_filename = Left$(s_filename, Len(s_filename) - 1)
    Loop
    If temp_filename <> "" Then s_filename = s_filename & temp_filename
    
    temp_filename = path_filename & s_filename & end_filename '创建完整文件路径
    
    err.Clear
    dir_tf = Dir(path_filename & String(LenB(s_filename), "x") & end_filename) 'Dir完整文件路径，如果出错，表示win不能创建该文件
    If err.Number <> 0 And filename_len > 2 Then
        filename_len = filename_len - 1
        GoTo re_len
    ElseIf err.Number <> 0 And filename_len <= 2 Then
        download_FileName = ""
        download_FileFullName = ""
        Exit Sub
    End If
    '-----------------------------------------------------------
    
    err.Clear
    If OX_Dirfile(temp_filename) = True And sysSet.file_compare = 2 Then
        old_FileSize = -1
        download_FileName = ""
        download_FileFullName = ""
        Exit Sub
    ElseIf OX_Dirfile(temp_filename) = True And sysSet.file_compare = 1 Then 'file_compare已存在文件对比
        old_FileSize = FileLen(GetShortName(temp_filename))
    Else
        old_FileSize = 0
    End If
    '---------------------------------------------------------检查文件名重复
    count = 0
restart:
    DoEvents
    count = count + 1
    If count > 20000 Then MsgBox "该文件相似文件名超过20000，请整理！", vbOKOnly, "警告": form_quit = True: Exit Sub
    
    If OX_Dirfile(temp_filename) = True Then
        temp_filename = path_filename & s_filename & "(" & count & ")" & end_filename
        GoTo restart
    End If
    
    If OX_GreatFile(temp_filename) = True Then
        download_FileName = GetShortName(temp_filename)
    Else
        download_FileName = ""
        download_FileFullName = ""
    End If
    'download_FileName = temp_filename
End Sub

Private Sub delay(n As Integer)
    On Error Resume Next
    delay_time = True
    Dim start_time As Date
    start_time = Now
    DoEvents
    Do While DateDiff("s", start_time, Now()) < n
        Sleep 100
        If form_quit = True Then Exit Do
        DoEvents
    Loop
    DoEvents
    delay_time = False
End Sub

Private Sub user_open()
    On Error Resume Next
    user_list.ListItems.Clear
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
    
    runtime_Label = "正在下载" & url_input.Text & "相册列表"
    Label_url1.caption = runtime_Label
    Label_url1.Visible = True
    'Timer2.Enabled = True
    Form1.Icon = ico(1).Picture
    
    '判断163相册是否改版
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
    
    '>你试图访问的相册地址不存在，请检查你输入的地址是否正确。<
    ', albumUrl : '
    Html_Temp = Replace(Html_Temp, " ", "")
    '------------------------------------------------------------------------------
    '------------------------------------------------------------------------------
    '------------------------------------------------------------------------------
    If InStr(Html_Temp, "albumUrl:'") > 0 Then
        '新相册模式--------------------------------------------------------------------
        pass_code = "new163_pass"
        ', albumUrl : 'http://s1.photo.163.com/xu47UZNLlyzc91_-vcTcRw==/139048638495096616.js',
        fast_down.Cancel
        
        Html_Temp = Mid$(Html_Temp, InStr(Html_Temp, "albumUrl:'") + Len("albumUrl:'"))
        strURL = Mid$(Html_Temp, 1, InStr(Html_Temp, "'") - 1) & "?" & Int(Timer() * 100000)
        Html_Temp = ""
        
        download_ok = False
        start_fast
        
        Do While download_ok = False
            If form_quit = True Then GoTo end_user_open
            DoEvents
            Sleep 10
            DoEvents
        Loop
        
        '----------------定义url文件名----------------------------------------------------
        url_file_name = rename_URL("http://photo.163.com/" & url_input.Text & "/")
        pw_163 = App_path & "\url\" & url_file_name
        
        If Dir(pw_163) <> "" Then
            pw_file_tf = True
        Else
            pw_file_tf = False
        End If
        '----------------列表相册----------------------------------------------------
        
        If InStr(Html_Temp, "=[{id:") > 0 Then
            runtime_Label = "正在分析" & url_input.Text & "相册列表"
            Label_url1.caption = runtime_Label
            
            'var g_a$514028s='1187485;1187484;1187472;1187470;1187468;1187464;1187460;1187457;1187456;1187453;1530930;';
            'var g_a$514028d=[{id:
            '1187468,name:'虫袄 虫师二十景 漆原友纪画集 ',s:3,desc:'蟲師二十景 漆原友紀画集',st:1,au:0,count:14,t:1220710254100,ut:0,curl:'396/HjWuimtpsp-486EMHXLQ3A==/3070610520936616491.jpg',surl:'396/OO0u-aWixlqZ2iVH5rT2vg==/3070610520936616515.jpg',dmt:1220924333238,alc:true,comm:'',comdmt:0,kw:'',purl:'s1.photo.163.com/2vNO5QX8iwqKXVr2xX2Oiw==/72620543991354232.js'
            '},{id:
            '1530930,name:'password_text',s:0,desc:'password_text',st:1,au:1,count:0,t:1221048756165,ut:0,curl:'',surl:'',dmt:1221583000801,alc:true,comm:'',comdmt:0,kw:'',purl:''}];
            
            
            Html_Temp = Replace$(Replace$(Html_Temp, Chr(13), ""), Chr(10), "")
            
            
            Html_Temp = Mid$(Html_Temp, InStr(Html_Temp, "=[{id:") + 6) '定位到第一个相册的ID头
            Html_Temp = Mid$(Html_Temp, 1, InStr(Html_Temp, "'}];") - 1) '定位最后一个相册
            
            albumsINFO = Split(Html_Temp, "'},{id:")
            
            Html_Temp = ""
            
            iCount = UBound(albumsINFO)
            
            For cout_num = 0 To iCount
                DoEvents
                '1187484,
                'name:'Emma(MaxFactory)2007-2-48',
                's:3,desc:'Emma(MaxFactory)(2007-4-28)\r\n英国恋物语 艾玛\r\n英國戀物語エマ',
                'st:1,au:0,count:24,t:1220710254259,ut:0,curl:'463/zCkQnRZRsGTajD3mPmWbPg==/2529052665745287561.jpg',surl:'463/WSgM5FA6TcNz6wDpA5Lygg==/2529052665745287567.jpg',
                'dmt:1415505726,alc:true,comm:'',comdmt:0,kw:'',
                'purl:'s1.photo.163.com/F_NKGYPejc2IEsiRlW6glw==/46443371157270973.js
                
                '2012/9/12
                '1530930,name:'没&东西了',s:0,desc:'没东西了',st:1,au:1,count:0,t:1221048756165,ut:0,cvid:0,curl:'',surl:'',lurl:'',dmt:0,alc:true,kw:'',purl:'
                temp(0) = Mid$(albumsINFO(cout_num), InStr(albumsINFO(cout_num), ",name:'") + 7)
                temp(3) = temp(0)
                
                temp(0) = Trim(Mid$(temp(0), 1, InStr(temp(0), "'") - 1))
                If temp(0) = "" Then temp(0) = url_input.Text & "[Noname_Albums]"
                
                
                temp(3) = Mid$(temp(3), InStr(temp(3), "'") + 1)
                temp(3) = Mid$(temp(3), InStr(temp(3), ",desc:'") + 7)
                temp(2) = temp(3)
                temp(1) = temp(3)
                
                temp(3) = Trim(Mid$(temp(3), 1, InStr(temp(3), "'") - 1))
                
                temp(1) = Mid$(temp(1), InStr(temp(1), "'") + 1)
                temp(1) = Mid$(temp(1), InStr(temp(1), "au:") + 3)
                temp(4) = temp(1)
                temp(1) = Trim(Mid$(temp(1), 1, InStr(temp(1), ",") - 1))
                
                temp(2) = Mid$(temp(2), InStr(temp(2), "'") + 1)
                temp(2) = Mid$(temp(2), InStr(temp(2), "count:") + 6)
                temp(2) = Trim(Mid$(temp(2), 1, InStr(temp(2), ",") - 1))
                If IsNumeric(temp(2)) Then
                    temp(2) = Format$(temp(2), "00000") & "张"
                Else
                    temp(2) = ""
                End If
                
                albumsID = ""
                albumsID = "new163_ID_" & Mid$(albumsINFO(cout_num), 1, InStr(albumsINFO(cout_num), ",") - 1)
                '                albumsID = Trim(Mid$(albumsINFO(cout_num), InStrRev(albumsINFO(cout_num), "'") + 1))
                '                If albumsID = "" Then
                '                    albumsID = "new163_ID_" & Mid$(albumsINFO(cout_num), 1, InStr(albumsINFO(cout_num), ",") - 1)
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
                    If temp(1) = "" Then temp(1) = "请填写密码............" & vbCrLf & ".........."
                Else
                    temp(1) = ""
                End If
                
                'book_name temp(0)
                user_list.ListItems.Add cout_num + 1, , fix_Code(unicode2asc(temp(0)))
                'book_psw temp(1)
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , temp(1)
                'book_ID
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , albumsID
                'book_number temp(2)
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , temp(2)
                'book_disc temp(3)
                user_list.ListItems.Item(cout_num + 1).ListSubItems.Add , , Format$(cout_num + 1, "00000") & " - " & Str_unicode_Ctrl(fix_Code(unicode2asc(temp(3))))
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
    Label_url1.Visible = False
    
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
    
    
    '----------------创建url文件名---------------------------------------
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
    runtime_Label = "正在分析相册列表"
    Label_url1.caption = runtime_Label
    Label_url1.Visible = True
    'Timer2.Enabled = True
    Form1.Icon = ico(1).Picture
    setProgram.Enabled = False
    user_list_find.Enabled = False
    Frame_search.Visible = False
    stop2.Enabled = True
    list_back1.Enabled = False
    out_all.Enabled = False
    save_all.Enabled = False
    list_check.Enabled = False
    lblProgressInfo1.Visible = True
    
    floder_path = floder_path & "\" & reName_Str(OX_Script_Type)
    MkDir floder_path
    
    If sysSet.url_folder = True Then
        floder_path = floder_path & "\" & rename_URL(url_input.Text)
        MkDir floder_path
        text_sortname = GetShortName(floder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid$(text_sortname, 1, Len(text_sortname) - 1)
        floder_path = text_sortname
    End If
    
    Open_path = floder_path
    
    '-----------------------------------------------------------------------
    '检查新163相册密码和验证码----------------------------------------------
    '-----------------------------------------------------------------------
    If is_username(OX_Script_Type) = True And user_list.ListItems(1).ListSubItems(2).Text Like "new163_ID_?*" Then
        
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(2).Text Like "new163_ID_?*" And user_list.ListItems(i).Checked = True And user_list.ListItems(i).ListSubItems(1).Text <> "" Then
                
                user_list.ListItems(i).EnsureVisible '显示到该行
                user_list.ListItems(i).Bold = True
                
                If user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." And sysSet.change_psw = True Then
                    If MsgBox("正在下载的相册中有加密相册，是否填写密码？", vbYesNo, "询问") = vbYes Then
retry_new_password:
                        Form1.Enabled = False
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.password_win_title.caption = "相册 """ & Replace(user_list.ListItems(i).Text, "&", "&&") & """ 的" & password_win.password_win_title.caption
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                    Else
                        If MsgBox("您是否忽略所有未填写密码或密码错误的相册？", vbYesNo, "询问") = vbYes Then
                            user_list.ListItems(i).Bold = False
                            Exit For
                        Else
                            GoTo next_new_password
                        End If
                    End If
                End If
                
                Html_Temp = ""
                Html_Temp = new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(2).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(1).Text)
                
                If Html_Temp = "" And sysSet.change_psw = True Then
                    If MsgBox("密码不正确是否重新填写？", vbYesNo + vbExclamation, "警告") = vbYes Then
                        If user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(1).Text
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
    '下载列表默认页面代码---------------------------------------------------
    '-----------------------------------------------------------------------
    If Dir(App_path & "\include\sys\OX163_htmlst_include.vbs") <> "" Then
        script_code_str = load_Script(App_path & "\include\sys\OX163_htmlst_include.vbs")
    End If
    
    If script_code_str = "" Then script_code_str = "<script language='javascript'>function loadxunlei(){var Thunder=null;try{Thunder=new ActiveXObject('ThunderAgent.Agent')}catch(e){var Thunder=null};for(i=1;i<gPhotoID.length;i++){Thunder.AddTask4(gPhotoInfo[i][0],gPhotoInfo[i][1],'','',gPhotoInfo[i][2],-1,0,-1,gPhotoInfo[i][3]);};Thunder.CommitTasks2(1);};</script><input type='submit' name='xunlei' id='xunlei' value='调用迅雷下载' onclick='javascript:loadxunlei()'><br /><br />"
    script_code = "<script language='javascript'>var gPhotoInfo = {};var gPhotoID = [];</script>" & script_code_str
    '-----------------------------------------------------------------------
    '-----------------------------------------------------------------------
    
    For i = 1 To user_list.ListItems.count
        DoEvents
        If form_quit = True Then GoTo end_sub
        
        '进度描述---------------------------------------------------------------
        Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count
        TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
        If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        '-----------------------------------------------------------------------
        '格式清理---------------------------------------------------------------
        If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Selected = False
        If Trim(user_list.ListItems(i).ListSubItems(2).Text) = "" Then user_list.ListItems(i).Checked = False
        '-----------------------------------------------------------------------
        '正式下载---------------------------------------------------------------
        If user_list.ListItems(i).Checked = True Then
            user_list.ListItems(i).EnsureVisible
            user_list.ListItems(i).Bold = True
            fast_down.Cancel
            
            '-----------------------------------------------------------------------
            '检查相册密码-----------------------------------------------------------
            '-----------------------------------------------------------------------
            If user_list.ListItems(i).ListSubItems(1).Text <> "" Then
                
                '跳过新163相册密码检查-----------------------------------------------
                If is_username(OX_Script_Type) = True And user_list.SelectedItem.ListSubItems(2).Text Like "new163_ID_?*" And user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." Then GoTo end_one
                If is_username(OX_Script_Type) = True And user_list.SelectedItem.ListSubItems(2).Text Like "new163_ID_?*" Then GoTo new163_password_OK
                '--------------------------------------------------------------------
                
restar_psw: '重试密码----------------------------------------------------------------
                If user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then
                    url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(2).Text))
                    If url_temp = "" Then GoTo end_one
                    pass_accept = check_album_password(url_temp, user_list.ListItems(i).ListSubItems(1).Text)
                End If
                
retry_psw: '重填密码----------------------------------------------------------------
                If (pass_accept = False Or user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & "..........") And sysSet.change_psw = True Then
                    If MsgBox("相册 " & user_list.ListItems(i).Text & " 的密码不正确，是否重新填写密码？", vbYesNo + vbExclamation, "警告") = vbYes Then
                        Form1.Enabled = False
                        If user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(1).Text
                        password_win.password_win_title.caption = "相册 """ & Replace(user_list.ListItems(i).Text, "&", "&&") & """ 的" & password_win.password_win_title.caption
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                        If pw_163 <> "" Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(2).Text), user_list.ListItems(i).ListSubItems(1).Text, pw_163
                        GoTo restar_psw
                    End If
                End If
            End If
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            
new163_password_OK:
            '-----------------------------------------------------------------------------------------------------
            '开始下载文件列表-------------------------------------------------------------------------------------
            '-----------------------------------------------------------------------------------------------------
            lblProgressInfo1.caption = "正在分析相册"
            List1.ListItems.Clear
            
            'old 163-----------------------------------------------------------------------------------------------------
            'If is_username(OX_Script_Type) = True And IsNumeric(user_list.ListItems(i).ListSubItems(2).Text) = True Then
            '    If user_list.ListItems(i).ListSubItems(1).Text <> "" Then
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(2).Text, "&from=guest"
            '    Else
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(2).Text, ""
            '    End If
            '------------------------------------------------------------------------------------------------------------
            
            If is_username(OX_Script_Type) = True And user_list.ListItems(i).ListSubItems(2).Text Like "new163_ID_?*" Then
                strURL = Trim(new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(2).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(1).Text))
                If strURL = "" Then GoTo end_one
                Call new163pic_listPhotoUrl
            Else
                url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(2).Text))
                If url_temp = "" Then GoTo end_one
                '!!!!!没有把密码值赋给函数，如果该网站密码不是通过session判断，那么前一次check_album_password就会无效（一般网站都是可以的）
                Call list_photo_script(url_temp)
                If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
            End If
            '------------------------------------------------------------------------------------
            If List1.ListItems.count = 0 Then GoTo end_one
            If user_list.ListItems(i).ListSubItems(5).Text <> "" Then albums_checked_pic user_list.ListItems(i).ListSubItems(5).Text
            
            '----------------------------------------------------------------
            '创建文件--------------------------------------------------------
            '----------------------------------------------------------------
            If out_lst_type_tf = False Then
                '每个相册单个下载列表
                out_lst_file_name = floder_path & "\" & reName_Str(user_list.ListItems(i).Text)
                '每次重置计数
                list_pic_cout = 0
            Else
                '所有相册一个下载列表
                out_lst_file_name = floder_path & "\" & reName_Str(OX_Script_Type & "_in_all(" & Now() & ")")
            End If
            
            If list_pic_cout = 0 Then
                Select Case sysSet.list_type
                Case 1
                    download_FileName = out_lst_file_name & ".htm"
                    check_FileName
                    'Open download_FileName For Binary Access Write As #1
                    Open download_FileName For Output As #1
                    Print #1, script_code & "<font color=red>" & user_list.ListItems(i).Text & "</font><br /><br />"
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
                Print #1, "<font color=red>" & user_list.ListItems(i).Text & "</font><br /><br />"
            End If
            '-------------------------------------------------------------------
            '----------------------------------------------------------------
            '----------------------------------------------------------------
            
            lblProgressInfo1.caption = "正在下载" & Chr(13) & download_FileName
            
            For list_save_i = 1 To List1.ListItems.count
                DoEvents
                Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count & " - " & list_save_i & "/" & List1.ListItems.count
                
                If List1.ListItems(list_save_i).Checked = True Then
                    
                    '----------------------------命名规则---------------------------------
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
                        Print #1, "<script language='javascript'>gPhotoID[" & list_pic_cout & "]=" & list_pic_cout & ";gPhotoInfo[" & list_pic_cout & "]=[""" & Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & """,""" & name_rules_add & Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text) & """," & fix_referer_cookies(Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text)) & "]</script>" & _
                        "<a href=" & Chr(34) & Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & Chr(34) & "title=" & Chr(34) & name_rules_add & Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text) & Chr(34) & " target=_blank>" & name_rules_add & Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text) & "</a><br />" & Trim$(List1.ListItems(list_save_i).ListSubItems(2).Text) & "<br /><br />"
                        
                    Case 2
                        old_Name = ""
                        list_pic_cout = list_pic_cout + 1
                        Print #1, Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & vbCrLf
                        old_Name = Split(Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text), "/")
                        Print #2, "rename " & Chr(34) & old_Name(UBound(old_Name)) & Chr(34) & " " & Chr(34) & name_rules_add & fix_Unicode_FileName(Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text)) & Chr(34)
                        
                    Case Else
                        list_pic_cout = list_pic_cout + 1
                        Print #1, Trim$(List1.ListItems(list_save_i).ListSubItems(3).Text) & "?/" & name_rules_add & fix_Unicode_FileName(Trim$(List1.ListItems(list_save_i).ListSubItems(1).Text))
                    End Select
                    
                    DoEvents
                End If
                
            Next list_save_i
            
            DoEvents
            If form_quit = True Then GoTo end_sub
            
            
end_one:
            '--------------------------不合并文件导出表，关闭保存文件-----------------------------------------
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
    
    lblProgressInfo1.caption = ""
    lblProgressInfo1.Visible = False
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
    Label_url1.Visible = False
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
        If MsgBox("保存完成,是否打开文件夹？", vbYesNo + vbQuestion, "提醒") = vbYes Then Shell "explorer.exe " & floder_path, vbNormalFocus
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
    runtime_Label = "正在分析相册列表"
    Label_url1.caption = runtime_Label
    Label_url1.Visible = True
    'Timer2.Enabled = True
    Form1.Icon = ico(1).Picture
    setProgram.Enabled = False
    stop2.Enabled = True
    user_list_find.Enabled = False
    Frame_search.Visible = False
    list_back1.Enabled = False
    out_all.Enabled = False
    save_all.Enabled = False
    list_check.Enabled = False
    lblProgressInfo1.Visible = True
    
    
    floder_path = floder_path & "\" & reName_Str(OX_Script_Type)
    MkDir floder_path
    
    If sysSet.url_folder = True Then
        floder_path = floder_path & "\" & rename_URL(url_input.Text)
        MkDir floder_path
        text_sortname = GetShortName(floder_path)
        If Right(text_sortname, 1) = "\" Then text_sortname = Mid$(text_sortname, 1, Len(text_sortname) - 1)
        floder_path = text_sortname
    End If
    
    Open_path = floder_path
    
    '-----------------------------------------------------------------------
    '检查新163相册密码和验证码----------------------------------------------
    '-----------------------------------------------------------------------
    If is_username(OX_Script_Type) = True And user_list.ListItems(1).ListSubItems(2).Text Like "new163_ID_?*" Then
        
        For i = 1 To user_list.ListItems.count
            DoEvents
            If user_list.ListItems(i).ListSubItems(2).Text Like "new163_ID_?*" And user_list.ListItems(i).Checked = True And user_list.ListItems(i).ListSubItems(1).Text <> "" Then
                
                user_list.ListItems(i).EnsureVisible '显示到该行
                user_list.ListItems(i).Bold = True
                
                If user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." And sysSet.change_psw = True Then
                    If MsgBox("正在下载的相册中有加密相册，是否填写密码？", vbYesNo, "询问") = vbYes Then
retry_new_password:
                        Form1.Enabled = False
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.password_win_title.caption = "相册 """ & Replace(user_list.ListItems(i).Text, "&", "&&") & """ 的" & password_win.password_win_title.caption
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                    Else
                        If MsgBox("您是否忽略所有未填写密码或密码错误的相册？", vbYesNo, "询问") = vbYes Then
                            user_list.ListItems(i).Bold = False
                            Exit For
                        Else
                            GoTo next_new_password
                        End If
                    End If
                End If
                
                Html_Temp = ""
                Html_Temp = new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(2).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(1).Text)
                
                If Html_Temp = "" And sysSet.change_psw = True Then
                    If MsgBox("密码不正确是否重新填写？", vbYesNo + vbExclamation, "警告") = vbYes Then
                        If user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(1).Text
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
        
        '进度描述---------------------------------------------------------------
        Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count
        TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
        If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
        '-----------------------------------------------------------------------
        '格式清理---------------------------------------------------------------
        If user_list.ListItems(i).Selected = True Then user_list.ListItems(i).Selected = False
        If Trim(user_list.ListItems(i).ListSubItems(2).Text) = "" Then user_list.ListItems(i).Checked = False
        '-----------------------------------------------------------------------
        '正式下载---------------------------------------------------------------
        If user_list.ListItems(i).Checked = True Then
            user_list.ListItems(i).EnsureVisible
            user_list.ListItems(i).Bold = True
            fast_down.Cancel
            
            '建立相册文件夹-----------------------------------------------------
            'if then
            MkDir floder_path & "\" & reName_Str(user_list.ListItems(i).Text)
            If is_username(OX_Script_Type) = True And IsNumeric(user_list.ListItems(i).ListSubItems(2).Text) = True Then
                MkDir floder_path & "\" & reName_Str(user_list.ListItems(i).Text) & "\albums_" & user_list.ListItems(i).ListSubItems(2).Text
            End If
            
            If form_quit = True Then GoTo end_sub
            
            'Else
            '   MkDir floder_path & "\" & rename_str(user_list.ListItems(i).Text) & Format$(Now, "_YYYYMMDD_HHMMNN")
            'End If
            'download_FileName = floder_path & "\" & rename_str(user_list.ListItems(i).Text) & ".txt"
            'check_FileName
            '-------------------------------------------------------------------
            
            '-----------------------------------------------------------------------
            '检查相册密码-----------------------------------------------------------
            '-----------------------------------------------------------------------
            If user_list.ListItems(i).ListSubItems(1).Text <> "" Then
                
                '跳过新163相册密码检查-----------------------------------------------
                If is_username(OX_Script_Type) = True And user_list.SelectedItem.ListSubItems(2).Text Like "new163_ID_?*" And user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & ".........." Then GoTo end_one
                If is_username(OX_Script_Type) = True And user_list.SelectedItem.ListSubItems(2).Text Like "new163_ID_?*" Then GoTo new163_password_OK
                '--------------------------------------------------------------------
                
restar_psw: '重试密码----------------------------------------------------------------
                If user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then
                    url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(2).Text))
                    If url_temp = "" Then GoTo end_one
                    pass_accept = check_album_password(url_temp, user_list.ListItems(i).ListSubItems(1).Text)
                End If
                
retry_psw: '重填密码----------------------------------------------------------------
                If (pass_accept = False Or user_list.ListItems(i).ListSubItems(1).Text = "请填写密码............" & vbCrLf & "..........") And sysSet.change_psw = True Then
                    If MsgBox("相册 " & user_list.ListItems(i).Text & " 的密码不正确，是否重新填写密码？", vbYesNo + vbExclamation, "警告") = vbYes Then
                        Form1.Enabled = False
                        If user_list.ListItems(i).ListSubItems(1).Text <> "请填写密码............" & vbCrLf & ".........." Then password_win.Text1.Text = user_list.ListItems(i).ListSubItems(1).Text
                        password_win.password_win_title.caption = "相册 """ & Replace(user_list.ListItems(i).Text, "&", "&&") & """ 的" & password_win.password_win_title.caption
                        password_win.isDown = i
                        password_win.Combo1.Visible = False
                        password_win.Show
                        Do While Form1.Enabled = False
                            DoEvents
                            Sleep 10
                        Loop
                        If pw_163 <> "" Then WriteUnicodeIni "password", rename_ini_str(user_list.ListItems(i).ListSubItems(2).Text), user_list.ListItems(i).ListSubItems(1).Text, pw_163
                        GoTo restar_psw
                    End If
                End If
            End If
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            '-----------------------------------------------------------------------
            
new163_password_OK:
            '-----------------------------------------------------------------------------------------------------
            '开始下载文件列表-------------------------------------------------------------------------------------
            '-----------------------------------------------------------------------------------------------------
            lblProgressInfo1.caption = "正在分析相册"
            List1.ListItems.Clear
            
            'old 163-----------------------------------------------------------------------------------------------------
            'If is_username(OX_Script_Type) = True And IsNumeric(user_list.ListItems(i).ListSubItems(2).Text) = True Then
            '    If user_list.ListItems(i).ListSubItems(1).Text <> "" Then
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(2).Text, "&from=guest"
            '    Else
            '        list_163pic OX_Script_Type, user_list.ListItems(i).ListSubItems(2).Text, ""
            '    End If
            '------------------------------------------------------------------------------------------------------------
            
            If is_username(OX_Script_Type) = True And user_list.ListItems(i).ListSubItems(2).Text Like "new163_ID_?*" Then
                strURL = Trim(new163pic_GetJs(OX_Script_Type, Replace(user_list.ListItems(i).ListSubItems(2).Text, "new163_ID_", ""), user_list.ListItems(i).ListSubItems(1).Text))
                If strURL = "" Then GoTo end_one
                Call new163pic_listPhotoUrl
            Else
                url_temp = check_Include(Trim(user_list.ListItems(i).ListSubItems(2).Text))
                If url_temp = "" Then GoTo end_one
                '!!!!!没有把密码值赋给函数，如果该网站密码不是通过session判断，那么前一次check_album_password就会无效（一般网站都是可以的）
                Call list_photo_script(url_temp)
                If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
            End If
            '------------------------------------------------------------------------------------
            
            If List1.ListItems.count = 0 Then GoTo end_one
            If user_list.ListItems(i).ListSubItems(5).Text <> "" Then albums_checked_pic user_list.ListItems(i).ListSubItems(5).Text
            
            '保存列表中的图片------------------------------------
            
            runtime_Label = "正在保存图片"
            Label_url1.caption = runtime_Label
            user_list.ListItems(i).ListSubItems(3).Text = Format$(List1.ListItems.count, "00000") & "张"
            user_list.ListItems(i).ListSubItems(3).ForeColor = vbRed
            user_list.ListItems(i).ListSubItems(3).Bold = True
            user_list.ListItems(i).ListSubItems(3).Text = "0/" & user_list.ListItems(i).ListSubItems(3).Text
            '------------------------------------------------------------------------------------
            For save_img_i = 1 To List1.ListItems.count
                DoEvents
                Form1.caption = title_info & " - " & i & "/" & user_list.ListItems.count & " - " & save_img_i & "/" & List1.ListItems.count
                TrayI.szTip = StrConv(Form1.caption & vbNullChar, vbUnicode)
                If now_tray = True Then TrayI.uFlags = NIF_TIP: Call Shell_NotifyIcon(NIM_MODIFY, TrayI)
                
                user_list.ListItems(i).ListSubItems(3).Text = save_img_i & Mid$(user_list.ListItems(i).ListSubItems(3).Text, InStr(user_list.ListItems(i).ListSubItems(3).Text, "/"))
                
                If List1.ListItems(save_img_i).Checked = True And Trim$(List1.ListItems(i).ListSubItems(3).Text) <> "" Then
                    
                    '----------------------------命名规则---------------------------------
                    Select Case rename_rules_val
                    Case 0
                        name_rules_add = ""
                    Case 1
                        name_rules_add = Format((0 + save_img_i), "00000") & "_"
                    Case 2
                        name_rules_add = Format((List1.ListItems.count + 1 - save_img_i), "00000") & "_"
                    End Select
                    '-----------------------------------------------------------------
                    
                    If is_username(OX_Script_Type) = True And IsNumeric(user_list.ListItems(i).ListSubItems(2).Text) = True Then
                        download_FileName = floder_path & "\" & reName_Str(user_list.ListItems(i).Text) & "\albums_" & user_list.ListItems(i).ListSubItems(2).Text & "\" & name_rules_add & List1.ListItems(save_img_i).ListSubItems(1).Text
                    Else
                        download_FileName = floder_path & "\" & reName_Str(user_list.ListItems(i).Text) & "\" & name_rules_add & List1.ListItems(save_img_i).ListSubItems(1).Text
                    End If
                    
                    If form_quit = True Then GoTo end_sub
                    
                    m_lngDocSize = 0
                    old_FileSize = 0
                    Call check_FileName
                    
                    If old_FileSize <> -1 Then
                        
                        strURL = Trim$(List1.ListItems(save_img_i).ListSubItems(3).Text)
                        
                        download_ok = False
                        Open download_FileName For Binary Access Write As #1
                        retry_time = 0
                        down_len = 0
                        start
                        
                        Do While ((download_ok = False) Or (delay_time = True))
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
            user_list.ListItems(i).ListSubItems(3).Text = Mid$(user_list.ListItems(i).ListSubItems(3).Text, InStr(user_list.ListItems(i).ListSubItems(3).Text, "/") + 1)
            user_list.ListItems(i).ListSubItems(3).ForeColor = f_color
            user_list.ListItems(i).ListSubItems(3).Bold = False
            user_list.ListItems(i).Bold = False
        End If
        
    Next i
    
end_sub:
    user_list.ListItems(i).ListSubItems(3).Text = Mid$(user_list.ListItems(i).ListSubItems(3).Text, InStr(user_list.ListItems(i).ListSubItems(3).Text, "/") + 1)
    user_list.ListItems(i).ListSubItems(3).ForeColor = f_color
    user_list.ListItems(i).ListSubItems(3).Bold = False
    user_list.ListItems(i).Bold = False
    
    lblProgressInfo1.caption = ""
    lblProgressInfo1.Visible = False
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
    Label_url1.Visible = False
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
        If MsgBox("保存完成,是否打开文件夹？", vbYesNo + vbQuestion, "提醒") = vbYes Then Shell "explorer.exe " & floder_path, vbNormalFocus
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
    If Text = "" Or Text = "完成" Or Text = LCase("completed") Then
        StatusBar.Panels(2) = show_inform(0)
    Else
        StatusBar.Panels(2) = Text
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


Private Sub Web_Search_BeforeNavigate2(ByVal pDisp As Object, URL As Variant, flags As Variant, TargetFrameName As Variant, PostData As Variant, Headers As Variant, Cancel As Boolean)
    On Error Resume Next
    If new_win = True Then
        new_win = False
        Cancel = True
        If Form1.WindowState = 2 Then
            Shell "OX163.exe " & URL & vbCrLf & "0|0|0|0" & vbCrLf & Web_Browser.LocationURL
        Else
            Shell "OX163.exe " & URL & vbCrLf & Form1.Top & "|" & Form1.Left & "|" & Form1.Width & "|" & Form1.Height & vbCrLf & Web_Browser.LocationURL
        End If
        Exit Sub
    End If
End Sub


Private Sub Web_Search_NewWindow2(ppDisp As Object, Cancel As Boolean)
    On Error Resume Next
    Web_Browser.Height = Web_Search.Height - Web_Toolbar.Height
    web_Picture.Visible = True
    Web_Browser.Visible = True
    Set ppDisp = Web_Browser.Object
    Web_Search.Visible = False
End Sub

'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
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
    
    runtime_Label = "正在进行伪图检查..."
    Label_url.caption = runtime_Label
    Label_url1.caption = runtime_Label
    
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
            If InStr(LCase$(List1.ListItems(i).ListSubItems(1).Text), LCase$("." & name_list(j))) > 1 And is_fileName(name_list(j)) Then
                rar_type = "." & name_list(j)
                Exit For
            End If
        Next j
        
        If rar_type <> "" Then
            
            If a = False And sysSet.fix_rar = 2 Then
                If MsgBox("图片可能为" & Mid$(rar_type, 2) & "伪图，是否进行重命名？", vbYesNo, "询问") = vbNo Then List1.ListItems(1).EnsureVisible: Exit Sub
            End If
            
            a = True
            
            file_type = Mid$(List1.ListItems(i).ListSubItems(1).Text, InStr(LCase$(List1.ListItems(i).ListSubItems(1).Text), LCase$(rar_type)) + Len(rar_type))
            If LCase$(file_type) = ".jpg" Or LCase$(file_type) = ".gif" Or LCase$(file_type) = ".jpeg" Or LCase$(file_type) = ".bmp" Then
                List1.ListItems(i).ListSubItems(1).Text = Left$(List1.ListItems(i).ListSubItems(1).Text, InStr(LCase$(List1.ListItems(i).ListSubItems(1).Text), LCase$(rar_type)) + Len(rar_type) - 1)
            End If
        End If
    Next i
    List1.ListItems(1).EnsureVisible
End Sub

Private Function fix_referer_cookies(ByVal referer_cookies As String) As String
    On Error Resume Next
    fix_referer_cookies = """"","""""
    
    Dim Referer_temp As String
    Dim a As String
    Dim b As String
    a = ""
    b = ""
    
    If url_Referer <> "" Then
        Referer_temp = Trim(url_Referer)
        If InStr(LCase(Referer_temp), "cookie:") = 1 Or InStr(LCase(Referer_temp), vbCrLf & "cookie:") > 0 Then
            b = Mid$(Referer_temp, InStr(LCase(Referer_temp), "cookie: "))
            b = Mid$(b, 1, InStr(b, vbCrLf) - 1)
            b = Mid$(b, InStr(LCase(b), "cookie:") + 8)
            Referer_temp = Replace(Referer_temp, 1, InStr(LCase(b), "cookie:") - 1) & Mid$(Referer_temp, InStr(LCase(b), "cookie:") + 8)
        End If
        
        Referer_temp = OX_Set_Referer(Referer_temp, strURL)
        If InStr(LCase(Referer_temp), "referer:") = 1 Or InStr(LCase(Referer_temp), vbCrLf & "referer:") > 0 Then
            a = Mid$(Referer_temp, InStr(LCase(Referer_temp), "referer:"))
            a = Mid$(a, 1, InStr(a, vbCrLf) - 1)
            a = Mid$(a, InStr(LCase(a), "referer:") + 9)
        End If
    End If
    
    fix_referer_cookies = """" & Trim(a) & """,""" & Trim(b) & """"
End Function

'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------
'------------------------------------------------------------------------------

Private Sub list_163pic(ByVal user_ID, ByVal albums_ID, ByVal password)
    Dim a, b, c As String
    
    Dim check_2 As Boolean
    check_2 = False
    
    strURL = Trim$("http://photo.163.com/js/photosinfo.php?user=" & user_ID & "&aid=" & albums_ID & password)
    
    runtime_Label = "正在下载" & user_ID & "相册" & albums_ID & "列表"
    Label_url.caption = runtime_Label
    Label_url1.caption = runtime_Label
    
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
    
    runtime_Label = "正在分析" & user_ID & "相册" & albums_ID & "列表"
    Label_url.caption = runtime_Label
    Label_url1.caption = runtime_Label
    
    If (InStr(Html_Temp, "gPhotosIds[") < 1) And check_2 = False Then strURL = strURL & "&from=guest": check_2 = True: GoTo check_2nd
    
    If InStr(Html_Temp, "gPhotosIds[") > 0 Then
        
        Html_Temp = Replace$(Replace$(Html_Temp, Chr(13), ""), Chr(10), "")
        '定位到第一张图片的文本头
        Html_Temp = Mid$(Html_Temp, InStr(Html_Temp, "gPhotosIds[") + 11)
        '定位到最后一张图片
        Html_Temp = Mid$(Html_Temp, 1, Len(Html_Temp) - 3)
        
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
            picINFO(cout_num) = Mid$(picINFO(cout_num), InStr(picINFO(cout_num), ";gPhotosInfo[") + 13)
            '------>1720686103] = [536,1,"475x474","frar.rar.jpg
            
            picID = Mid$(picINFO(cout_num), 1, InStr(picINFO(cout_num), "] = [") - 1)
            
            picINFO(cout_num) = Mid$(picINFO(cout_num), InStr(picINFO(cout_num), "] = [") + 5)
            html_sort = Split(picINFO(cout_num), Chr(34) & "," & Chr(34))
            
            If UBound(html_sort) > 2 Then
                '--------------------------------------------------------
                '840,2,"620x877","图片描述","http://img.photo.163.com/AyDZ553hZ6C1o9m8XWYS0g==/166914661191212341.jpg","http://img.photo.163.com/g3KiC-wAzGHManz4VXul-A==/166914661191212393.jpg
                
                '图片类型
                If LCase(Mid$(html_sort(3), Len(html_sort(3)) - 3)) = ".jpg" Then
                    c = "1"
                Else
                    c = Mid$(html_sort(0), InStr(html_sort(0), ",") + 1, 1)
                End If
                '----------------
                '图片名称
                a = reName_Str(fix_Code(unicode2asc(Trim$(html_sort(1)))))
                '----------------
                '图片链接
                b = Trim$(html_sort(3))
                '----------------
                Select Case c
                Case "1"
                    If Len(a) > 4 Then
                        If Right$(LCase$(a), 4) <> ".jpg" Then
                            a = a & ".jpg"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".jpg"
                    Else
                        a = a & ".jpg"
                    End If
                    
                Case "2"
                    If Len(a) > 4 Then
                        If Right$(LCase$(a), 4) <> ".gif" Then
                            a = a & ".gif"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".gif"
                    Else
                        a = a & ".gif"
                    End If
                    
                Case Else
                    If Len(a) > 5 Then
                        If Right$(LCase$(a), 5) <> ".jpeg" Then
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
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , fix_Pix(Mid(html_sort(0), InStr(html_sort(0), Chr(34)) + 1)) & " - " & Str_unicode_Ctrl(fix_Code(unicode2asc(Trim$(html_sort(1)))))
                'list_picUrl temp(2)
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , b
                
                List1.ListItems(cout_num + 1).Checked = True
                
                
                '--------------------------------------------------------
            Else
                
                
                '--------------------------------------------------------
                '格式  536,1,"475x474","frar.rar.jpg
                '文件序号
                'picID
                '----------------
                
                '图片类型
                c = Mid$(html_sort(0), InStr(html_sort(0), ",") + 1, 1)
                '----------------
                
                '相册img序号
                a = Left$(html_sort(0), InStr(html_sort(0), ",") - 1)
                '----------------
                
                '图片链接
                If c = "1" Then
                    b = "http://img" & a & ".photo.163.com/" & user_ID & "/" & albums_ID & "/" & picID & ".jpg"
                ElseIf c = "2" Then
                    b = "http://img" & a & ".photo.163.com/" & user_ID & "/" & albums_ID & "/" & picID & ".gif"
                Else
                    b = "http://img" & a & ".photo.163.com/" & user_ID & "/" & albums_ID & "/" & picID & ".jpeg"
                End If
                
                '图片名称
                a = reName_Str(fix_Code(unicode2asc(Trim$(html_sort(1)))))
                
                Select Case c
                    
                Case "1"
                    If Len(a) > 4 Then
                        If Right$(LCase$(a), 4) <> ".jpg" Then
                            a = a & ".jpg"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".jpg"
                    Else
                        a = a & ".jpg"
                    End If
                    
                Case "2"
                    If Len(a) > 4 Then
                        If Right$(LCase$(a), 4) <> ".gif" Then
                            a = a & ".gif"
                        End If
                    ElseIf Len(a) = 0 Then
                        a = picID & ".gif"
                    Else
                        a = a & ".gif"
                    End If
                    
                Case Else
                    If Len(a) > 5 Then
                        If Right$(LCase$(a), 5) <> ".jpeg" Then
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
                List1.ListItems.Item(cout_num + 1).ListSubItems.Add , , fix_Pix(Mid(html_sort(0), InStr(html_sort(0), Chr(34)) + 1)) & " - " & Str_unicode_Ctrl(fix_Code(unicode2asc(Trim$(html_sort(1)))))
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
    'url_temp不能清空，还有用
    '-------------------------------------------------------------------------------------------------------------
    If LCase$(run_script_str(3)) = "photo" Then
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
        
        List1.ListItems.Clear
        List1.Visible = True
        If sysSet.listshow = False Then List1.Visible = False
        List1.Enabled = False
        
        'If sysSet.bottom_StatusBar = True Then Refresh_Panel
        
        list_count.Visible = True
        runtime_Label = "开始执行外部脚本"
        Label_url.caption = runtime_Label
        Label_url.Visible = True
        'Timer2.Enabled = True
        
        Form1.Icon = ico(1).Picture
        form_quit = False
        
        
        '--------------------------------------------------------
        
        list_photo_script url_temp
        If List1.ListItems.count > 0 And sysSet.fix_rar > 0 Then fix_rar
        
        '--------------------------------------------------------
        
        
        Label_url.Visible = False
        'Timer2.Enabled = False
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
        
        '------------------------------创建url文件-----------------------
        If List1.ListItems.count > 0 Then
            Call OX_CreateUrlIniFile(url_file_name)
            url_Filelist.Refresh
        End If
        '----------------------------------------------------------------
        
        List1.ListItems.Item(1).Selected = False
        List1.SetFocus
        
        
        '-------------------------------------------------------------------------------------------------------------
    ElseIf LCase$(run_script_str(3)) = "album" Then
        '-------------------------------------------------------------------------------------------------------------
        
        user_list.ListItems.Clear
        
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
        
        runtime_Label = "开始执行外部脚本"
        Label_url1.caption = runtime_Label
        Label_url1.Visible = True
        'Timer2.Enabled = True
        
        Form1.Icon = ico(1).Picture
        
        'Frame2.caption = run_script_str(0) & "|" & run_script_str(1) & "|" & run_script_str(2)
        OX_Script_Type = run_script_str(0) & "|" & run_script_str(1) & "|" & run_script_str(2)
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
        Label_url1.Visible = False
        
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
        
        '------------------------------创建url文件----------------------------------
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
    '加载脚本----------------------------------------------------
    Call OX_load_Script_Code(Script_Info, Script_App)
    Script_Retrun_Temp = ""
    '-------------------------------------------------------------------------
    DoEvents
    If form_quit = True Then Exit Sub
    Call DisplayCaption("执行return_download_url")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    'get cookies----------------------------------------------------------------
    cookies_text = GetCookie(Script_Info.Criteria)
    err.Clear
    Call Script_App.Run("set_urlpagecookies", cookies_text)
    Call CheckScriptError
    '---------------------------------------------------------------------------
    '取得格式化后的链接地址信息
    Script_Retrun_Temp = Script_App.Run("return_download_url", Script_Info.Criteria)
    Call CheckScriptError
    '取得格式化后的该页面的引用页、头信息等
    urlpage_Referer = Trim$(Script_App.Eval("OX163_urlpage_Referer"))
    Call CheckScriptError
    '---------------------------------------------------------------------------
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    '正式函数开始前，初始各个参数，不初始化url_Referer下载信息，因为可能上一级相册列表时，已经定义该参数
    start_fast_method = "" '重置以前留下的POST方式信息，该信息为空时，不使用POST方式，仅使用GET方式
    Dim Dl_Info As downloadInfo
    Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
    '函数正式开始-----------------------------------------------------------------------------
    Do
        Call DisplayCaption("正在下载" & Dl_Info.downloadURL)
        '定义下载全局变量
        htmlCharsetType = Script_Info.Encoding '页面字符集
        strURL = Dl_Info.downloadURL '下载页连接
        If Dl_Info.refererINFO <> "" Then url_Referer = Dl_Info.refererINFO '重置下载文件时使用的引用页、头信息等
        If Dl_Info.POSTmethod <> "" Then start_fast_method = Dl_Info.POSTmethod 'POST方式发送信息，可为空
        '执行下载页面函数
        If ScriptDownload(Dl_Info.mode) Then Exit Sub
        'replace html----------------------------------------------------------------------------
        Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language) '使用script_app.Run方式不需要替换回车、引号等特殊字符
        DoEvents
        If form_quit = True Then Exit Sub
        Call DisplayCaption("执行return_download_list")
        If Form1.WindowState = 0 Then always_on_top False
        top_Picture(0).Enabled = False
        top_Picture(1).Enabled = False
        'get cookies---------------------------------------------------------------------------------
        cookies_text = GetCookie(Dl_Info.downloadURL)
        err.Clear
        Call Script_App.Run("set_urlpagecookies", cookies_text)
        Call CheckScriptError
        'list Photo Url 取得照片链接地址等信息------------------------------------------------------
        Script_Retrun_Temp = Script_App.Run("return_download_list", Html_Temp, Script_Info.Criteria)
        Call CheckScriptError
        '取得格式化后的该页面的引用页、头信息等
        urlpage_Referer = Trim$(Script_App.Eval("OX163_urlpage_Referer"))
        Call CheckScriptError
        If Form1.WindowState = 0 Then always_on_top sysSet.always_top
        top_Picture(0).Enabled = True
        top_Picture(1).Enabled = True
        Call DisplayCaption("正在分析" & Dl_Info.downloadURL)
        
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
    '定义url文件名----------------------------------------------------
    Dim url_file_name As String
    url_file_name = rename_URL(url_input.Text)
    pw_163 = App_path & "\url\" & url_file_name
    Dim pw_file_tf As Boolean
    pw_file_tf = (Dir(pw_163) <> "")
    '取得外部脚本信息以及原始链接-----------------------------------------------
    Dim Script_Info As ScriptInfo
    Script_Info = ParseInclude(album_info)
    '加载脚本----------------------------------------------------
    Call OX_load_Script_Code(Script_Info, Script_App)
    Script_Retrun_Temp = ""
    '-------------------------------------------------------------------------
    DoEvents
    If form_quit = True Then Exit Sub
    Call DisplayCaption("执行return_download_url")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    'get cookies----------------------------------------------------------------
    cookies_text = GetCookie(Script_Info.Criteria)
    err.Clear
    Call Script_App.Run("set_urlpagecookies", cookies_text)
    Call CheckScriptError
    '---------------------------------------------------------------------------
    '取得格式化后的链接地址信息
    Script_Retrun_Temp = Script_App.Run("return_download_url", Script_Info.Criteria)
    Call CheckScriptError
    '取得格式化后的该页面的引用页、头信息等
    urlpage_Referer = Trim$(Script_App.Eval("OX163_urlpage_Referer"))
    Call CheckScriptError
    '---------------------------------------------------------------------------
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    '正式函数开始前，初始各个参数
    url_Referer = ""       '重置下载文件时使用的引用页、头信息等
    start_fast_method = "" '重置以前留下的POST方式信息，该信息为空时，不使用POST方式，仅使用GET方式
    Dim Dl_Info As downloadInfo
    Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
    '函数正式开始-----------------------------------------------------------------------------
    Do
        Call DisplayCaption("正在下载" & Dl_Info.downloadURL)
        '定义下载全局变量
        htmlCharsetType = Script_Info.Encoding '页面字符集
        strURL = Dl_Info.downloadURL '下载页连接
        If Dl_Info.refererINFO <> "" Then url_Referer = Dl_Info.refererINFO '重置下载文件时使用的引用页、头信息等
        If Dl_Info.POSTmethod <> "" Then start_fast_method = Dl_Info.POSTmethod 'POST方式发送信息，可为空
        '执行下载页面函数
        If ScriptDownload(Dl_Info.mode) Then Exit Sub
        'replace html----------------------------------------------------------------------------
        Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language)'使用script_app.Run方式不需要替换回车，引号等特殊字符
        DoEvents
        If form_quit = True Then Exit Sub
        Call DisplayCaption("执行return_albums_list")
        If Form1.WindowState = 0 Then always_on_top False
        top_Picture(0).Enabled = False
        top_Picture(1).Enabled = False
        err.Clear
        'get cookies---------------------------------------------------------------------------------
        cookies_text = GetCookie(Dl_Info.downloadURL)
        err.Clear
        Call Script_App.Run("set_urlpagecookies", cookies_text)
        Call CheckScriptError
        'list albums Url 取得相册链接地址等信息------------------------------------------------------
        Script_Retrun_Temp = Script_App.Run("return_albums_list", Html_Temp, Script_Info.Criteria)
        Call CheckScriptError
        '取得格式化后的改业面的引用页、头信息等
        urlpage_Referer = Trim$(Script_App.Eval("OX163_urlpage_Referer"))
        Call CheckScriptError
        If Form1.WindowState = 0 Then always_on_top sysSet.always_top
        top_Picture(0).Enabled = True
        top_Picture(1).Enabled = True
        Call DisplayCaption("正在分析" & Dl_Info.downloadURL)
        
        Dim albmInfos() As AlbumInfo
        albmInfos = ParseAlbum(Script_Retrun_Temp)
        
        For i = 0 To UBound(albmInfos)
            DoEvents
            If form_quit = True Then Exit Sub
            If i < UBound(albmInfos) Then
                Dim currentListItem As ListItem
                'album_name
                Set currentListItem = user_list.ListItems.Add(user_list.ListItems.count + 1, , albmInfos(i).AlbumName)
                'list_album_password
                Script_Retrun_Temp = ""
                If albmInfos(i).hasPassword = True Then
                    If pw_file_tf = True Then Script_Retrun_Temp = GetUnicodeIniStr("password", rename_ini_str(albmInfos(i).URL), pw_163)
                    If Script_Retrun_Temp = "" Then Script_Retrun_Temp = "请填写密码............" & vbCrLf & ".........."
                End If
                Call currentListItem.ListSubItems.Add(, , Script_Retrun_Temp)
                Script_Retrun_Temp = ""
                'list_album_url
                Call currentListItem.ListSubItems.Add(, , albmInfos(i).URL)
                'list_album_photo_numbers
                Call currentListItem.ListSubItems.Add(, , albmInfos(i).picCount)
                'list_album_disc
                Call currentListItem.ListSubItems.Add(, , Format$(user_list.ListItems.count, "00000") & " - " & albmInfos(i).Description)
                'list_album_undown
                Call currentListItem.ListSubItems.Add(, , "")
            Else
                If albmInfos(i).URL = "" Or albmInfos(i).URL = "0" Then Exit Sub
                Dl_Info = ParseDownloadURL(albmInfos(i).URL)
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
    '取得外部脚本信息以及原始链接-----------------------------------------------
    run_script_str = Split(album_info, "|")
    Dim Script_Info As ScriptInfo
    Script_Info = ParseInclude(album_info)
    '加载脚本----------------------------------------------------
    Call OX_load_Script_Code(Script_Info, Script_App)
    Script_Retrun_Temp = ""
    'get album Url----------------------------------------------------------------------------
    DoEvents
    If form_quit = True Then Exit Function
    Call DisplayCaption("执行return_download_url")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    'get cookies----------------------------------------------------------------
    cookies_text = GetCookie(Script_Info.Criteria)
    err.Clear
    Call Script_App.Run("set_urlpagecookies", cookies_text)
    Call CheckScriptError
    '---------------------------------------------------------------------------
    '取得格式化后的链接地址信息
    Script_Retrun_Temp = Script_App.Run("return_download_url", Script_Info.Criteria)
    '取得格式化后的该页面的引用页、头信息等
    Call CheckScriptError
    urlpage_Referer = Trim$(Script_App.Eval("OX163_urlpage_Referer"))
    Call CheckScriptError
    '---------------------------------------------------------------------------
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    If Script_Retrun_Temp = "" Then Exit Function
    '正式函数开始前，初始各个参数
    start_fast_method = "" '重置以前留下的POST方式信息，该信息为空时，不使用POST方式，仅使用GET方式
    pass_word = URLEncode(pass_word)
    Call DisplayCaption("执行return_password_rules")
    If Form1.WindowState = 0 Then always_on_top False
    top_Picture(0).Enabled = False
    top_Picture(1).Enabled = False
    '函数正式开始,取得是否为高级密码传输模式或者为简单方式的发送密码的链接、POST信息、判断字符等
    Script_Retrun_Temp = Script_App.Run("return_password_rules", Script_Info.Criteria, pass_word)
    Call CheckScriptError
    If Form1.WindowState = 0 Then always_on_top sysSet.always_top
    top_Picture(0).Enabled = True
    top_Picture(1).Enabled = True
    '判断密码传输的模式
    If InStr(LCase$(Script_Retrun_Temp), "return_ad_password_rules|") = 1 Then
        '高级密码传输模式返回的首字符为“return_ad_password_rules|”，该模式下运行模式类似return_download_list和return_albums_list
        '返回文本格式"return_ad_password_rules|inet|10,13|http://www.spymac.com/?u=24(|referce_url|post_method)"注意大小写
        '高级密码传输模式开始----------------------------------------------------------------------------------
        Script_Retrun_Temp = Mid$(Script_Retrun_Temp, InStr(Script_Retrun_Temp, "|") + 1)
        Dim Dl_Info As downloadInfo
        Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
        Do
            Call DisplayCaption("正在下载" & Dl_Info.downloadURL)
            '定义下载全局变量
            htmlCharsetType = Script_Info.Encoding '页面字符集
            strURL = Dl_Info.downloadURL '下载页连接
            If Dl_Info.refererINFO <> "" Then url_Referer = Dl_Info.refererINFO '重置下载文件时使用的引用页、头信息等
            If Dl_Info.POSTmethod <> "" Then start_fast_method = Dl_Info.POSTmethod 'POST方式发送信息，可为空
            '执行下载页面函数
            If ScriptDownload(Dl_Info.mode) Then Exit Function
            'replace html----------------------------------------------------------------------------
            Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language)'使用script_app.Run方式不需要替换回车，引号等特殊字符
            DoEvents
            If form_quit = True Then Exit Function
            Call DisplayCaption("执行return_ad_password_rules")
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
            '取得格式化后的该页面的引用页、头信息等
            urlpage_Referer = Trim(Script_App.Eval("OX163_urlpage_Referer"))
            Call CheckScriptError
            If Form1.WindowState = 0 Then always_on_top sysSet.always_top
            top_Picture(0).Enabled = True
            top_Picture(1).Enabled = True
            
            If InStr(LCase$(Script_Retrun_Temp), "password_correct") = 1 Then
                check_album_password = True
            Else
                '1|inet|10,13|http://www.spymac.com/?u=24(|referce_url|post_method)
                Dl_Info = ParseDownloadURL(Script_Retrun_Temp)
                If Dl_Info.isResume = False Then Exit Function
            End If
        Loop While (Dl_Info.isResume = True And Dl_Info.downloadURL <> "")
        
        '--------------------------------------------------'高级密码传输模式结束----------------------------------------------------------------------------------
    ElseIf Script_Retrun_Temp <> "" And InStr(Script_Retrun_Temp, "|") > 5 Then
        'script_retrun_temp="url|post方式内容，包括password|传送格式referce_url|含有关键字为密码正确(1表示)，有该关键字为密码错误(0表示)|含有关键字（可含有“|”）"
        Dim Post_Pass_Url
        Post_Pass_Url = Split(Script_Retrun_Temp, "|")
        Call DisplayCaption("正在分析密码")
        If UBound(Post_Pass_Url) > 3 Then
            If Post_Pass_Url(0) <> "" And InStr(Post_Pass_Url(1), pass_word) > 0 Then
                fast_down.Cancel
                download_ok = False
                Dim Post_Referce As String, Psot_Data As String
                Post_Referce = OX_PrivateChr(Post_Pass_Url(2))
                Psot_Data = OX_PrivateChr(Post_Pass_Url(1))
                strURL = Trim$(Post_Pass_Url(0))
                start_Post Psot_Data, Post_Referce
                Do While download_ok = False
                    If form_quit = True Then Exit Function
                    DoEvents
                    Sleep 10
                    DoEvents
                Loop
                'replace html----------------------------------------------------------------------------
                Html_Temp = OX_FilterKeywords(Html_Temp, Dl_Info.excludeChar)    'Html_Temp = OX_CInternal(Html_Temp, script_app.Language)'使用script_app.Run方式不需要替换回车，引号等特殊字符
                '合并末尾项
                Post_Pass_Url(0) = ""
                For i = 4 To UBound(Post_Pass_Url)
                    Post_Pass_Url(0) = Post_Pass_Url(0) & Post_Pass_Url(i)
                Next i
                Dim Post_password_tf As Boolean
                '判断是否含有关键字，含有Post_password_tf为True，含有Post_password_tf为False
                Post_password_tf = (InStr(Html_Temp, Post_Pass_Url(0)) > 0)
                '含有关键字为密码正确(1表示)，有该关键字为密码错误(0表示)
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

