object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calc'
  ClientHeight = 327
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnVezes: TButton
    Left = 193
    Top = 128
    Width = 52
    Height = 41
    Caption = 'x'
    TabOrder = 0
    OnClick = btnVezesClick
  end
  object btnTres: TButton
    Left = 135
    Top = 224
    Width = 52
    Height = 42
    Caption = '3'
    TabOrder = 1
    OnClick = addNumero
  end
  object btnCinco: TButton
    Left = 77
    Top = 176
    Width = 52
    Height = 42
    Caption = '5'
    TabOrder = 2
    OnClick = addNumero
  end
  object btnDois: TButton
    Left = 77
    Top = 224
    Width = 52
    Height = 42
    Margins.Right = 8
    Caption = '2'
    TabOrder = 3
    OnClick = addNumero
  end
  object btnQuatro: TButton
    Left = 19
    Top = 176
    Width = 52
    Height = 42
    Caption = '4'
    TabOrder = 4
    OnClick = addNumero
  end
  object btnIgual: TButton
    Left = 140
    Top = 272
    Width = 105
    Height = 42
    Caption = '='
    TabOrder = 5
    OnClick = btnIgualClick
  end
  object btnMais: TButton
    Left = 193
    Top = 224
    Width = 52
    Height = 42
    Caption = '+'
    TabOrder = 6
    OnClick = btnMaisClick
  end
  object btnMenos: TButton
    Left = 193
    Top = 176
    Width = 52
    Height = 42
    Caption = '-'
    TabOrder = 7
    OnClick = btnMenosClick
  end
  object btnSeis: TButton
    Left = 135
    Top = 176
    Width = 52
    Height = 42
    Caption = '6'
    TabOrder = 8
    OnClick = addNumero
  end
  object btnSet: TButton
    Left = 19
    Top = 128
    Width = 52
    Height = 42
    Caption = '7'
    TabOrder = 9
    OnClick = addNumero
  end
  object btnOito: TButton
    Left = 77
    Top = 128
    Width = 52
    Height = 42
    Caption = '8'
    TabOrder = 10
    OnClick = addNumero
  end
  object btnNove: TButton
    Left = 135
    Top = 128
    Width = 52
    Height = 42
    Caption = '9'
    TabOrder = 11
    OnClick = addNumero
  end
  object btnZero: TButton
    Left = 19
    Top = 271
    Width = 110
    Height = 42
    Caption = '0'
    TabOrder = 12
    OnClick = addNumero
  end
  object btnUm: TButton
    Left = 19
    Top = 223
    Width = 52
    Height = 42
    Caption = '1'
    TabOrder = 13
    OnClick = addNumero
  end
  object btnDividir: TButton
    Left = 193
    Top = 80
    Width = 52
    Height = 42
    Caption = '/'
    TabOrder = 14
    OnClick = btnDividirClick
  end
  object btnLimpar: TButton
    Left = 19
    Top = 81
    Width = 118
    Height = 41
    Caption = 'Limpar'
    TabOrder = 15
    OnClick = btnLimparClick
  end
  object panelDisplay: TPanel
    Left = 19
    Top = 8
    Width = 226
    Height = 66
    Alignment = taRightJustify
    BorderStyle = bsSingle
    Caption = '0'
    Color = clWhite
    ParentBackground = False
    TabOrder = 16
  end
end
