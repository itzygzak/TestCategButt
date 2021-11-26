object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 213
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 40
    Width = 238
    Height = 13
    Caption = 'Zostanie zainstalowana baza danych produkcyjna'
  end
  object rzPrgrsBr1: TRzProgressBar
    Left = 32
    Top = 128
    BorderWidth = 0
    InteriorOffset = 0
    PartsComplete = 0
    Percent = 0
    TotalParts = 0
  end
  object lbl2: TLabel
    Left = 55
    Top = 68
    Width = 196
    Height = 13
    Caption = 'Zainstaluj r'#243'wnie'#380' baz'#281' demonstracyjn'#261'.'
  end
  object lbl3: TLabel
    Left = 320
    Top = 8
    Width = 16
    Height = 13
    Caption = 'lbl3'
  end
  object lbl4: TLabel
    Left = 408
    Top = 8
    Width = 16
    Height = 13
    Caption = 'lbl4'
  end
  object btn1: TButton
    Left = 432
    Top = 168
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 0
  end
  object chk1: TCheckBox
    Left = 32
    Top = 67
    Width = 17
    Height = 17
    TabOrder = 1
  end
  object btn2: TButton
    Left = 296
    Top = 168
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 2
    OnClick = btn2Click
  end
  object pb1: TProgressBar
    Left = 32
    Top = 168
    Width = 150
    Height = 17
    TabOrder = 3
  end
  object mmo1: TMemo
    Left = 322
    Top = 37
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 4
    OnMouseMove = mmo1MouseMove
  end
  object pb2: TProgressBar
    Left = 32
    Top = 104
    Width = 150
    Height = 17
    TabOrder = 5
  end
end
