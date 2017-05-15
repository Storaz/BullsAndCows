object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 254
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 53
    Width = 47
    Height = 13
    Caption = 'Votre mot'
  end
  object Label2: TLabel
    Left = 45
    Top = 96
    Width = 21
    Height = 13
    Caption = 'Bulls'
  end
  object looool: TLabel
    Left = 45
    Top = 142
    Width = 21
    Height = 13
    Caption = 'Cow'
  end
  object Label4: TLabel
    Left = 325
    Top = 70
    Width = 45
    Height = 13
    Caption = 'Nb essais'
  end
  object Label3: TLabel
    Left = 35
    Top = 26
    Width = 31
    Height = 13
    Caption = 'lettres'
  end
  object mot: TEdit
    Left = 72
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object bulls: TEdit
    Left = 72
    Top = 93
    Width = 57
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object cows: TEdit
    Left = 72
    Top = 139
    Width = 57
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object essais: TEdit
    Left = 376
    Top = 67
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object gg: TEdit
    Left = 189
    Top = 111
    Width = 252
    Height = 44
    TabOrder = 4
    Text = 'Vous avez gagn'#233' ! C'#39'est fou !'
    Visible = False
  end
  object Button1: TButton
    Left = 118
    Top = 209
    Width = 75
    Height = 25
    Caption = 'Check'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 209
    Width = 75
    Height = 25
    Caption = 'RAZ'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 376
    Top = 209
    Width = 75
    Height = 25
    Caption = 'Quitter'
    TabOrder = 7
    OnClick = Button3Click
  end
  object mots: TMemo
    Left = 472
    Top = 157
    Width = 49
    Height = 89
    Lines.Strings = (
      'mots')
    TabOrder = 8
    Visible = False
  end
  object chercher: TEdit
    Left = 527
    Top = 172
    Width = 61
    Height = 21
    TabOrder = 9
    Text = 'chercher'
    Visible = False
  end
  object Button4: TButton
    Left = 118
    Top = 170
    Width = 333
    Height = 25
    Caption = 'Lancer la partie'
    TabOrder = 10
    OnClick = Button4Click
  end
  object lettres: TEdit
    Left = 72
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 11
  end
end
