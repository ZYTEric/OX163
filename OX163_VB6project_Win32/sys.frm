VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form sys 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "OX163��������(�����ı�����鿴""����˵��"")"
   ClientHeight    =   14565
   ClientLeft      =   270
   ClientTop       =   720
   ClientWidth     =   22080
   Icon            =   "sys.frx":0000
   LinkTopic       =   "sys"
   MaxButton       =   0   'False
   ScaleHeight     =   14565
   ScaleWidth      =   22080
   StartUpPosition =   2  '��Ļ����
   Begin VB.Timer on_top_Timer 
      Interval        =   10
      Left            =   360
      Top             =   6960
   End
   Begin VB.CommandButton frame_rec 
      Caption         =   "����INI�ָ���������"
      Height          =   495
      Left            =   4800
      TabIndex        =   62
      Top             =   4800
      Width           =   2055
   End
   Begin VB.CommandButton frame_def 
      Caption         =   "�ָ�����Ĭ������"
      Height          =   495
      Left            =   6960
      TabIndex        =   63
      Top             =   4800
      Width           =   1815
   End
   Begin VB.Frame FrameL 
      Caption         =   "�����������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   7
      Left            =   2400
      TabIndex        =   11
      Top             =   10200
      Visible         =   0   'False
      Width           =   6375
      Begin VB.PictureBox Picture23 
         BorderStyle     =   0  'None
         Height          =   615
         Left            =   240
         ScaleHeight     =   615
         ScaleWidth      =   5595
         TabIndex        =   56
         Top             =   360
         Width           =   5595
         Begin VB.OptionButton new163passrule 
            Caption         =   "��(����������õ���������)"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   58
            Top             =   240
            Width           =   3135
         End
         Begin VB.OptionButton new163passrule 
            Caption         =   "��(ʹ�ò������ϲ�������������)"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   57
            Top             =   0
            Width           =   3615
         End
      End
      Begin VB.PictureBox FrameL7_unuse_pic 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   3855
         Left            =   -6240
         ScaleHeight     =   3855
         ScaleWidth      =   6735
         TabIndex        =   12
         Top             =   240
         Visible         =   0   'False
         Width           =   6735
         Begin VB.TextBox passcode_text 
            Height          =   270
            Index           =   0
            Left            =   720
            TabIndex        =   200
            Text            =   "wehi"
            Top             =   0
            Width           =   2655
         End
         Begin VB.TextBox passcode_text 
            Height          =   270
            Index           =   1
            Left            =   720
            TabIndex        =   199
            Text            =   "1530930"
            Top             =   360
            Width           =   2655
         End
         Begin VB.TextBox passcode_text 
            Height          =   270
            Index           =   2
            Left            =   720
            TabIndex        =   198
            Text            =   "asd"
            Top             =   720
            Width           =   2655
         End
         Begin VB.TextBox Text1 
            Height          =   1695
            Left            =   720
            MultiLine       =   -1  'True
            ScrollBars      =   3  'Both
            TabIndex        =   197
            Text            =   "sys.frx":406A
            Top             =   1320
            Width           =   5175
         End
         Begin VB.CommandButton Auto_Password_com 
            Caption         =   "�Զ���д"
            Height          =   975
            Left            =   3480
            TabIndex        =   13
            Top             =   0
            Width           =   2415
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�����������ڲ�����֤��(�°�����ʡ��)"
            ForeColor       =   &H000000FF&
            Height          =   180
            Index           =   3
            Left            =   720
            TabIndex        =   204
            Top             =   1080
            Width           =   3420
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�û���:"
            Height          =   180
            Index           =   0
            Left            =   0
            TabIndex        =   203
            Top             =   45
            Width           =   630
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "���ID:"
            Height          =   180
            Index           =   1
            Left            =   0
            TabIndex        =   202
            Top             =   405
            Width           =   630
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "��  ��:"
            Height          =   180
            Index           =   2
            Left            =   0
            TabIndex        =   201
            Top             =   765
            Width           =   630
         End
      End
      Begin VB.Label FrameL7_1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ�����163���������������:"
         ForeColor       =   &H00C00000&
         Height          =   180
         Index           =   4
         Left            =   240
         TabIndex        =   59
         Top             =   360
         Width           =   2520
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�������������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   8
      Left            =   9000
      TabIndex        =   90
      Top             =   9000
      Width           =   6375
      Begin VB.PictureBox Picture1 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3120
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   192
         Top             =   600
         Visible         =   0   'False
         Width           =   1395
         Begin VB.OptionButton ie_local_window 
            Caption         =   "��"
            Height          =   255
            Index           =   3
            Left            =   0
            TabIndex        =   194
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_local_window 
            Caption         =   "��"
            Height          =   255
            Index           =   2
            Left            =   840
            TabIndex        =   193
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture29 
         BorderStyle     =   0  'None
         Height          =   1695
         Left            =   360
         ScaleHeight     =   1695
         ScaleWidth      =   5580
         TabIndex        =   121
         Top             =   2400
         Width           =   5580
         Begin VB.CommandButton OX_IE_Ver_Com 
            Caption         =   "��reg�ļ���"
            Height          =   300
            Index           =   1
            Left            =   3480
            TabIndex        =   214
            Top             =   840
            Width           =   1455
         End
         Begin VB.ComboBox OX_IE_Ver_combo 
            Height          =   300
            ItemData        =   "sys.frx":415F
            Left            =   0
            List            =   "sys.frx":4175
            Style           =   2  'Dropdown List
            TabIndex        =   213
            Top             =   840
            Width           =   1815
         End
         Begin VB.CommandButton OX_IE_Ver_Com 
            Caption         =   "����reg�ļ�"
            Height          =   300
            Index           =   0
            Left            =   1920
            TabIndex        =   212
            Top             =   840
            Width           =   1455
         End
         Begin VB.CommandButton Comm_edit_white 
            Caption         =   "�༭������"
            Height          =   300
            Left            =   2760
            TabIndex        =   210
            Top             =   0
            Visible         =   0   'False
            Width           =   1335
         End
         Begin VB.CommandButton Comm_edit_black 
            Caption         =   "�༭������"
            Height          =   300
            Left            =   0
            TabIndex        =   122
            Top             =   0
            Visible         =   0   'False
            Width           =   1335
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "���������IE�汾����(��Ҫ��������):"
            Height          =   180
            Index           =   2
            Left            =   0
            TabIndex        =   211
            Top             =   600
            Width           =   3150
         End
      End
      Begin VB.PictureBox Picture27 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   118
         Top             =   2040
         Visible         =   0   'False
         Width           =   1395
         Begin VB.OptionButton ie_black_list 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   120
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_black_list 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   119
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture26 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3120
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   115
         Top             =   2040
         Visible         =   0   'False
         Width           =   1395
         Begin VB.OptionButton ie_white_list 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   117
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_white_list 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   116
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture25 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3120
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   110
         Top             =   1320
         Visible         =   0   'False
         Width           =   1395
         Begin VB.OptionButton ie_local_window 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   112
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_local_window 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   111
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture22 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   94
         Top             =   600
         Width           =   1395
         Begin VB.OptionButton ox163_window 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   96
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ox163_window 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   95
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture10 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   91
         Top             =   1320
         Width           =   1395
         Begin VB.OptionButton ie_window 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   93
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_window 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   92
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�������������ʱ����С�������̣�"
         Height          =   180
         Index           =   1
         Left            =   3120
         TabIndex        =   191
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   360
         Visible         =   0   'False
         Width           =   2880
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ú�������"
         Height          =   180
         Index           =   19
         Left            =   360
         TabIndex        =   114
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1800
         Visible         =   0   'False
         Width           =   1080
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ð�������"
         Height          =   180
         Index           =   18
         Left            =   3120
         TabIndex        =   113
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1800
         Visible         =   0   'False
         Width           =   1080
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ֹ��ͬ���¿����ڣ�"
         Height          =   180
         Index           =   17
         Left            =   3120
         TabIndex        =   109
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1080
         Visible         =   0   'False
         Width           =   1980
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ���OX163���´��ڣ�"
         Height          =   180
         Index           =   14
         Left            =   360
         TabIndex        =   98
         ToolTipText     =   "����ض���վ�뽨��ѡ��(��)"
         Top             =   360
         Width           =   2070
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ���ֹ����������¿����ڣ�"
         Height          =   180
         Index           =   0
         Left            =   360
         TabIndex        =   97
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1080
         Width           =   2520
      End
   End
   Begin VB.CommandButton sys_apply 
      Caption         =   "Ӧ��"
      Height          =   465
      Left            =   7680
      TabIndex        =   70
      Top             =   5520
      Width           =   1215
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   240
      Top             =   3360
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   21
      ImageHeight     =   21
      MaskColor       =   16711935
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   18
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":41B0
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4220
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":429C
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":431E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":439B
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4412
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":448F
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":450F
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":458D
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4605
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4675
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":46F1
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4773
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":47F0
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4867
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":48E4
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4964
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":49E2
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.TreeView SysTreeView 
      Height          =   5295
      Left            =   120
      TabIndex        =   69
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   9340
      _Version        =   393217
      HideSelection   =   0   'False
      Indentation     =   706
      LabelEdit       =   1
      Style           =   7
      Scroll          =   0   'False
      ImageList       =   "ImageList1"
      BorderStyle     =   1
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
   End
   Begin VB.Frame FrameL 
      Caption         =   "������ά��"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   9
      Left            =   15480
      TabIndex        =   55
      Top             =   9000
      Visible         =   0   'False
      Width           =   6375
      Begin VB.Frame Frame4 
         Height          =   1815
         Left            =   240
         TabIndex        =   216
         Top             =   240
         Width           =   5895
         Begin VB.CommandButton manifest_Com 
            Caption         =   "Ӧ����������(����������)"
            BeginProperty Font 
               Name            =   "����"
               Size            =   9
               Charset         =   134
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   120
            MaskColor       =   &H80000012&
            TabIndex        =   221
            Top             =   1400
            Width           =   5655
         End
         Begin VB.CheckBox manifest_check 
            Caption         =   "����Ա�������(����󲿷����⣬��win10����������Ȩʧ��)"
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   220
            Top             =   1080
            Width           =   5655
         End
         Begin VB.CheckBox manifest_check 
            Caption         =   "��DPI����ʱ������ʾ����(�������ģ������)"
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   219
            Top             =   720
            Value           =   1  'Checked
            Width           =   5655
         End
         Begin VB.CheckBox manifest_check 
            Caption         =   "ʹ��Windows������ʽ"
            ForeColor       =   &H000000FF&
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   218
            Top             =   360
            Value           =   1  'Checked
            Width           =   5535
         End
         Begin VB.Label FrameL9_lab 
            AutoSize        =   -1  'True
            Caption         =   "����ģʽѡ��(�޸�OX163.exe.manifest�ļ�)"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   0
            Left            =   120
            TabIndex        =   217
            Top             =   0
            Width           =   3600
         End
      End
      Begin VB.TextBox OX_Start_log_Text 
         BackColor       =   &H00404040&
         ForeColor       =   &H00FFFFFF&
         Height          =   2175
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   134
         Text            =   "sys.frx":4A5A
         Top             =   2400
         Width           =   5895
      End
      Begin VB.Label manifest_Lab 
         AutoSize        =   -1  'True
         Caption         =   "�������������:"
         Height          =   180
         Left            =   240
         TabIndex        =   215
         Top             =   2160
         Width           =   1530
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�ȼ��뾯���"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   6
      Left            =   15480
      TabIndex        =   34
      Top             =   4680
      Visible         =   0   'False
      Width           =   6375
      Begin VB.PictureBox Picture5 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   99
         Top             =   2040
         Width           =   1395
         Begin VB.OptionButton quitOp 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   101
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton quitOp 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   100
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture7 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   49
         Top             =   2040
         Width           =   2475
         Begin VB.OptionButton saveOp 
            Caption         =   "ѯ��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   51
            Top             =   0
            Width           =   735
         End
         Begin VB.OptionButton saveOp 
            Caption         =   "ֱ�ӱ���"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   50
            Top             =   0
            Width           =   1335
         End
      End
      Begin VB.PictureBox Picture8 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   46
         Top             =   2760
         Width           =   1395
         Begin VB.OptionButton changepsw 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   48
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton changepsw 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   47
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture9 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   43
         Top             =   2760
         Width           =   1395
         Begin VB.OptionButton askfloder 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   45
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton askfloder 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   44
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture14 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   38
         Top             =   1200
         Width           =   2475
         Begin VB.OptionButton ubb_copy 
            Caption         =   "Alt+C"
            Height          =   255
            Index           =   0
            Left            =   1200
            TabIndex        =   40
            Top             =   0
            Width           =   975
         End
         Begin VB.OptionButton ubb_copy 
            Caption         =   "Ctrl+C"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   39
            Top             =   0
            Width           =   975
         End
      End
      Begin VB.PictureBox Picture13 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   35
         Top             =   480
         Width           =   2475
         Begin VB.OptionButton list_copy 
            Caption         =   "Ctrl+C"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   37
            Top             =   0
            Width           =   975
         End
         Begin VB.OptionButton list_copy 
            Caption         =   "Alt+C"
            Height          =   255
            Index           =   0
            Left            =   1200
            TabIndex        =   36
            Top             =   0
            Width           =   975
         End
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ִ��ʱ�����˳�ѯ�ʣ�"
         Height          =   180
         Left            =   3600
         TabIndex        =   102
         ToolTipText     =   "����ѡ��(��)��ֹ�����"
         Top             =   1800
         Width           =   2340
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ŀ¼����ʱ�����浽downloadĿ¼��"
         Height          =   180
         Left            =   240
         TabIndex        =   54
         ToolTipText     =   "����ѡ��(��)��ֹ���Ᵽ��"
         Top             =   1800
         Width           =   2880
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�������ʱ��ѯ���Ƿ��������룿"
         Height          =   180
         Left            =   240
         TabIndex        =   53
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   2520
         Width           =   2700
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "������ɺ��Ƿ������ʾ��"
         Height          =   180
         Left            =   3600
         TabIndex        =   52
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   2520
         Width           =   2520
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����UBB��ǩ:[url], ��������"
         Height          =   180
         Index           =   9
         Left            =   240
         TabIndex        =   42
         ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
         Top             =   960
         Width           =   2430
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��������(url && Lst)��������"
         Height          =   180
         Index           =   8
         Left            =   240
         TabIndex        =   41
         ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
         Top             =   240
         Width           =   2430
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�������������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   4
      Left            =   2400
      TabIndex        =   14
      Top             =   6000
      Visible         =   0   'False
      Width           =   6375
      Begin VB.CheckBox web_proxy_box 
         Caption         =   "��������������ô���A (��ԭIE����ģʽ�������Ҫ�������)"
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   120
         TabIndex        =   135
         Top             =   3480
         Value           =   1  'Checked
         Width           =   6015
      End
      Begin VB.ComboBox ProxyComb 
         Height          =   300
         Index           =   1
         ItemData        =   "sys.frx":4B34
         Left            =   120
         List            =   "sys.frx":4B41
         Style           =   2  'Dropdown List
         TabIndex        =   33
         Top             =   1440
         Width           =   3135
      End
      Begin VB.ComboBox ProxyComb 
         Height          =   300
         Index           =   0
         ItemData        =   "sys.frx":4B80
         Left            =   120
         List            =   "sys.frx":4B8D
         Style           =   2  'Dropdown List
         TabIndex        =   32
         Top             =   480
         Width           =   3135
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   2
         Left            =   4080
         TabIndex        =   26
         Top             =   1800
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   1
         Left            =   4080
         TabIndex        =   25
         Top             =   1440
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   2
         Left            =   4080
         TabIndex        =   22
         Top             =   840
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   1
         Left            =   4080
         TabIndex        =   21
         Top             =   480
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   18
         Top             =   840
         Width           =   3135
      End
      Begin VB.PictureBox proxy_pic 
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   3000
         ScaleHeight     =   375
         ScaleWidth      =   3135
         TabIndex        =   16
         Top             =   2880
         Width           =   3135
         Begin VB.CommandButton proxy_com3 
            Caption         =   "����B��A"
            Height          =   375
            Left            =   2040
            TabIndex        =   31
            Top             =   0
            Width           =   1095
         End
         Begin VB.CommandButton proxy_com2 
            Caption         =   "����A��B"
            Height          =   375
            Left            =   840
            TabIndex        =   30
            Top             =   0
            Width           =   1095
         End
         Begin VB.CommandButton proxy_com1 
            Caption         =   "���"
            Height          =   375
            Left            =   0
            TabIndex        =   29
            Top             =   0
            Width           =   735
         End
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   15
         Top             =   1800
         Width           =   3135
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   7
         Left            =   3360
         TabIndex        =   28
         Top             =   1860
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "�û���:"
         Height          =   180
         Index           =   6
         Left            =   3360
         TabIndex        =   27
         Top             =   1485
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   4
         Left            =   3360
         TabIndex        =   24
         Top             =   900
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "�û���:"
         Height          =   180
         Index           =   3
         Left            =   3360
         TabIndex        =   23
         Top             =   525
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   $"sys.frx":4BCC
         ForeColor       =   &H000000FF&
         Height          =   540
         Index           =   2
         Left            =   120
         TabIndex        =   20
         Top             =   2160
         Width           =   4590
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "����B����: ����ͼƬ����"
         ForeColor       =   &H00C00000&
         Height          =   180
         Index           =   1
         Left            =   120
         TabIndex        =   19
         Top             =   1200
         Width           =   2070
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "����A����: ����ҳ������"
         ForeColor       =   &H00C00000&
         Height          =   180
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   240
         Width           =   2070
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "������������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   1
      Left            =   2520
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   6375
      Begin VB.PictureBox FrameL1_bg 
         BorderStyle     =   0  'None
         Height          =   4335
         Left            =   120
         ScaleHeight     =   4335
         ScaleWidth      =   6135
         TabIndex        =   156
         Top             =   240
         Width           =   6135
         Begin VB.PictureBox FrameL1_bgs 
            AutoSize        =   -1  'True
            BorderStyle     =   0  'None
            Height          =   7335
            Left            =   0
            ScaleHeight     =   7335
            ScaleWidth      =   5865
            TabIndex        =   158
            Top             =   -3000
            Width           =   5865
            Begin VB.HScrollBar VS_retry 
               Height          =   225
               Left            =   840
               Max             =   20
               TabIndex        =   189
               Top             =   1650
               Value           =   20
               Width           =   2055
            End
            Begin VB.HScrollBar VS_timeout 
               Height          =   225
               Left            =   840
               Max             =   120
               Min             =   10
               TabIndex        =   188
               Top             =   1170
               Value           =   120
               Width           =   2055
            End
            Begin VB.CommandButton LST_Help 
               Caption         =   "�����б��ļ�ʹ��˵��"
               Height          =   300
               Left            =   2520
               TabIndex        =   187
               Top             =   2520
               Width           =   2295
            End
            Begin VB.ComboBox Combo_lst 
               ForeColor       =   &H000000FF&
               Height          =   300
               ItemData        =   "sys.frx":4C65
               Left            =   0
               List            =   "sys.frx":4C72
               Style           =   2  'Dropdown List
               TabIndex        =   179
               Top             =   2520
               Width           =   2415
            End
            Begin VB.PictureBox FrameL1_Picture 
               BorderStyle     =   0  'None
               Height          =   735
               Index           =   1
               Left            =   0
               ScaleHeight     =   735
               ScaleWidth      =   4875
               TabIndex        =   173
               Top             =   240
               Width           =   4875
               Begin VB.HScrollBar downHS 
                  Height          =   225
                  Left            =   840
                  Max             =   1000
                  Min             =   1
                  TabIndex        =   178
                  Top             =   375
                  Value           =   4
                  Width           =   2055
               End
               Begin VB.OptionButton downOp 
                  Caption         =   "�Զ���"
                  Height          =   255
                  Index           =   3
                  Left            =   0
                  TabIndex        =   177
                  Top             =   360
                  Width           =   855
               End
               Begin VB.OptionButton downOp 
                  Caption         =   "100 KB"
                  Height          =   255
                  Index           =   2
                  Left            =   2160
                  TabIndex        =   176
                  Top             =   0
                  Width           =   1095
               End
               Begin VB.OptionButton downOp 
                  Caption         =   "50 KB"
                  Height          =   255
                  Index           =   1
                  Left            =   1080
                  TabIndex        =   175
                  Top             =   0
                  Width           =   975
               End
               Begin VB.OptionButton downOp 
                  Caption         =   "10 KB"
                  Height          =   255
                  Index           =   0
                  Left            =   0
                  TabIndex        =   174
                  Top             =   0
                  Width           =   975
               End
               Begin VB.Label LB_downblock 
                  AutoSize        =   -1  'True
                  Caption         =   "1KB"
                  Height          =   180
                  Left            =   3000
                  TabIndex        =   196
                  Top             =   390
                  Width           =   270
               End
            End
            Begin VB.Frame FrameL1_Frame1 
               Height          =   3525
               Left            =   0
               TabIndex        =   159
               Top             =   3720
               Width           =   5775
               Begin VB.PictureBox FrameL1_Picture 
                  BorderStyle     =   0  'None
                  Height          =   1275
                  Index           =   2
                  Left            =   120
                  ScaleHeight     =   1275
                  ScaleWidth      =   5535
                  TabIndex        =   168
                  Top             =   2160
                  Width           =   5535
                  Begin VB.TextBox Customize_UA_txt 
                     BeginProperty Font 
                        Name            =   "����"
                        Size            =   10.5
                        Charset         =   134
                        Weight          =   400
                        Underline       =   0   'False
                        Italic          =   0   'False
                        Strikethrough   =   0   'False
                     EndProperty
                     Height          =   915
                     Left            =   0
                     MultiLine       =   -1  'True
                     ScrollBars      =   2  'Vertical
                     TabIndex        =   170
                     Top             =   360
                     Width           =   5535
                  End
                  Begin VB.ComboBox Combo_UA_List 
                     Height          =   300
                     ItemData        =   "sys.frx":4CB3
                     Left            =   1920
                     List            =   "sys.frx":4CDB
                     Style           =   2  'Dropdown List
                     TabIndex        =   169
                     Top             =   0
                     Width           =   3615
                  End
                  Begin VB.Label FrameL1_lab 
                     AutoSize        =   -1  'True
                     Caption         =   "�û�����(User-Agent):"
                     ForeColor       =   &H00C00000&
                     Height          =   270
                     Index           =   7
                     Left            =   0
                     MousePointer    =   14  'Arrow and Question
                     TabIndex        =   171
                     ToolTipText     =   $"sys.frx":4E41
                     Top             =   45
                     Width           =   1890
                  End
               End
               Begin VB.PictureBox FrameL1_Picture 
                  BorderStyle     =   0  'None
                  Height          =   1695
                  Index           =   0
                  Left            =   120
                  ScaleHeight     =   1695
                  ScaleWidth      =   5295
                  TabIndex        =   160
                  Top             =   240
                  Width           =   5295
                  Begin VB.CheckBox Check_no_store 
                     Caption         =   "ǿ�� Cache-Control: no-store"
                     Height          =   255
                     Left            =   1200
                     MousePointer    =   14  'Arrow and Question
                     TabIndex        =   164
                     ToolTipText     =   "�� ������/�ͻ��� ǿ�Ʒ��� Cache-Control: no-store ͷ��Ϣ��""�����л���"""
                     Top             =   1320
                     Width           =   3135
                  End
                  Begin VB.CheckBox Check_no_cache 
                     Caption         =   "ǿ�� Pragma: no-cache"
                     Height          =   255
                     Left            =   1200
                     MousePointer    =   14  'Arrow and Question
                     TabIndex        =   163
                     ToolTipText     =   "�� ������/�ͻ��� ǿ�Ʒ��� Pragma: no-cache ͷ��Ϣ��""����û�л���"""
                     Top             =   960
                     Width           =   2415
                  End
                  Begin VB.ComboBox Combo_DelCache_BefDL 
                     Height          =   300
                     ItemData        =   "sys.frx":4EB9
                     Left            =   1800
                     List            =   "sys.frx":4EC9
                     Style           =   2  'Dropdown List
                     TabIndex        =   162
                     Top             =   0
                     Width           =   2775
                  End
                  Begin VB.ComboBox Combo_DelCache_AftDL 
                     Height          =   300
                     ItemData        =   "sys.frx":4F17
                     Left            =   1800
                     List            =   "sys.frx":4F2A
                     Style           =   2  'Dropdown List
                     TabIndex        =   161
                     Top             =   480
                     Width           =   2775
                  End
                  Begin VB.Label FrameL1_lab 
                     AutoSize        =   -1  'True
                     Caption         =   "����ǰ"
                     Height          =   180
                     Index           =   8
                     Left            =   1200
                     MousePointer    =   14  'Arrow and Question
                     TabIndex        =   167
                     ToolTipText     =   $"sys.frx":4F92
                     Top             =   45
                     Width           =   540
                  End
                  Begin VB.Label FrameL1_lab 
                     AutoSize        =   -1  'True
                     Caption         =   "���غ�"
                     Height          =   180
                     Index           =   9
                     Left            =   1200
                     MousePointer    =   14  'Arrow and Question
                     TabIndex        =   166
                     ToolTipText     =   $"sys.frx":5004
                     Top             =   525
                     Width           =   540
                  End
                  Begin VB.Label FrameL1_lab 
                     AutoSize        =   -1  'True
                     Caption         =   "��ʷ��������:"
                     ForeColor       =   &H00C00000&
                     Height          =   180
                     Index           =   5
                     Left            =   0
                     MousePointer    =   14  'Arrow and Question
                     TabIndex        =   165
                     ToolTipText     =   $"sys.frx":5076
                     Top             =   45
                     Width           =   1170
                  End
               End
               Begin VB.Label FrameL1_move_lab 
                  Alignment       =   1  'Right Justify
                  AutoSize        =   -1  'True
                  Caption         =   "������ק�ƶ����"
                  BeginProperty Font 
                     Name            =   "����"
                     Size            =   7.5
                     Charset         =   134
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H80000010&
                  Height          =   150
                  Index           =   0
                  Left            =   4560
                  TabIndex        =   190
                  Top             =   0
                  Width           =   1200
               End
               Begin VB.Label FrameL1_lab 
                  AutoSize        =   -1  'True
                  Caption         =   "�߼�����"
                  ForeColor       =   &H00C00000&
                  Height          =   180
                  Index           =   6
                  Left            =   120
                  TabIndex        =   172
                  Top             =   0
                  Width           =   720
               End
            End
            Begin VB.Label FrameL1_move_lab 
               Alignment       =   1  'Right Justify
               AutoSize        =   -1  'True
               Caption         =   "������ק�ƶ����"
               BeginProperty Font 
                  Name            =   "����"
                  Size            =   7.5
                  Charset         =   134
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000010&
               Height          =   150
               Index           =   1
               Left            =   4560
               TabIndex        =   195
               Top             =   0
               Width           =   1200
            End
            Begin VB.Label Combo_lst1 
               AutoSize        =   -1  'True
               Caption         =   $"sys.frx":50C0
               ForeColor       =   &H000000FF&
               Height          =   360
               Left            =   0
               TabIndex        =   186
               Top             =   2880
               Width           =   2610
            End
            Begin VB.Label FrameL1_lab 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "Ĭ�������б��ʽ:"
               ForeColor       =   &H00C00000&
               Height          =   180
               Index           =   3
               Left            =   0
               MousePointer    =   14  'Arrow and Question
               TabIndex        =   185
               ToolTipText     =   $"sys.frx":50FD
               Top             =   2280
               Width           =   1530
            End
            Begin VB.Label FrameL1_lab 
               AutoSize        =   -1  'True
               Caption         =   "��������(д�뻺��):"
               ForeColor       =   &H00C00000&
               Height          =   180
               Index           =   0
               Left            =   0
               MousePointer    =   14  'Arrow and Question
               TabIndex        =   184
               ToolTipText     =   $"sys.frx":514A
               Top             =   0
               Width           =   1710
            End
            Begin VB.Label FrameL1_lab 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "���ӳ�ʱ:"
               ForeColor       =   &H00C00000&
               Height          =   180
               Index           =   1
               Left            =   0
               MousePointer    =   14  'Arrow and Question
               TabIndex        =   183
               ToolTipText     =   $"sys.frx":51A8
               Top             =   1200
               Width           =   810
            End
            Begin VB.Label FrameL1_lab 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "ʧ������:"
               ForeColor       =   &H00C00000&
               Height          =   180
               Index           =   2
               Left            =   0
               MousePointer    =   14  'Arrow and Question
               TabIndex        =   182
               ToolTipText     =   "�����ӳ�ʱ�󣬶Գ�ʱ��ַ�������ӵĴ���"
               Top             =   1680
               Width           =   810
            End
            Begin VB.Label LB_timeout 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "30��"
               Height          =   180
               Left            =   3000
               TabIndex        =   181
               ToolTipText     =   "���ض�������ѡ��(��)"
               Top             =   1200
               Width           =   360
            End
            Begin VB.Label LB_retry 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "��������"
               Height          =   180
               Left            =   3000
               TabIndex        =   180
               ToolTipText     =   "���ض�������ѡ��(��)"
               Top             =   1680
               Width           =   720
            End
         End
         Begin VB.VScrollBar FrameL1_bgvs 
            Height          =   4335
            Left            =   5880
            TabIndex        =   157
            Top             =   0
            Width           =   255
         End
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "������ͨ������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   5
      Left            =   9000
      TabIndex        =   1
      Top             =   4680
      Visible         =   0   'False
      Width           =   6375
      Begin VB.Frame FrameL5_Frame1 
         Height          =   2295
         Left            =   120
         TabIndex        =   136
         Top             =   1680
         Width           =   6015
         Begin VB.PictureBox Picture15 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   3240
            ScaleHeight     =   255
            ScaleWidth      =   1635
            TabIndex        =   227
            Top             =   1920
            Width           =   1635
            Begin VB.OptionButton Op_Cut_Filelen 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   229
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton Op_Cut_Filelen 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   228
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.PictureBox Picture4 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   240
            ScaleHeight     =   255
            ScaleWidth      =   1635
            TabIndex        =   223
            Top             =   1920
            Width           =   1635
            Begin VB.OptionButton Op_List_Drag 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   225
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton Op_List_Drag 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   224
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.PictureBox Picture6 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   240
            ScaleHeight     =   255
            ScaleWidth      =   1635
            TabIndex        =   147
            Top             =   1200
            Width           =   1635
            Begin VB.OptionButton listOp 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   149
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton listOp 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   148
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.PictureBox Picture18 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   3240
            ScaleHeight     =   255
            ScaleWidth      =   1755
            TabIndex        =   144
            Top             =   1200
            Width           =   1755
            Begin VB.OptionButton set_sbar 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   146
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton set_sbar 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   145
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.PictureBox Picture19 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   3240
            ScaleHeight     =   255
            ScaleWidth      =   1755
            TabIndex        =   141
            Top             =   480
            Width           =   1755
            Begin VB.OptionButton set_checkall 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   143
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton set_checkall 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   142
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.PictureBox Picture3 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   240
            ScaleHeight     =   255
            ScaleWidth      =   1755
            TabIndex        =   138
            Top             =   480
            Width           =   1755
            Begin VB.OptionButton set_tray 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   140
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton set_tray 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   139
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�ضϹ����ļ���(��250�ַ�)��"
            Height          =   180
            Left            =   3240
            TabIndex        =   226
            ToolTipText     =   "Ĭ������Ϊ��"
            Top             =   1680
            Width           =   2430
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�Ƿ�������ק���¹����б�"
            Height          =   180
            Left            =   240
            TabIndex        =   222
            ToolTipText     =   "Ĭ������Ϊ��"
            Top             =   1680
            Width           =   2340
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "����ҳ��ʱ����ʾ�б��嵥��"
            Height          =   180
            Left            =   240
            TabIndex        =   153
            ToolTipText     =   "����ѡ��(��)�ӿ�ˢ���ٶ�"
            Top             =   960
            Width           =   2340
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�Ƿ���ʾ��Ϣ����"
            Height          =   180
            Index           =   11
            Left            =   3240
            TabIndex        =   152
            ToolTipText     =   "��Ϣ��������ʾOX163��������Ϣ"
            Top             =   960
            Width           =   1440
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�Ƿ��Զ�ȫ����Ƕ�ѡ��"
            Height          =   180
            Index           =   12
            Left            =   3240
            TabIndex        =   151
            ToolTipText     =   "�б���Զ�ȫѡ����"
            Top             =   240
            Width           =   2160
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�Ƿ���С����ϵͳ���̣�"
            Height          =   180
            Index           =   4
            Left            =   240
            TabIndex        =   150
            ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
            Top             =   240
            Width           =   1980
         End
         Begin VB.Label sys_lab5 
            AutoSize        =   -1  'True
            Caption         =   "ͨ������"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   0
            Left            =   240
            TabIndex        =   137
            Top             =   0
            Width           =   720
         End
      End
      Begin VB.TextBox update_host_Text 
         Height          =   270
         Left            =   1440
         TabIndex        =   125
         Text            =   "http://www.shanhaijing.net"
         Top             =   920
         Width           =   4335
      End
      Begin VB.ComboBox update_host_Combo 
         Height          =   300
         ItemData        =   "sys.frx":5214
         Left            =   1440
         List            =   "sys.frx":5216
         TabIndex        =   123
         Text            =   "update_host_Combo"
         ToolTipText     =   "��""http://""��ͷ, Ĭ��""http://www.shanhaijing.net/163/"""
         Top             =   1200
         Width           =   4335
      End
      Begin VB.PictureBox Picture2 
         BorderStyle     =   0  'None
         Height          =   350
         Left            =   120
         ScaleHeight     =   345
         ScaleWidth      =   5655
         TabIndex        =   6
         Top             =   480
         Width           =   5655
         Begin VB.CommandButton Update_now_Command 
            Caption         =   "����������"
            Height          =   300
            Left            =   1560
            TabIndex        =   10
            ToolTipText     =   "�ֶ�������"
            Top             =   0
            Width           =   1455
         End
         Begin VB.OptionButton autoOp 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   8
            Top             =   50
            Width           =   495
         End
         Begin VB.OptionButton autoOp 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   7
            Top             =   50
            Width           =   495
         End
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ø��·���:"
         ForeColor       =   &H00C00000&
         Height          =   180
         Left            =   120
         TabIndex        =   124
         ToolTipText     =   "��""http://""��ͷ, Ĭ��""http://www.shanhaijing.net/163/"""
         Top             =   960
         Width           =   1170
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Զ�������:"
         ForeColor       =   &H00C00000&
         Height          =   180
         Left            =   120
         TabIndex        =   5
         ToolTipText     =   "����ѡ��(��)�Զ������°汾���"
         Top             =   240
         Width           =   1170
      End
   End
   Begin VB.CommandButton sys_def_com 
      Caption         =   "�ָ�ȫ��Ĭ������"
      Height          =   465
      Index           =   0
      Left            =   2280
      TabIndex        =   9
      Top             =   5520
      Width           =   1815
   End
   Begin VB.CommandButton sys_no 
      Caption         =   "ȡ��(&C)"
      Height          =   465
      Left            =   6360
      TabIndex        =   4
      Top             =   5520
      Width           =   1215
   End
   Begin VB.CommandButton sys_rec 
      Caption         =   "����INI�ָ�ȫ������"
      Height          =   465
      Index           =   0
      Left            =   120
      TabIndex        =   3
      Top             =   5520
      Width           =   2055
   End
   Begin VB.CommandButton sys_yes 
      Caption         =   "ȷ��(&A)"
      Height          =   465
      Left            =   4920
      TabIndex        =   2
      Top             =   5520
      Width           =   1335
   End
   Begin VB.Frame FrameL 
      Caption         =   "�ļ�Ŀ¼����"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   2
      Left            =   9000
      TabIndex        =   60
      Top             =   120
      Width           =   6375
      Begin VB.ComboBox Combo_unicode_ctrl 
         Height          =   300
         Index           =   1
         ItemData        =   "sys.frx":5218
         Left            =   240
         List            =   "sys.frx":5225
         Style           =   2  'Dropdown List
         TabIndex        =   108
         Top             =   1080
         Width           =   5895
      End
      Begin VB.ComboBox Combo_unicode_ctrl 
         Height          =   300
         Index           =   0
         ItemData        =   "sys.frx":5284
         Left            =   240
         List            =   "sys.frx":5291
         Style           =   2  'Dropdown List
         TabIndex        =   106
         Top             =   480
         Width           =   5895
      End
      Begin VB.Frame Frame2 
         ForeColor       =   &H00C00000&
         Height          =   1575
         Left            =   240
         TabIndex        =   72
         Top             =   2880
         Width           =   5895
         Begin VB.PictureBox FrameL2_Picture 
            BorderStyle     =   0  'None
            Height          =   1215
            Index           =   3
            Left            =   2880
            ScaleHeight     =   1215
            ScaleWidth      =   2865
            TabIndex        =   88
            Top             =   240
            Width           =   2865
            Begin VB.TextBox fix_name_Text 
               BeginProperty Font 
                  Name            =   "����"
                  Size            =   10.5
                  Charset         =   134
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   960
               MaxLength       =   15
               TabIndex        =   207
               Top             =   720
               Width           =   1695
            End
            Begin VB.ComboBox Combo_rar_name 
               Height          =   300
               ItemData        =   "sys.frx":52FD
               Left            =   960
               List            =   "sys.frx":52FF
               Style           =   2  'Dropdown List
               TabIndex        =   206
               Top             =   360
               Width           =   1695
            End
            Begin VB.ComboBox Combo_rar 
               Height          =   300
               ItemData        =   "sys.frx":5301
               Left            =   960
               List            =   "sys.frx":530E
               Style           =   2  'Dropdown List
               TabIndex        =   205
               Top             =   0
               Width           =   1695
            End
            Begin VB.CommandButton Command1 
               Caption         =   "��Ӻ�׺"
               Height          =   345
               Left            =   0
               TabIndex        =   89
               Top             =   720
               Width           =   855
            End
            Begin VB.Label FrameL2_lab 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "αͼ���:"
               ForeColor       =   &H00C00000&
               Height          =   180
               Index           =   8
               Left            =   0
               MousePointer    =   14  'Arrow and Question
               TabIndex        =   208
               ToolTipText     =   $"sys.frx":5330
               Top             =   0
               Width           =   810
            End
         End
         Begin VB.PictureBox FrameL2_Picture 
            BorderStyle     =   0  'None
            Height          =   1215
            Index           =   2
            Left            =   240
            ScaleHeight     =   1215
            ScaleWidth      =   2355
            TabIndex        =   84
            Top             =   240
            Width           =   2355
            Begin VB.OptionButton file_compare 
               Caption         =   "����ͬ���ļ�"
               Height          =   255
               Index           =   2
               Left            =   120
               TabIndex        =   87
               ToolTipText     =   "skip same name files"
               Top             =   600
               Width           =   2055
            End
            Begin VB.OptionButton file_compare 
               Caption         =   "����ͬ��ͬ��С�ļ�"
               Height          =   255
               Index           =   1
               Left            =   120
               TabIndex        =   86
               ToolTipText     =   "skip same files"
               Top             =   240
               Width           =   2055
            End
            Begin VB.OptionButton file_compare 
               Caption         =   "���Ƚ� ֱ�Ӹ���"
               Height          =   255
               Index           =   0
               Left            =   120
               TabIndex        =   85
               ToolTipText     =   "rename as new files"
               Top             =   960
               Width           =   2055
            End
            Begin VB.Label FrameL2_lab 
               AutoSize        =   -1  'True
               BackStyle       =   0  'Transparent
               Caption         =   "�����ļ����Ѵ���:"
               ForeColor       =   &H00C00000&
               Height          =   180
               Index           =   7
               Left            =   0
               MousePointer    =   14  'Arrow and Question
               TabIndex        =   209
               ToolTipText     =   "ʹ��""����ͬ��ͬ�ߴ��ļ�""��ʽʱ����������һ���������ӣ��Եõ�ͼƬ�ļ���С"
               Top             =   0
               Width           =   1530
            End
         End
         Begin VB.Label FrameL2_lab 
            AutoSize        =   -1  'True
            Caption         =   "�ļ��ж�"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   6
            Left            =   120
            TabIndex        =   103
            Top             =   0
            Width           =   720
         End
      End
      Begin VB.Frame Frame1 
         ForeColor       =   &H00C00000&
         Height          =   1335
         Left            =   240
         TabIndex        =   71
         Top             =   1440
         Width           =   5895
         Begin VB.PictureBox FrameL2_Picture 
            BorderStyle     =   0  'None
            Height          =   255
            Index           =   1
            Left            =   3240
            ScaleHeight     =   255
            ScaleWidth      =   1635
            TabIndex        =   80
            Top             =   930
            Width           =   1635
            Begin VB.OptionButton set_url_folder 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   82
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton set_url_folder 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   81
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.TextBox def_path_txt 
            Enabled         =   0   'False
            Height          =   270
            Left            =   150
            TabIndex        =   78
            Top             =   510
            Width           =   4935
         End
         Begin VB.PictureBox FrameL2_Picture 
            BorderStyle     =   0  'None
            Height          =   255
            Index           =   0
            Left            =   1440
            ScaleHeight     =   255
            ScaleWidth      =   1515
            TabIndex        =   75
            Top             =   240
            Width           =   1515
            Begin VB.OptionButton def_path 
               Caption         =   "����"
               Height          =   255
               Index           =   1
               Left            =   840
               TabIndex        =   77
               Top             =   0
               Width           =   735
            End
            Begin VB.OptionButton def_path 
               Caption         =   "�ر�"
               Height          =   255
               Index           =   0
               Left            =   0
               TabIndex        =   76
               Top             =   0
               Width           =   735
            End
         End
         Begin VB.PictureBox Picture11 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   5160
            ScaleHeight     =   255
            ScaleWidth      =   555
            TabIndex        =   73
            Top             =   510
            Width           =   555
            Begin VB.CommandButton def_path_com 
               Caption         =   "..."
               Enabled         =   0   'False
               Height          =   255
               Left            =   0
               TabIndex        =   74
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.Label FrameL2_lab 
            AutoSize        =   -1  'True
            Caption         =   "Ŀ¼�趨"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   3
            Left            =   120
            TabIndex        =   104
            Top             =   0
            Width           =   720
         End
         Begin VB.Label FrameL2_lab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "����ʱ, �Ƿ�����ҳ��ַ��ΪĿ¼?"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   5
            Left            =   120
            MousePointer    =   14  'Arrow and Question
            TabIndex        =   83
            ToolTipText     =   $"sys.frx":538A
            Top             =   960
            Width           =   2790
         End
         Begin VB.Label FrameL2_lab 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "Ĭ������·��:"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   4
            Left            =   120
            MousePointer    =   14  'Arrow and Question
            TabIndex        =   79
            ToolTipText     =   $"sys.frx":540B
            Top             =   270
            Width           =   1170
         End
      End
      Begin VB.Label FrameL2_lab 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�����ı��е�Unicode�ַ�:"
         ForeColor       =   &H00C00000&
         Height          =   180
         Index           =   2
         Left            =   240
         MousePointer    =   14  'Arrow and Question
         TabIndex        =   107
         ToolTipText     =   $"sys.frx":5479
         Top             =   840
         Width           =   2160
      End
      Begin VB.Label FrameL2_lab 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�ļ���\�ļ����е�Unicode�ַ�:"
         ForeColor       =   &H000000FF&
         Height          =   180
         Index           =   0
         Left            =   240
         MousePointer    =   14  'Arrow and Question
         TabIndex        =   105
         ToolTipText     =   $"sys.frx":54F5
         Top             =   240
         Width           =   2610
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�ű�����"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   3
      Left            =   15480
      TabIndex        =   61
      Top             =   120
      Width           =   6375
      Begin VB.Frame Frame3 
         Height          =   3615
         Left            =   240
         TabIndex        =   126
         Top             =   960
         Width           =   5895
         Begin VB.FileListBox scriptFile 
            Height          =   2970
            Hidden          =   -1  'True
            Left            =   3600
            Pattern         =   "*.txt"
            TabIndex        =   132
            Top             =   480
            Width           =   2175
         End
         Begin VB.CommandButton IncLstCtrl_Com1 
            Height          =   255
            Index           =   1
            Left            =   3120
            Picture         =   "sys.frx":554E
            Style           =   1  'Graphical
            TabIndex        =   131
            ToolTipText     =   "Remove Include File"
            Top             =   840
            Width           =   375
         End
         Begin VB.CommandButton IncLstCtrl_Com1 
            Height          =   255
            Index           =   0
            Left            =   3120
            Picture         =   "sys.frx":55AA
            Style           =   1  'Graphical
            TabIndex        =   130
            ToolTipText     =   "Add Incule File"
            Top             =   480
            Width           =   375
         End
         Begin MSComctlLib.ListView scriptList 
            DragIcon        =   "sys.frx":5606
            Height          =   2820
            Left            =   120
            TabIndex        =   133
            ToolTipText     =   "��ק����˳��"
            Top             =   480
            Width           =   2895
            _ExtentX        =   5106
            _ExtentY        =   4974
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
            NumItems        =   1
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Key             =   "include_name"
               Object.Tag             =   "name_include"
               Text            =   "include�б�"
               Object.Width           =   3881
            EndProperty
         End
         Begin VB.Label custom_sLabel2 
            AutoSize        =   -1  'True
            Caption         =   "Include Flie(���ȼ��ɸ�����)"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   9
            Left            =   120
            TabIndex        =   129
            Top             =   240
            Width           =   2520
         End
         Begin VB.Label custom_sLabel 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "custom�ļ���(�����)"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   8
            Left            =   3600
            MouseIcon       =   "sys.frx":9670
            MousePointer    =   99  'Custom
            TabIndex        =   128
            Top             =   240
            Width           =   1980
         End
         Begin VB.Label custom_sLabel1 
            AutoSize        =   -1  'True
            Caption         =   "include�б�"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   7
            Left            =   120
            TabIndex        =   127
            Top             =   0
            Width           =   990
         End
      End
      Begin VB.PictureBox Picture12 
         BorderStyle     =   0  'None
         Height          =   315
         Left            =   240
         ScaleHeight     =   315
         ScaleWidth      =   2895
         TabIndex        =   64
         Top             =   600
         Width           =   2895
         Begin VB.OptionButton scriptOP 
            Caption         =   "�Ӻ�"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   67
            ToolTipText     =   "�ڳ���������Ƿ�Ϊ163����ִ��"
            Top             =   20
            Width           =   735
         End
         Begin VB.OptionButton scriptOP 
            Caption         =   "����"
            Height          =   255
            Index           =   1
            Left            =   915
            TabIndex        =   66
            ToolTipText     =   "����ִ���ⲿ�ű�"
            Top             =   0
            Width           =   735
         End
         Begin VB.OptionButton scriptOP 
            Caption         =   "�ر�"
            Height          =   255
            Index           =   2
            Left            =   1785
            TabIndex        =   65
            ToolTipText     =   "�ر��ⲿ�ű�ִ��"
            Top             =   20
            Width           =   735
         End
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�ű���������:"
         ForeColor       =   &H00C00000&
         Height          =   180
         Index           =   6
         Left            =   240
         TabIndex        =   68
         ToolTipText     =   "�밴�û���Ҫ�趨"
         Top             =   360
         Width           =   1170
      End
   End
   Begin VB.Frame ToolTip_Frame 
      Caption         =   "����˵��"
      Height          =   615
      Left            =   120
      TabIndex        =   154
      Top             =   6120
      Width           =   8775
      Begin VB.Label ToolTip_Lab 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         ForeColor       =   &H000000FF&
         Height          =   180
         Left            =   240
         TabIndex        =   155
         Top             =   240
         Width           =   90
      End
   End
