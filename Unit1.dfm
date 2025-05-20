object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object paintBackground: TPaintBox
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Cursor = crCross
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    OnPaint = paintBackgroundPaint
    ExplicitTop = 5
  end
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Cursor = crCross
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    OnPaint = paintBackgroundPaint
    ExplicitTop = 12
  end
  object BaseX: TLabel
    Left = 208
    Top = 114
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleName = 'fo'
  end
  object BaseO: TLabel
    Left = 392
    Top = 114
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleName = 'fo'
  end
  object versus: TLabel
    Left = 257
    Top = 138
    Width = 122
    Height = 29
    Cursor = crCross
    Caption = 'Tic-Tac-Toe'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
    StyleName = 'fo'
    OnClick = versusClick
  end
  object x11: TLabel
    Left = 200
    Top = 173
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x12: TLabel
    Left = 288
    Top = 173
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x13: TLabel
    Left = 366
    Top = 173
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x23: TLabel
    Left = 345
    Top = 237
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x21: TLabel
    Left = 179
    Top = 237
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x22: TLabel
    Left = 267
    Top = 237
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x33: TLabel
    Left = 336
    Top = 302
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x31: TLabel
    Left = 170
    Top = 302
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object x32: TLabel
    Left = 258
    Top = 302
    Width = 35
    Height = 67
    Cursor = crCross
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o11: TLabel
    Left = 200
    Top = 173
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o12: TLabel
    Left = 288
    Top = 176
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o13: TLabel
    Left = 366
    Top = 176
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o21: TLabel
    Left = 186
    Top = 232
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o22: TLabel
    Left = 277
    Top = 232
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o23: TLabel
    Left = 355
    Top = 232
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o33: TLabel
    Left = 341
    Top = 302
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o32: TLabel
    Left = 258
    Top = 305
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object o31: TLabel
    Left = 170
    Top = 305
    Width = 38
    Height = 67
    Cursor = crCross
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
    StyleName = 'fo'
  end
  object btn11: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Cursor = crCross
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 105
    Top = 24
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn12Click
  end
  object btn13: TButton
    Left = 186
    Top = 24
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn13Click
  end
  object btn21: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn21Click
  end
  object btn22: TButton
    Left = 105
    Top = 55
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btn22Click
  end
  object btn31: TButton
    Left = 24
    Top = 87
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btn31Click
  end
  object btn33: TButton
    Left = 186
    Top = 86
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btn33Click
  end
  object btn23: TButton
    Left = 186
    Top = 55
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btn23Click
  end
  object btn32: TButton
    Left = 105
    Top = 87
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btn32Click
  end
  object btn213: TButton
    Left = 528
    Top = 24
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btn213Click
  end
  object btn212: TButton
    Left = 447
    Top = 24
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btn212Click
  end
  object btn211: TButton
    Left = 366
    Top = 24
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = btn211Click
  end
  object btn221: TButton
    Left = 366
    Top = 55
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = btn221Click
  end
  object btn222: TButton
    Left = 447
    Top = 55
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = btn222Click
  end
  object btn223: TButton
    Left = 528
    Top = 55
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = btn223Click
  end
  object btn231: TButton
    Left = 366
    Top = 86
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = btn231Click
  end
  object btn232: TButton
    Left = 447
    Top = 86
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = btn232Click
  end
  object btn233: TButton
    Left = 528
    Top = 86
    Width = 75
    Height = 25
    Cursor = crCross
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = btn233Click
  end
  object btnStart: TButton
    Left = 267
    Top = 55
    Width = 93
    Height = 25
    Cursor = crHandPoint
    Caption = 'START'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = btnStartClick
  end
  object timerBrat: TTimer
    OnTimer = timerBratTimer
    Left = 64
    Top = 144
  end
end
