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
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    OnPaint = paintBackgroundPaint
    ExplicitTop = -8
  end
  object BaseX: TLabel
    Left = 208
    Top = 117
    Width = 31
    Height = 55
    Caption = 'X'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleName = 'fo'
  end
  object BaseO: TLabel
    Left = 392
    Top = 117
    Width = 37
    Height = 55
    Caption = 'O'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    StyleName = 'fo'
  end
  object versus: TLabel
    Left = 257
    Top = 133
    Width = 112
    Height = 24
    Caption = 'Tic-Tac-Toe'
    Color = clNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
    StyleName = 'fo'
    OnClick = versusClick
  end
  object btn11: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 105
    Top = 25
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn12Click
  end
  object btn13: TButton
    Left = 186
    Top = 24
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn13Click
  end
  object btn21: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn21Click
  end
  object btn22: TButton
    Left = 105
    Top = 55
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btn22Click
  end
  object btn31: TButton
    Left = 24
    Top = 87
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btn31Click
  end
  object btn33: TButton
    Left = 186
    Top = 86
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btn33Click
  end
  object btn23: TButton
    Left = 186
    Top = 55
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btn23Click
  end
  object btn32: TButton
    Left = 105
    Top = 87
    Width = 75
    Height = 25
    Caption = 'X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btn32Click
  end
  object btn213: TButton
    Left = 528
    Top = 24
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btn213Click
  end
  object btn212: TButton
    Left = 447
    Top = 24
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btn212Click
  end
  object btn211: TButton
    Left = 366
    Top = 24
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btn211Click
  end
  object btn221: TButton
    Left = 366
    Top = 55
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = btn221Click
  end
  object btn222: TButton
    Left = 447
    Top = 55
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = btn222Click
  end
  object btn223: TButton
    Left = 528
    Top = 55
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = btn223Click
  end
  object btn231: TButton
    Left = 366
    Top = 86
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = btn231Click
  end
  object btn232: TButton
    Left = 447
    Top = 86
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = btn232Click
  end
  object btn233: TButton
    Left = 528
    Top = 86
    Width = 75
    Height = 25
    Caption = 'O'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = '@Malgun Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = btn233Click
  end
  object btnStart: TButton
    Left = 267
    Top = 55
    Width = 93
    Height = 25
    Caption = 'START'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 18
    OnClick = btnStartClick
  end
  object timerBrat: TTimer
    OnTimer = timerBratTimer
    Left = 272
    Top = 216
  end
end
