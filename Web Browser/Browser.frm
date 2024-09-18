VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form LoreBrowser 
   Caption         =   "Form1"
   ClientHeight    =   9315
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12555
   LinkTopic       =   "Form1"
   ScaleHeight     =   9315
   ScaleWidth      =   12555
   StartUpPosition =   3  'Windows Default
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   8640
      Left            =   0
      TabIndex        =   2
      Top             =   720
      Width           =   12600
      ExtentX         =   22225
      ExtentY         =   15240
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
      Location        =   ""
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   660
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12555
      _ExtentX        =   22146
      _ExtentY        =   1164
      ButtonWidth     =   609
      ButtonHeight    =   1005
      Appearance      =   1
      _Version        =   393216
      Begin VB.CommandButton btnGo 
         Caption         =   "Go"
         Height          =   615
         Left            =   7200
         TabIndex        =   3
         Top             =   0
         Width           =   1215
      End
      Begin VB.TextBox txtURL 
         Height          =   375
         Left            =   1200
         TabIndex        =   1
         Text            =   "https://google.com"
         Top             =   120
         Width           =   5895
      End
   End
End
Attribute VB_Name = "LoreBrowser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnGo_Click()
    If txtURL.Text <> "" Then
    WebBrowser1.Navigate txtURL.Text
    End If
End Sub

Private Sub Form_Load()
    WebBrowser1.Navigate "https://google.com"
End Sub