End
Attribute VB_Name = "sys"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim m_dragItem As ListItem
Dim m_dragNode As Node
Dim move_tf As Byte
Dim pos_y As Single
Private Const VS_int = 600

Private Sub Combo_lst_Click()
    'lst (for flashget)
    'htm(for All Tools)
    'txt & bat(for All)
    If Combo_lst.ListIndex = 0 Then
        Combo_lst1.caption = "���������Զ�������LST�����б�" & vbCrLf & "������flashget1.96�Ⱦ���汾"
    ElseIf Combo_lst.ListIndex = 1 Then
        Combo_lst1.caption = "��������ȫ��������Ϣ��htmҳ��" & vbCrLf & "����ֱ�ӵ���Ѹ�׵��������"
    ElseIf Combo_lst.ListIndex = 2 Then
        Combo_lst1.caption = "����һ���������ص�ַ��txt�ĵ�" & vbCrLf & "ͬʱ����һ��bat�ĵ�����������"
    End If
End Sub

Private Sub Combo_lst_KeyPress(KeyAscii As Integer)
    'lst (for flashget)
    'htm(for All Tools)
    'txt & bat(for All)
    If Combo_lst.ListIndex = 0 Then
        Combo_lst1.caption = "���������Զ�������LST�����б�" & vbCrLf & "������flashget1.96�Ⱦ���汾"
    ElseIf Combo_lst.ListIndex = 1 Then
        Combo_lst1.caption = "��������ȫ��������Ϣ��htmҳ��" & vbCrLf & "����ֱ�ӵ���Ѹ�׵��������"
    ElseIf Combo_lst.ListIndex = 2 Then
        Combo_lst1.caption = "����һ���������ص�ַ��txt�ĵ�" & vbCrLf & "ͬʱ����һ��bat�ĵ�����������"
    End If
