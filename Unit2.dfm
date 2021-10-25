object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 264
    Top = 216
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object btn1: TButton
    Left = 536
    Top = 24
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 536
    Top = 88
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 1
    OnClick = btn2Click
  end
  object grp1: TGroupBox
    Left = 24
    Top = 24
    Width = 185
    Height = 225
    Caption = 'grp1'
    TabOrder = 2
    object btn3: TButton
      Left = 32
      Top = 24
      Width = 75
      Height = 25
      Caption = 'btn3'
      TabOrder = 0
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 40
      Top = 64
      Width = 75
      Height = 25
      Caption = 'btn4'
      TabOrder = 1
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 40
      Top = 104
      Width = 75
      Height = 25
      Caption = 'btn5'
      TabOrder = 2
      OnClick = btn5Click
    end
    object btn6: TButton
      Left = 32
      Top = 152
      Width = 75
      Height = 25
      Caption = 'btn6'
      TabOrder = 3
      OnClick = btn6Click
    end
    object btn7: TButton
      Left = 24
      Top = 184
      Width = 75
      Height = 25
      Caption = 'btn7'
      TabOrder = 4
      OnClick = btn7Click
    end
  end
  object lv1: TListView
    Left = 248
    Top = 32
    Width = 273
    Height = 150
    BorderWidth = 1
    Columns = <>
    FullDrag = True
    GridLines = True
    IconOptions.AutoArrange = True
    Items.ItemData = {
      05640000000300000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
      000361006100610000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000
      04730073007300730000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
      00046400640064006400}
    TabOrder = 3
  end
end