End Sub



Private Sub Combo_rar_name_Click()
    If Combo_rar_name.ListIndex > 0 Then
        fix_name_Text.Text = Combo_rar_name.List(Combo_rar_name.ListIndex)
        Command1.caption = "�޸ĺ�׺"
    Else
        fix_name_Text.Text = ""
        Command1.caption = "��Ӻ�׺"
    End If
End Sub


Private Sub Auto_Password_com_Click()
    On Error Resume Next
    sys.Enabled = False
    Auto_Password_com.caption = "���ڲ���,��ȴ�..."
    Dim html, split_html
    html = Form1.update.OpenURL(sysSet.update_host & "passcode_inf.txt?ntime=" & CDbl(Now()))
    split_html = Split(html, vbCrLf)
    Randomize
    a_count = Int(Rnd * (UBound(split_html) + 1))
    html = Split(split_html(a_count), "|")
    If UBound(html) > 1 Then
        If html(0) <> "" And html(1) <> "" And html(2) <> "" Then
            passcode_text(0) = html(0)
            passcode_text(1) = html(1)
            passcode_text(2) = html(2)
        End If
    End If
    Auto_Password_com.caption = "�Զ���д"
    sys.Enabled = True
End Sub


Private Sub Combo_UA_List_Click()

    Customize_UA_txt = OX_UA_Const(Combo_UA_List.ListIndex)
End Sub

Private Sub Combo_UA_List_KeyPress(KeyAscii As Integer)
    Customize_UA_txt = OX_UA_Const(Combo_UA_List.ListIndex)
End Sub


Private Sub manifest_Com_Click()
Dim manifest_str As String
manifest_str = Set_OX_manifest(manifest_check(0).Value, manifest_check(1).Value, manifest_check(2).Value)
If manifest_str = "-1" Then
MsgBox "�������,����Ҫ�����������Ӧ������", vbOKOnly, "����"
ElseIf manifest_str = "0" Then
MsgBox "ɾ��" & App.EXEName & ".exe.manifest�ļ�ʧ��!", vbOKOnly, "����"
Else
manifest_Lab.caption = App.EXEName & ".exe.manifest�ļ���������:"
OX_Start_log_Text = manifest_str
MsgBox "����ʧ��,�븴���ı����е�����,���ü��±��ֶ���OX163����Ŀ¼����" & App.EXEName & ".exe.manifest�ļ�", vbOKOnly, "����"
End If
End Sub

Private Sub Customize_UA_txt_Change()
On Error Resume Next
Customize_UA_txt = Trim(Replace(Replace(Replace(Customize_UA_txt, Chr(0), ""), Chr(13), ""), Chr(10), ""))
Customize_UA_txt.ToolTipText = Customize_UA_txt
End Sub

Private Sub Customize_UA_txt_DblClick()
    Customize_UA_txt.SelStart = 0
    Customize_UA_txt.SelLength = Len(Customize_UA_txt)
End Sub

Private Sub Customize_UA_txt_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 65 And Shift = vbCtrlMask Then
        Customize_UA_txt_DblClick
    End If
End Sub

Private Sub show_ToolTip()
If ToolTip_Lab.caption <> "" Then ToolTip_Frame.Height = 195 + ToolTip_Lab.Top + ToolTip_Lab.Height: sys.Height = 6510 + ToolTip_Frame.Height + 150
End Sub

Private Sub hide_ToolTip()
sys.Height = 6510
ToolTip_Lab.caption = ""
End Sub

Private Sub FrameL1_bgs_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
move_tf = 1
FrameL1_bgs.MousePointer = 7
pos_y = y
End Sub

Private Sub FrameL1_bgs_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Static mov_y As Single
mov_y = FrameL1_bgs.Top
If move_tf = 1 Then
mov_y = mov_y - (pos_y - y)
If mov_y > 0 Then mov_y = 0
If mov_y < FrameL1_bg.Height - FrameL1_bgs.Height Then mov_y = FrameL1_bg.Height - FrameL1_bgs.Height
FrameL1_bgs.Top = mov_y
FrameL1_bgvs.Value = Int(-FrameL1_bgs.Top / VS_int)
End If
End Sub

Private Sub FrameL1_bgs_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
move_tf = 0
pos_y = 0
FrameL1_bgs.MousePointer = 0
End Sub

Private Sub FrameL1_bgvs_Change()
If move_tf <> 1 Then FrameL1_bgs.Top = 0 - FrameL1_bgvs.Value * VS_int
FrameL1_bgs.SetFocus
End Sub

Private Sub FrameL1_bgvs_Scroll()
FrameL1_bgs.Top = 0 - FrameL1_bgvs.Value * VS_int
End Sub

Private Sub FrameL1_Frame1_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseDown(Button, Shift, x, y)
End Sub

Private Sub FrameL1_Frame1_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseMove(Button, Shift, x, y)
End Sub

Private Sub FrameL1_Frame1_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseUp(Button, Shift, x, y)
End Sub

Private Sub FrameL1_move_lab_MouseDown(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseDown(Button, Shift, x, y)
End Sub

Private Sub FrameL1_move_lab_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseMove(Button, Shift, x, y)
End Sub

Private Sub FrameL1_move_lab_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseUp(Button, Shift, x, y)
End Sub

Private Sub FrameL1_Picture_MouseDown(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseDown(Button, Shift, x, y)
End Sub

Private Sub FrameL1_Picture_MouseMove(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseMove(Button, Shift, x, y)
End Sub

Private Sub FrameL1_Picture_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
Call FrameL1_bgs_MouseUp(Button, Shift, x, y)
End Sub

Private Sub FrameL1_lab_MouseDown(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
ToolTip_Lab.caption = FrameL1_lab(Index).ToolTipText
show_ToolTip
End Sub

Private Sub FrameL1_lab_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
hide_ToolTip
End Sub
Private Sub Check_no_cache_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
ToolTip_Lab.caption = Check_no_cache.ToolTipText
show_ToolTip
End Sub

Private Sub Check_no_cache_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
hide_ToolTip
End Sub

Private Sub Check_no_store_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
ToolTip_Lab.caption = Check_no_store.ToolTipText
show_ToolTip
End Sub

Private Sub Check_no_store_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
hide_ToolTip
End Sub

Private Sub FrameL2_lab_MouseDown(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
ToolTip_Lab.caption = FrameL2_lab(Index).ToolTipText
show_ToolTip
End Sub

Private Sub FrameL2_lab_MouseUp(Index As Integer, Button As Integer, Shift As Integer, x As Single, y As Single)
hide_ToolTip
End Sub

Private Sub IncLstCtrl_Com1_Click(Index As Integer)
    Select Case Index
    Case 0
        If Len(scriptFile.fileName) > 0 And sys_CheckIncLst_NoThisfile(scriptFile.fileName) = True Then
            scriptList.ListItems.Add , , scriptFile.fileName
            scriptList.ListItems(scriptList.ListItems.count).Checked = True
        End If
        
    Case 1
        If MsgBox("�Ƿ�Ҫ�Ƴ�ѡ�е��Զ���Inc�ļ�?" & vbCrLf & "(sys_163��sys_include���ᱻ�Ƴ�)", vbYesNo, "ѯ��") = vbYes Then
            For i = scriptList.ListItems.count To 1 Step -1
                DoEvents
                If scriptList.ListItems(i).Selected = True And scriptList.ListItems(i).Text <> "sys_163" And scriptList.ListItems(i).Text <> "sys_include" Then
                    scriptList.ListItems.Remove i
                End If
            Next
        End If
        
    End Select
End Sub

Private Function sys_CheckIncLst_NoThisfile(scriptFileName As String) As Boolean
    sys_CheckIncLst_NoThisfile = True
    For i = 1 To scriptList.ListItems.count
        If scriptFileName = scriptList.ListItems(i).Text Then
            sys_CheckIncLst_NoThisfile = False
            MsgBox "�ļ��Ѵ���", vbOKOnly, "����"
        End If
    Next
End Function


Private Sub OX_IE_Ver_Com_Click(Index As Integer)
Select Case Index
Case 0
    If MsgBox("�˷��������\regfile\�ļ����µ���Ӧreg�ļ�" & vbCrLf & "���ú��������ע�����Ϣ�ĶԻ���,���Լ��Ķ���ѡ��" & vbCrLf & vbCrLf & "ִ�к���Ҫ�������������Ч", vbOKCancel, "����") = vbCancel Then Exit Sub
    
    If Form1.top_Picture(0).Visible = False Then sys.WindowState = 1: Form1.WindowState = 1
    Select Case OX_IE_Ver_combo.ListIndex
    Case 0
        Dim OX_IE_Ver_reg, OX_IE_Ver_reg1
        Set OX_IE_Ver_reg = CreateObject("WScript.Shell")
        OX_IE_Ver_reg1 = OX_IE_Ver_reg.RegRead("HKLM\Software\Microsoft\Internet Explorer\Version")
        If OX_IE_Ver_reg1 Like "9.11.*" Then
            OX_SetIE_Ver 11
        ElseIf OX_IE_Ver_reg1 Like "10.*" Then
            OX_SetIE_Ver 10
        ElseIf OX_IE_Ver_reg1 Like "9.*" Then
            OX_SetIE_Ver 9
        ElseIf OX_IE_Ver_reg1 Like "8.*" Then
            OX_SetIE_Ver 8
        ElseIf OX_IE_Ver_reg1 Like "?.?*.?*" Then
            OX_SetIE_Ver 0
        Else
            MsgBox "��ȡIE�汾ʧ��,���ֶ�ѡ��IE�汾!", vbOKOnly, "����"
        End If
    
    Case 1
        OX_SetIE_Ver 8
    Case 2
        OX_SetIE_Ver 9
    Case 3
        OX_SetIE_Ver 10
    Case 4
        OX_SetIE_Ver 11
    Case 5
        OX_SetIE_Ver 0
    End Select
Case 1
    Shell "explorer.exe " & App_path & "\regfile\", vbNormalFocus
End Select
End Sub

Private Sub scriptFile_DblClick()
    Call IncLstCtrl_Com1_Click(0)
End Sub

Private Sub scriptList_DblClick()
    scriptList.SelectedItem.Checked = Not scriptList.SelectedItem.Checked
End Sub


Private Sub set_sbar_Click(Index As Integer)
If Index = 0 Then MsgBox "���鿪��״̬��, �������޷�����������ʾ��Ϣ�Լ����ٹ���!", vbOKOnly + vbExclamation, "����"
End Sub

Private Sub Update_now_Command_Click()
    Form1.Form_Start_Timer.Enabled = True
    Update_now_Command.caption = "�ٴμ�����"
End Sub

Private Sub def_path_Click(Index As Integer)
    If def_path(1).Value = True Then
        def_path_com.Enabled = True
        def_path_txt.Enabled = True
    Else
        def_path_com.Enabled = False
        def_path_txt.Enabled = False
    End If
End Sub

Private Sub def_path_com_Click()
    On Error Resume Next
retry:
    Folder_path = ""
    If Right(def_path_txt, 1) <> "\" Then def_path_txt = def_path_txt & "\"
    Folder_path = GetFolder("��ѡ��Ĭ���ļ���", def_path_txt, True)
    
    If Mid(Folder_path, 2, 2) = ":\" Or (Len(Folder_path) = 2 And Right(Folder_path, 1) = ":") Then
        If OX_ChkDiskStatus(Folder_path) = False Then Exit Sub
        def_path_txt = Folder_path
    End If
End Sub

Private Sub downHS_Change()
    LB_downblock.caption = downHS.Value & "KB"
    downOp(3).Value = True
End Sub
Private Sub downHS_Scroll()
    LB_downblock.caption = downHS.Value & "KB"
    downOp(3).Value = True
End Sub
Private Sub fix_name_Text_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Command1_Click
    End If
End Sub

Private Sub Form_Load()
    On Error Resume Next
    sys.Width = 9105
    sys.Height = 6510
    Dim i As Byte
    For i = 1 To 9
        FrameL(i).Top = 120
        FrameL(i).Left = 2520
    Next i
    FrameL1_bgs.Top = 0
    FrameL1_bgs.Left = 0
    FrameL1_bgvs.Max = Int((FrameL1_bgs.Height - FrameL1_bg.Height) / VS_int)
    Call Build_TVW_Menu
    Call SysTreeView_NodeClick(SysTreeView.Nodes(1))
    'Form1.always_on_top False
    'Dim flags As Integer
    'flags = SWP_NOSIZE Or SWP_NOMOVE Or SWP_SHOWWINDOW
    'SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, flags
    
    OX_IE_Ver_combo.ListIndex = 0
    Form1.Enabled = False
    scriptFile.Path = App_path & "\include\custom"
    scriptList.Height = scriptFile.Height
    OX_Start_log_Text = OX_Start_log_Text & vbCrLf & vbCrLf & OX_Start_log
    Call sys_def(0)
    Call load_ini(0)
    OX_SetWheelStart FrameL1_bgs.hwnd
    FrameL1_bgs.SetFocus
    OX_SetWheelArea FrameL1_bgs.hwnd & "," & FrameL1_bgvs.hwnd & "," & FrameL1_Frame1.hwnd & "," & FrameL1_Picture(0).hwnd & "," & FrameL1_Picture(1).hwnd & "," & FrameL1_Picture(2).hwnd
End Sub

Private Sub Sys_on_top()
    Dim flags As Integer
    flags = SWP_NOSIZE Or SWP_NOMOVE Or SWP_SHOWWINDOW
    SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, flags
End Sub

Private Sub Build_TVW_Menu()
    Call SysTreeView.Nodes.Add(, 4, "TVW1", "������������", 1, 1 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW2", "�ļ�Ŀ¼����", 2, 2 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW3", "�ű�����", 3, 3 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW4", "���������", 4, 4 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW5", "������ͨ������", 5, 5 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW6", "�ȼ��뾯���", 6, 6 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW7", "�����������", 7, 7 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW8", "���������", 8, 8 + 9)
    Call SysTreeView.Nodes.Add(, 4, "TVW9", "������ά��", 9, 9 + 9)
    Dim nodx As Node
    For Each nodx In SysTreeView.Nodes
        nodx.Expanded = True
    Next
    SysTreeView.Nodes(1).Selected = True
    'Set myNod = �ؼ���.Nodes.Add(a, b, key, text, image)
    '����˵��:
    'a: ������,��˭�Ļ����Ͻ��ڵ�,a����˭��keyֵ,����Ǹ��ڵ�,��ʡ��.
    'b: ������ͱ���Ĺ�ϵ , ����Ǹ��ӹ�ϵ, ֵΪtvwchile, ������ֵܹ�ϵ, ֵΪtvwnext
    'tvwlast--1���ýڵ������κ���������relative�б�������ͬһ����Ľڵ�ĺ���
    'tvwNext--2���ýڵ�������relative�б������ڵ�ĺ���
    'tvwPrevius--3���ýڵ�������relative�б������Ľڵ��ǰ��
    'tvwChild--4���ýڵ��Ϊ��relative�б������Ľڵ�ĵ��ӽڵ�
    'key: �ؼ���,Ψһ��.
    'text: �ڵ�����ʾ������
    'image: �ڵ�ǰ��Сͼ�� , ��Ҫ���ͼ��ؼ���, ��ʡ��
    '    With Me.TreeView1.Nodes
    '        .Add , 4, "K1", "���ࣨһ��", Form1.user_list_save.Picture
    '        .Add "K1", 4, , "С����1"
    '        .Add "K1", 4, , "С����2"
    '        .Add , 4, "K2", "���ࣨ����"
    '        .Add "K2", 4, , "С����1"
    '        .Add "K2", 4, , "С����2"
    '    End With
    
End Sub

Private Sub custom_sLabel_Click(Index As Integer)
    Shell "explorer.exe " & App_path & "\include\custom", vbNormalFocus
End Sub

Private Sub SysTreeView_NodeClick(ByVal Node As MSComctlLib.Node)
    Dim i As Byte
    For i = 1 To 9
        'If SysTreeView.Nodes(i).Image <> i Then SysTreeView.Nodes(i).Image = i
        FrameL(i).Visible = False
    Next i
    'Node.Image = 9 + Node.Index
    FrameL(Node.Index).Visible = True
    If Node.Index = 1 Then FrameL1_bgs.SetFocus
End Sub

Private Sub on_top_Timer_Timer()
    If sysSet.always_top = True Then Sys_on_top
    on_top_Timer.Enabled = False
    sys.Visible = False
    sys.Visible = True
    FrameL1_bgs.SetFocus
End Sub

Private Sub Form_Unload(Cancel As Integer)
    'If Form1.WindowState = 0 Then Form1.always_on_top sysSet.always_top
    Form1.Enabled = True
    Form1.Show
End Sub

Private Sub frame_def_Click()
    Call sys_def(SysTreeView.SelectedItem.Index)
End Sub

Private Sub frame_rec_Click()
    Call sys_def(SysTreeView.SelectedItem.Index)
    Call load_ini(SysTreeView.SelectedItem.Index)
End Sub

Private Sub list_copy_Click(Index As Integer)
    If list_copy(1).Value = True Then
        ubb_copy(0).Value = True
    Else
        ubb_copy(1).Value = True
    End If
End Sub

Private Sub LST_Help_Click()
    Dim help_str As String
    help_str = "HTML�����б�(Ĭ��):�����ڸ������ع���" & vbCrLf & _
    "��������: ֱ����������򿪲���" & vbCrLf & vbCrLf & _
    "LST�����б�:������flashget1.96�Ⱦ���汾" & vbCrLf & _
    "��������:�ļ��˵�->����LST�����б�" & vbCrLf & vbCrLf & _
    "TXT& BAT�����б�: �����������ڸ������ع���" & vbCrLf & _
    "��������:�ļ��˵�->����TXT�����б�" & vbCrLf & _
    "          ������ɺ�BAT�ļ���������Ŀ¼����" & vbCrLf & _
    "          �������������"
    Call MsgBox(help_str, vbOKOnly, "�����б��ļ�����˵��")
End Sub

Private Sub proxy_com1_Click()
    proxy_txt1(0).Text = ""
    proxy_txt1(1).Text = ""
    proxy_txt1(2).Text = ""
    proxy_txt2(0).Text = ""
    proxy_txt2(1).Text = ""
    proxy_txt2(2).Text = ""
    ProxyComb(0).ListIndex = 0
    ProxyComb(1).ListIndex = 0
End Sub

Private Sub proxy_com2_Click()
    proxy_txt2(0).Text = proxy_txt1(0).Text
    proxy_txt2(1).Text = proxy_txt1(1).Text
    proxy_txt2(2).Text = proxy_txt1(2).Text
    ProxyComb(1).ListIndex = ProxyComb(0).ListIndex
End Sub

Private Sub proxy_com3_Click()
    proxy_txt1(0).Text = proxy_txt2(0).Text
    proxy_txt1(1).Text = proxy_txt2(1).Text
    proxy_txt1(2).Text = proxy_txt2(2).Text
    ProxyComb(0).ListIndex = ProxyComb(1).ListIndex
End Sub

Private Sub sys_apply_Click()
    On Error Resume Next
    sys.Enabled = False
    '������������------------------------------------
    '��������
    For i = 0 To 3
        If downOp(i).Value = True Then
            Select Case i
            Case 0
                WriteIniStr "maincenter", "downloadblock", "10240"
            Case 1
                WriteIniStr "maincenter", "downloadblock", "51200"
            Case 2
                WriteIniStr "maincenter", "downloadblock", "102400"
            Case Else
                WriteIniStr "maincenter", "downloadblock", CLng(downHS.Value) * 1024
            End Select
            Exit For
        End If
    Next i
    '��ʱ
    WriteIniStr "maincenter", "time_out", VS_timeout.Value
    '����
    WriteIniStr "maincenter", "retry_times", VS_retry.Value
    '���������б��ʽ
    WriteIniStr "maincenter", "list_type", Combo_lst.ListIndex
    '��ʷ��������
    WriteIniStr "maincenter", "DelCache_BefDL", Combo_DelCache_BefDL.ListIndex
    WriteIniStr "maincenter", "DelCache_AftDL", Combo_DelCache_AftDL.ListIndex
        'httpͷǿ�Ʒ���no-cache
      WriteIniStr "maincenter", "Cache_no_cache", Check_no_cache.Value
        'httpͷǿ�Ʒ���no-store
      WriteIniStr "maincenter", "Cache_no_store", Check_no_store.Value
    '�û�����(User Agent)store
    Customize_UA_txt = Trim(Customize_UA_txt)
    Customize_UA_txt = Replace(Customize_UA_txt, Chr(10), "")
    Customize_UA_txt = Replace(Customize_UA_txt, Chr(13), "")
    Customize_UA_txt = Replace(Customize_UA_txt, vbNullChar, "")
    If Customize_UA_txt = "" Then Combo_UA_List.ListIndex = 1: Combo_UA_List.ListIndex = 0: If MsgBox("�û�����Ϊ��, ������վ���������ؿؼ��������س�������, �Ƿ�ʹ�ó���Ĭ��?", vbYesNo) = vbNo Then Customize_UA_txt = ""
    WriteIniStr "maincenter", "Customize_UA", Customize_UA_txt
    
    '�ļ�Ŀ¼����------------------------------------
    'Unicode�ļ���\�ļ���
    WriteIniStr "maincenter", "Unicode_File", Combo_unicode_ctrl(0).ListIndex
    '����Unicode�ı��ַ�
    WriteIniStr "maincenter", "Unicode_Str", Combo_unicode_ctrl(1).ListIndex
    '����Ĭ��·��
    If def_path(1).Value = True Then
        WriteIniTF "maincenter", "def_path_tf", True
        WriteIniStr "maincenter", "def_path", def_path_txt.Text
    Else
        WriteIniTF "maincenter", "def_path_tf", False
        WriteIniStr "maincenter", "def_path", ""
    End If
    '����ʱ���Ƿ�����ҳ��ַ��ΪĿ¼
        WriteIniTF "maincenter", "url_folder", set_url_folder(1).Value
    '�����ļ����Ѵ���
    If file_compare(1).Value = True Then
        WriteIniStr "maincenter", "file_compare", "1"
    ElseIf file_compare(2).Value = True Then
        WriteIniStr "maincenter", "file_compare", "2"
    Else
        WriteIniStr "maincenter", "file_compare", "0"
    End If
    'αͼ���
    WriteIniStr "maincenter", "fix_rar", Combo_rar.ListIndex
    'αͼ����
    fix_rar_name = ""
    If Combo_rar_name.ListCount > 1 Then
        For i = 1 To Combo_rar_name.ListCount - 1
            fix_rar_name = fix_rar_name & Combo_rar_name.List(i) & "|"
        Next i
    End If
    If Right(fix_rar_name, 1) = "|" Then fix_rar_name = Left(fix_rar_name, Len(fix_rar_name) - 1)
    WriteIniStr "maincenter", "fix_rar_name", fix_rar_name
    
    '�ű�����----------------------------------------
    '�ű���������
    If scriptOP(0).Value = True Then
        WriteIniStr "maincenter", "include_script", "delay"
    ElseIf scriptOP(1).Value = True Then
        WriteIniStr "maincenter", "include_script", "first"
    Else
        WriteIniStr "maincenter", "include_script", "close"
    End If
    'include�б�
    Dim sys_scriptlist_str As String
    sys_scriptlist_str = ""
    For i = 1 To scriptList.ListItems.count
        sys_scriptlist_str = sys_scriptlist_str & "|" & scriptList.ListItems(i).Text
        If scriptList.ListItems(i).Checked = True Then
            sys_scriptlist_str = sys_scriptlist_str & ",1"
        Else
            sys_scriptlist_str = sys_scriptlist_str & ",0"
        End If
    Next
    sys_scriptlist_str = OX_Check_include_scriptlist(Mid(sys_scriptlist_str, 2), False) 'Midȥ����һ��"|"
    WriteIniStr "maincenter", "include_scriptList", sys_scriptlist_str
    
    '�������������----------------------------------
    Select Case ProxyComb(0).ListIndex
    Case 1
        WriteIniStr "proxyset", "proxy_A_type", "icDirect"
    Case 2
        WriteIniStr "proxyset", "proxy_A_type", "icNamedProxy"
    Case Else
        WriteIniStr "proxyset", "proxy_A_type", "icUseDefault"
    End Select
    
    Select Case ProxyComb(1).ListIndex
    Case 1
        WriteIniStr "proxyset", "proxy_B_type", "icDirect"
    Case 2
        WriteIniStr "proxyset", "proxy_B_type", "icNamedProxy"
    Case Else
        WriteIniStr "proxyset", "proxy_B_type", "icUseDefault"
    End Select
    
    proxy_txt1(0) = Trim(Replace(Replace(proxy_txt1(0), Chr(10), ""), Chr(13), ""))
    proxy_txt1(1) = Trim(Replace(Replace(proxy_txt1(1), Chr(10), ""), Chr(13), ""))
    proxy_txt1(2) = Trim(Replace(Replace(proxy_txt1(2), Chr(10), ""), Chr(13), ""))
    proxy_txt2(0) = Trim(Replace(Replace(proxy_txt2(0), Chr(10), ""), Chr(13), ""))
    proxy_txt2(1) = Trim(Replace(Replace(proxy_txt2(1), Chr(10), ""), Chr(13), ""))
    proxy_txt2(2) = Trim(Replace(Replace(proxy_txt2(2), Chr(10), ""), Chr(13), ""))
    'proxy_A
    WriteIniStr "proxyset", "proxy_A", proxy_txt1(0)
    WriteIniStr "proxyset", "proxy_A_user", proxy_txt1(1)
    WriteIniStr "proxyset", "proxy_A_pw", proxy_txt1(2)
    'proxy_B
    WriteIniStr "proxyset", "proxy_B", proxy_txt2(0)
    WriteIniStr "proxyset", "proxy_B_user", proxy_txt2(1)
    WriteIniStr "proxyset", "proxy_B_pw", proxy_txt2(2)
    '��������������ô���A
    WriteIniStr "proxyset", "web_proxy", web_proxy_box.Value
    
    '�����������------------------------------------
    '�Զ�����
        WriteIniTF "maincenter", "autocheck", autoOp(1).Value
    '���·���������
    If Left(LCase(update_host_Text), 7) = "http://" Or Left(LCase(update_host_Text), 8) = "https://" Then
        WriteIniStr "maincenter", "update_host", update_host_Text
    Else
        WriteIniStr "maincenter", "update_host", "http://shj.ugschina.com/163/"
    End If
    '�б�ʱ��ʾ�б�
        WriteIniTF "maincenter", "listshow", listOp(1).Value = True
    '�Ƿ���С����ϵͳ����
        WriteIniTF "maincenter", "sysTray", set_tray(1).Value
    '�Ƿ���ʾ��Ϣ��
        WriteIniTF "maincenter", "bottom_StatusBar", set_sbar(1).Value
    '�Ƿ��Զ�ȫ����Ƕ�ѡ��
        WriteIniTF "maincenter", "check_all", set_checkall(1).Value
    '�Ƿ�������ק���¹����б�
        WriteIniTF "maincenter", "OX_List_Drag", Op_List_Drag(1).Value
    '�ضϹ����ļ���(��250�ַ�)��
        WriteIniTF "maincenter", "OX_Cut_Filelen", Op_Cut_Filelen(1).Value
        
    '�ȼ��뾯���------------------------------------
    '��������(url && Lst)��������
        WriteIniTF "maincenter", "list_copy", list_copy(1).Value
    'Ŀ¼����ʱ�����浽downloadĿ¼
        WriteIniTF "maincenter", "savedef", saveOp(1).Value
    '����ִ��ʱ�����˳�ѯ��
        WriteIniTF "maincenter", "askquit", quitOp(1).Value
    '�������ʱ��ѯ���Ƿ��������룿
        WriteIniTF "maincenter", "change_psw", changepsw(1).Value
    '������ɺ��Ƿ������ʾ��
        WriteIniTF "maincenter", "openfloder", askfloder(1).Value
        
    '�����������------------------------------------
    '163�����֤��
    passcode_text(0) = Replace(Replace(passcode_text(0), Chr(10), ""), Chr(13), "")
    passcode_text(1) = Replace(Replace(passcode_text(1), Chr(10), ""), Chr(13), "")
    passcode_text(2) = Replace(Replace(passcode_text(2), Chr(10), ""), Chr(13), "")
    If passcode_text(0) = "" Or passcode_text(1) = "" Or passcode_text(2) = "" Then
            passcode_text(0) = "wehi"
            passcode_text(1) = "1530930"
            passcode_text(2) = "asd"
    End If
    WriteIniStr "maincenter", "new163passcode_user", passcode_text(0)
    WriteIniStr "maincenter", "new163passcode_album", passcode_text(1)
    WriteIniStr "maincenter", "new163passcode_pw", passcode_text(2)
    '�Ƿ�����163���������������
        WriteIniTF "maincenter", "new163pass_rules", new163passrule(1).Value
        
    '�������������------------------------------------
    '�Ƿ���ֹ����������¿�����
        WriteIniTF "maincenter", "new_ie_win", ie_window(1).Value
    '�Ƿ���OX163���´���
        WriteIniTF "maincenter", "ox163_ie_win", ox163_window(1).Value
    '---------------------------------------------------
    
    '���������趨
    OX_GetIni_Setting sysSet
    If sysSet.def_path_tf = True Then Form1.fast_set_dir.Enabled = True: Form1.fast_set_dir.Checked = True
    
    If sysSet.bottom_StatusBar = True Then
        Form1.show_StatusBar = 255
        Form1.StatusBar.Visible = True
        If Form1.form_height < 3000 Then Form1.form_height = 1470 + Form1.show_StatusBar
        If Form1.Height < 1470 + Form1.show_StatusBar Then Form1.Height = 1470 + Form1.show_StatusBar
        Form1.frame_resize
    Else
        Form1.show_StatusBar = 0
        Form1.StatusBar.Visible = False
        If Form1.form_height < 3000 Then Form1.form_height = 1470
        Form1.frame_resize
    End If
    
    If sysSet.def_path_tf = True Then
        sysSet.def_path = GetIniStr("maincenter", "def_path")
        If Mid(sysSet.def_path, 2, 2) <> ":\" And Len(sysSet.def_path) > 2 Then GoTo reset_path
        If Right(sysSet.def_path, 1) = "\" Then sysSet.def_path = Mid(sysSet.def_path, 1, Len(sysSet.def_path) - 1): WriteIniStr "maincenter", "def_path", sysSet.def_path
        If (GetFileAttributes(sysSet.def_path) = -1) Then GoTo reset_path
    Else
reset_path:
        sysSet.def_path_tf = False
        def_path(0).Value = True
        If sysSet.def_path <> "" Then sysSet.def_path = "": WriteIniStr "maincenter", "def_path", ""
    End If
        
    Call Proxy_set
    
    If sysSet.list_type >= 0 And sysSet.list_type <= 2 Then
        Form1.list_output.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
        Form1.out_all.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
        Form1.user_list_output.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
    End If
    
    Form1.fast_set_ListDrag.Checked = False
    If sysSet.OX_List_Drag = True Then Form1.fast_set_ListDrag.Checked = True
    
    sys.Enabled = True
End Sub

Private Sub ubb_copy_Click(Index As Integer)
    If ubb_copy(1).Value = True Then
        list_copy(0).Value = True
    Else
        list_copy(1).Value = True
    End If
End Sub

Private Sub sys_def_com_Click(Index As Integer)
    Call sys_def(0)
End Sub

Private Sub sys_def(ByVal frameID As Byte)
    On Error Resume Next
    '������������------------------------------------
    If frameID = 0 Or frameID = 1 Then
        '��������
        downOp(1).Value = True
        '��ʱ
        VS_timeout.Value = 30
        '����
        VS_retry.Value = 5
        '���������б��ʽ
        Combo_lst.ListIndex = 1
        '��ʷ��������
        Combo_DelCache_BefDL.ListIndex = 0
        Combo_DelCache_AftDL.ListIndex = 0
        'httpͷǿ�Ʒ���no-cache
        Check_no_cache.Value = 0
        'httpͷǿ�Ʒ���no-store
        Check_no_store.Value = 0
        '�û�����(User Agent)
        Combo_UA_List.ListIndex = 1
        Combo_UA_List.ListIndex = 0
    End If
    
    '�ļ�Ŀ¼����------------------------------------
    If frameID = 0 Or frameID = 2 Then
        'Unicode�ļ���\�ļ���
        Combo_unicode_ctrl(0).ListIndex = 0
        '����Unicode�ı��ַ���
        Combo_unicode_ctrl(1).ListIndex = 0
        '����Ĭ��·��
        def_path(0).Value = True
        def_path_txt = ""
        '����ʱ���Ƿ�����ҳ��ַ��ΪĿ¼
        set_url_folder(0).Value = True
        '�����ļ����Ѵ���
        file_compare(1).Value = True
        'αͼ���
        Combo_rar.ListIndex = 1
        fix_name_list "RAR|ZIP|7Z|PNG|BMP"
        Combo_rar_name.ListIndex = 0
    End If
    
    '�ű�����---------------------------------------
    If frameID = 0 Or frameID = 3 Then
        scriptOP(0).Value = True
        scriptList.ListItems.Clear
        scriptList.ListItems.Add , , "sys_163"
        scriptList.ListItems(scriptList.ListItems.count).Checked = True
        scriptList.ListItems.Add , , "sys_include"
        scriptList.ListItems(scriptList.ListItems.count).Checked = True
    End If
    
    '�������������------------------------------------
    If frameID = 0 Or frameID = 4 Then
        proxy_txt1(0).Text = ""
        proxy_txt1(1).Text = ""
        proxy_txt1(2).Text = ""
        proxy_txt2(0).Text = ""
        proxy_txt2(1).Text = ""
        proxy_txt2(2).Text = ""
        ProxyComb(0).ListIndex = 0
        ProxyComb(1).ListIndex = 0
        web_proxy_box.Value = 1
    End If
    
    '�����������------------------------------------
    If frameID = 0 Or frameID = 5 Then
        '�Զ�����
        autoOp(1).Value = True
        '���·���������
        update_host_Combo.List(0) = "Ĭ������|" & "http://shj.ugschina.com/163/"
        update_host_1 = Split(update_host_info1, "|")
        update_host_2 = Split(update_host_info2, "|")
        For i = 0 To UBound(update_host_1)
            update_host_Combo.List(i + 1) = update_host_2(i) & "|" & update_host_1(i)
        Next i
        update_host_Combo.ListIndex = 0
        '�б�ʱ��ʾ�б�
        listOp(0).Value = True
        '�Ƿ���С����ϵͳ����
        set_tray(0).Value = True
        '�Ƿ���ʾ��Ϣ��
        set_sbar(1).Value = True
        '�Ƿ��Զ�ȫ����Ƕ�ѡ��
        set_checkall(1).Value = True
        '�Ƿ�������ק���¹����б�
        Op_List_Drag(0).Value = True
        '�ضϹ����ļ���(��250�ַ�)��
        Op_Cut_Filelen(1).Value = True
    End If
    
    '�ȼ��뾯���------------------------------------
    If frameID = 0 Or frameID = 6 Then
        '��������(url && Lst)��������
        list_copy(1).Value = True
        'Ŀ¼����ʱ�����浽downloadĿ¼
        saveOp(1).Value = True
        '����ִ��ʱ�����˳�ѯ��
        quitOp(1).Value = True
        '�������ʱ��ѯ���Ƿ��������룿
        changepsw(1).Value = True
        '������ɺ��Ƿ������ʾ��
        askfloder(1).Value = True
    End If
    
    '�����������------------------------------------
    If frameID = 0 Or frameID = 7 Then
        '163�����֤��
        passcode_text(0) = "wehi"
        passcode_text(1) = "1530930"
        passcode_text(2) = "asd"
        '�Ƿ�����163���������������
        new163passrule(1).Value = True
    End If
    
    '�������������------------------------------------
    If frameID = 0 Or frameID = 8 Then
        '�Ƿ���ֹ����������¿�����
        ie_window(1).Value = True
        '�Ƿ���OX163���´���
        ox163_window(1).Value = True
    End If
End Sub

Private Sub sys_no_Click()
    Unload sys
End Sub

Private Sub load_ini(ByVal frameID As Byte)
    On Error Resume Next
    Dim load_ini_sysSetting As sysSetting
    
    load_ini_sysSetting = OX_Default_Setting
    OX_GetIni_Setting load_ini_sysSetting
    
    '������������------------------------------------
    If frameID = 0 Or frameID = 1 Then
        '��������
        Select Case load_ini_sysSetting.downloadblock
        Case 10240
            downOp(0).Value = True
        Case 51200
            downOp(1).Value = True
        Case 102400
            downOp(2).Value = True
        Case Else
            downOp(3).Value = True
            If load_ini_sysSetting.downloadblock <= 1024000 Then
                downHS.Value = Int(load_ini_sysSetting.downloadblock / 1024)
            Else
                downHS.Value = 1000
            End If
        End Select
        '��ʱ
        If load_ini_sysSetting.time_out <= 200 And load_ini_sysSetting.time_out >= 10 Then
            VS_timeout.Value = load_ini_sysSetting.time_out
        Else
            VS_timeout.Value = 30
        End If
        '����
        If load_ini_sysSetting.retry_times <= 255 And load_ini_sysSetting.retry_times >= 0 Then
            VS_retry.Value = load_ini_sysSetting.retry_times
        Else
            VS_retry.Value = 5
        End If
        '���������б��ʽ
        If load_ini_sysSetting.list_type >= 0 And load_ini_sysSetting.list_type <= 2 Then
            Combo_lst.ListIndex = load_ini_sysSetting.list_type
        End If
        '��ʷ��������
        If load_ini_sysSetting.DelCache_BefDL >= 0 And load_ini_sysSetting.DelCache_BefDL <= 3 Then Combo_DelCache_BefDL.ListIndex = load_ini_sysSetting.DelCache_BefDL
        If load_ini_sysSetting.DelCache_AftDL >= 0 And load_ini_sysSetting.DelCache_AftDL <= 4 Then Combo_DelCache_AftDL.ListIndex = load_ini_sysSetting.DelCache_AftDL
        'httpͷǿ�Ʒ���no-cache
        Check_no_cache.Value = load_ini_sysSetting.Cache_no_cache
        'httpͷǿ�Ʒ���no-store
        Check_no_store.Value = load_ini_sysSetting.Cache_no_store
        '�û�����(User-Agent)
        Customize_UA_txt = load_ini_sysSetting.Customize_UA
    End If
    
    '�ļ�Ŀ¼����------------------------------------
    If frameID = 0 Or frameID = 2 Then
        'Unicode�ļ���\�ļ���
        If load_ini_sysSetting.Unicode_File >= 0 And load_ini_sysSetting.Unicode_File < 3 Then
            Combo_unicode_ctrl(0).ListIndex = load_ini_sysSetting.Unicode_File
        End If
        '����Unicode�ı��ַ���
        If load_ini_sysSetting.Unicode_Str >= 0 And load_ini_sysSetting.Unicode_Str < 3 Then
            Combo_unicode_ctrl(1).ListIndex = load_ini_sysSetting.Unicode_Str
        End If
        '����Ĭ��·��
        If load_ini_sysSetting.def_path_tf = True And load_ini_sysSetting.def_path <> "" Then
            def_path(1).Value = True
            def_path_txt = load_ini_sysSetting.def_path
        Else
            def_path(0).Value = True
        End If
        '����ʱ���Ƿ�����ҳ��ַ��ΪĿ¼
        If load_ini_sysSetting.url_folder = True Then set_url_folder(1).Value = True
        '�����ļ����Ѵ���
        If load_ini_sysSetting.file_compare = 0 Then
            file_compare(0).Value = True
        ElseIf load_ini_sysSetting.file_compare = 2 Then
            file_compare(2).Value = True
        Else
            file_compare(1).Value = True
        End If
        'αͼ���
        If load_ini_sysSetting.fix_rar >= 0 And load_ini_sysSetting.fix_rar < 3 Then
            Combo_rar.ListIndex = load_ini_sysSetting.fix_rar
        End If
        fix_name_list Trim(load_ini_sysSetting.fix_rar_name)
    End If
    
    '�ű�����---------------------------------------
    If frameID = 0 Or frameID = 3 Then
        Select Case load_ini_sysSetting.include_script
        Case "first"
            scriptOP(1).Value = True
        Case "close"
            scriptOP(2).Value = True
        Case Else
            scriptOP(0).Value = True
        End Select
        
        Dim sys_scriptlist_str, split_i
        scriptList.ListItems.Clear
        sys_scriptlist_str = Split(OX_Check_include_scriptlist(load_ini_sysSetting.include_scriptlist, False), "|")
        For split_i = 0 To UBound(sys_scriptlist_str)
            scriptList.ListItems.Add , , Left(sys_scriptlist_str(split_i), Len(sys_scriptlist_str(split_i)) - 2)
            scriptList.ListItems(scriptList.ListItems.count).Checked = (Right(sys_scriptlist_str(split_i), 1) = "1")
        Next
    End If
    
    '�������������------------------------------------
    If frameID = 0 Or frameID = 4 Then
        Select Case load_ini_sysSetting.proxy_A_type
        Case 1
            ProxyComb(0).ListIndex = 1
        Case 2
            ProxyComb(0).ListIndex = 2
        Case Else
            ProxyComb(0).ListIndex = 0
        End Select
        Select Case load_ini_sysSetting.proxy_B_type
        Case 1
            ProxyComb(1).ListIndex = 1
        Case 2
            ProxyComb(1).ListIndex = 2
        Case Else
            ProxyComb(1).ListIndex = 0
        End Select
        
        Dim proxy_str(2) As String
        Dim split_str
        proxy_str(0) = load_ini_sysSetting.proxy_A
        proxy_str(1) = load_ini_sysSetting.proxy_A_user
        proxy_str(2) = load_ini_sysSetting.proxy_A_pw
        
        proxy_str(0) = Replace(Replace(proxy_str(0), Chr(10), ""), Chr(13), "")
        proxy_str(1) = Replace(Replace(proxy_str(1), Chr(10), ""), Chr(13), "")
        proxy_str(2) = Replace(Replace(proxy_str(2), Chr(10), ""), Chr(13), "")
        
        If Len(proxy_str(0)) > 0 Then
            proxy_txt1(0) = proxy_str(0)
            proxy_txt1(1) = proxy_str(1)
            proxy_txt1(2) = proxy_str(2)
        End If
        
        proxy_str(0) = load_ini_sysSetting.proxy_B
        proxy_str(1) = load_ini_sysSetting.proxy_B_user
        proxy_str(2) = load_ini_sysSetting.proxy_B_pw
        
        proxy_str(0) = Replace(Replace(proxy_str(0), Chr(10), ""), Chr(13), "")
        proxy_str(1) = Replace(Replace(proxy_str(1), Chr(10), ""), Chr(13), "")
        proxy_str(2) = Replace(Replace(proxy_str(2), Chr(10), ""), Chr(13), "")
        
        If Len(proxy_str(0)) > 0 Then
            proxy_txt2(0) = proxy_str(0)
            proxy_txt2(1) = proxy_str(1)
            proxy_txt2(2) = proxy_str(2)
        End If
        
        Select Case load_ini_sysSetting.web_proxy
        Case 0
            web_proxy_box.Value = 0
        Case Else
            web_proxy_box.Value = 1
        End Select
    End If
    '�����������------------------------------------
    If frameID = 0 Or frameID = 5 Then
        '�Զ�����
        If load_ini_sysSetting.autocheck = False Then autoOp(0).Value = True
        '���·���������
        update_host_Combo.List(0) = "INI����|" & load_ini_sysSetting.update_host
        If update_host_Combo.List(0) = "INI����|" & "http://shj.ugschina.com/163/" Then update_host_Combo.List(0) = "Ĭ������|" & "http://shj.ugschina.com/163/"
        update_host_Combo.ListIndex = 0
        update_host_Text = load_ini_sysSetting.update_host
        '�б�ʱ��ʾ�б�
        If load_ini_sysSetting.listshow = True Then listOp(1).Value = True
        '�Ƿ���С����ϵͳ����
        If load_ini_sysSetting.sysTray = True Then set_tray(1).Value = True
        '�Ƿ���ʾ��Ϣ��
        If load_ini_sysSetting.bottom_StatusBar = False Then set_sbar(0).Value = True
        '�Ƿ��Զ�ȫ����Ƕ�ѡ��
        If load_ini_sysSetting.check_all = False Then set_checkall(0).Value = True
        '�Ƿ�������ק���¹����б�
        If load_ini_sysSetting.OX_List_Drag = True Then Op_List_Drag(1).Value = True
        '�ضϹ����ļ���(��250�ַ�)��
        If load_ini_sysSetting.OX_Cut_Filelen = False Then Op_Cut_Filelen(0).Value = True
    End If
    '�ȼ��뾯���------------------------------------
    If frameID = 0 Or frameID = 6 Then
        '��������(url && Lst)��������
        If load_ini_sysSetting.list_copy = False Then list_copy(0).Value = True
        'Ŀ¼����ʱ�����浽downloadĿ¼
        If load_ini_sysSetting.savedef = False Then saveOp(0).Value = True
        '����ִ��ʱ�����˳�ѯ��
        If load_ini_sysSetting.askquit = False Then quitOp(0).Value = True
        '�������ʱ��ѯ���Ƿ��������룿
        If load_ini_sysSetting.change_psw = False Then changepsw(0).Value = True
        '������ɺ��Ƿ������ʾ��
        If load_ini_sysSetting.openfloder = True Then askfloder(1).Value = True
    End If
    '�����������------------------------------------
    If frameID = 0 Or frameID = 7 Then
        '163�����֤��
        passcode_text(0) = load_ini_sysSetting.new163passcode_def(0)
        passcode_text(1) = load_ini_sysSetting.new163passcode_def(1)
        passcode_text(2) = load_ini_sysSetting.new163passcode_def(2)
        If passcode_text(0) = "" Or passcode_text(1) = "" Or passcode_text(2) = "" Then
            passcode_text(0) = "wehi"
            passcode_text(1) = "1530930"
            passcode_text(2) = "asd"
        End If
        '�Ƿ�����163���������������
        If load_ini_sysSetting.new163pass_rules = False Then new163passrule(0).Value = True
    End If
    '�������������------------------------------------
    If frameID = 0 Or frameID = 8 Then
        '�Ƿ���ֹ����������¿�����
        If load_ini_sysSetting.new_ie_win = False Then ie_window(0).Value = True
        '�Ƿ���OX163���´���
        If load_ini_sysSetting.ox163_ie_win = False Then ox163_window(0).Value = True
    End If
End Sub
Sub fix_name_list(ByVal fix_rar_name As String)
    Combo_rar_name.Clear
    Combo_rar_name.AddItem "����º�׺", 0
    Combo_rar_name.ListIndex = 0
    If fix_rar_name = "" Or fix_rar_name = "-1" Then Exit Sub
    name_list = Split(fix_rar_name, "|")
    For i = 0 To UBound(name_list)
        name_list(i) = Trim(name_list(i))
        If Len(name_list(i)) > 0 And is_fileName(name_list(i)) Then Combo_rar_name.AddItem name_list(i), i + 1
    Next i
    Combo_rar_name.ListIndex = 0
End Sub

Private Sub Command1_Click()
    Dim pos_i As Integer
    pos_i = Combo_rar_name.ListIndex
    '�����ظ�
    For i = 1 To Combo_rar_name.ListCount - 1
        If UCase(fix_name_Text.Text) = UCase(Combo_rar_name.List(i)) Then
            MsgBox "�ļ���׺���ظ���", vbOKOnly + vbExclamation, "����"
            Combo_rar_name.ListIndex = pos_i
            Exit Sub
        End If
    Next i
    Combo_rar_name.ListIndex = pos_i
    '����º�׺
    If Combo_rar_name.ListIndex = 0 Then
        If is_fileName(fix_name_Text.Text) And fix_name_Text.Text <> "" Then
            Combo_rar_name.AddItem fix_name_Text.Text
            Combo_rar_name.ListIndex = Combo_rar_name.ListCount - 1
        Else
            MsgBox "�ļ���׺������ȷ��", vbOKOnly + vbExclamation, "����"
        End If
    Else
    '�޸ĺ�׺
        If is_fileName(fix_name_Text.Text) And fix_name_Text.Text <> "" Then
            Combo_rar_name.List(pos_i) = fix_name_Text.Text
        ElseIf fix_name_Text.Text = "" Then
            Combo_rar_name.RemoveItem Combo_rar_name.ListIndex
            Combo_rar_name.ListIndex = 0
        Else
            MsgBox "�ļ���׺������ȷ��", vbOKOnly + vbExclamation, "����"
        End If
    End If
End Sub


Private Sub sys_rec_Click(Index As Integer)
    Call sys_def(0)
    Call load_ini(0)
End Sub

Private Sub sys_yes_Click()
    Call sys_apply_Click
    Unload sys
    Form1.Show
End Sub

Private Sub update_host_Combo_Click()
    update_host_Text = update_host_Combo.List(update_host_Combo.ListIndex)
    update_host_Text = Mid(update_host_Text, InStr(update_host_Text, "|") + 1)
End Sub

Private Sub update_host_Combo_KeyUp(KeyCode As Integer, Shift As Integer)
    update_host_Text = update_host_Combo.List(update_host_Combo.ListIndex)
    update_host_Text = Mid(update_host_Text, InStr(update_host_Text, "|") + 1)
End Sub

Private Sub VS_retry_Change()
    If VS_retry.Value > 0 Then
        LB_retry.caption = VS_retry.Value & "��"
    Else
        LB_retry.caption = "��������"
    End If
End Sub

Private Sub VS_timeout_Change()
    LB_timeout.caption = VS_timeout.Value & "��"
End Sub

'-----------------------------------------------------------------------------
Private Sub scriptList_DragOver(Source As Control, x As Single, y As Single, State As Integer)
    Dim li As ListItem
    
    Set li = scriptList.HitTest(x, y)
    If Not li Is Nothing Then
        li.EnsureVisible
        scriptList.DropHighlight = li
    End If
End Sub
Private Sub scriptList_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 1 Then
        Set m_dragItem = scriptList.HitTest(x, y)
        'scriptList.MousePointer = 7
    End If
End Sub
Private Sub scriptList_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
    If Button = 1 Then
        If Not m_dragItem Is Nothing Then
            'scriptList.DragIcon = ToolTip_Frame.MouseIcon
            scriptList.DragIcon = m_dragItem.CreateDragImage
            scriptList.Drag vbBeginDrag
        End If
    End If
End Sub
Private Sub scriptList_DragDrop(Source As Control, x As Single, y As Single)
    Dim li As ListItem
    Dim addli As ListItem
    Dim i As Integer
    Dim li_check As Boolean
    
    Set li = scriptList.HitTest(x, y)
    
    If (Not li Is Nothing) And (Not m_dragItem Is Nothing) Then
        
        If li.Index <> m_dragItem.Index Then
            li_check = True
            li_check = scriptList.ListItems(m_dragItem.Index).Checked
            If li.Index > m_dragItem.Index Then
                scriptList.ListItems.Remove m_dragItem.Index
                Set addli = scriptList.ListItems.Add(li.Index + 1, m_dragItem.key, m_dragItem.Text)
                addli.Checked = li_check
            Else
                scriptList.ListItems.Remove m_dragItem.Index
                Set addli = scriptList.ListItems.Add(li.Index, m_dragItem.key, m_dragItem.Text)
                addli.Checked = li_check
            End If
            For i = 1 To m_dragItem.ListSubItems.count
                addli.SubItems(i) = m_dragItem.ListSubItems(i).Text
            Next i
        End If
    End If
    
    scriptList.DropHighlight = Nothing
    Set m_dragItem = Nothing
    scriptList.Refresh
    'scriptList.MousePointer = 0
End Sub

'------------------------------------------------------------------------------------------
'------------------------------------------------------------------------------------------
'------------------------------------------------------------------------------------------
Private Sub web_proxy_box_Click()
    If web_proxy_box.Value <> sysSet.web_proxy And web_proxy_box.Value = 0 Then
        MsgBox "�رոù��ܺ󣬿�����Ҫ�����������������Ч", vbOKOnly, "��ʾ"
    End If
End Sub
