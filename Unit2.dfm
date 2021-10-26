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
    Left = 168
    Top = 264
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
    Left = 385
    Top = 66
    Width = 129
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
  object btnlv: TButton
    Left = 520
    Top = 135
    Width = 75
    Height = 25
    Caption = 'btnlv'
    TabOrder = 3
  end
  object rzLstVw1: TRzListView
    Left = 408
    Top = 8
    Width = 145
    Height = 53
    Columns = <
      item
        Caption = 'Menu'
      end>
    Items.ItemData = {
      0548000000020000000000000001000000FFFFFFFF00000000FFFFFFFF000000
      00054D0065006E00750031000000000002000000FFFFFFFF00000000FFFFFFFF
      00000000054D0065006E0075003200}
    TabOrder = 4
  end
  object grp2: TGroupBox
    Left = 0
    Top = 0
    Width = 169
    Height = 299
    Align = alLeft
    Color = clCream
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    ExplicitLeft = 8
    ExplicitTop = 2
    ExplicitHeight = 289
    object rzPnl1: TRzPanel
      Left = 4
      Top = 23
      Width = 160
      Height = 41
      BorderOuter = fsNone
      BorderColor = clCream
      Caption = 'Menu1'
      Color = clCream
      FlatColor = clCream
      TabOrder = 0
      OnClick = rzPnl1Click
      OnMouseLeave = rzPnl1MouseLeave
      OnMouseMove = rzPnl1MouseMove
    end
    object rzPnl2: TRzPanel
      Left = 3
      Top = 88
      Width = 160
      Height = 41
      BorderOuter = fsNone
      Caption = 'Menu 2'
      Color = clCream
      FlatColor = clCream
      TabOrder = 1
      OnMouseLeave = rzPnl2MouseLeave
      OnMouseMove = rzPnl2MouseMove
    end
    object rzPnl3: TRzPanel
      Left = 4
      Top = 135
      Width = 160
      Height = 41
      BorderOuter = fsNone
      Caption = 'Menu 3'
      Color = clCream
      Enabled = False
      FlatColor = clCream
      TabOrder = 2
      OnMouseLeave = rzPnl3MouseLeave
      OnMouseMove = rzPnl3MouseMove
    end
  end
  object btn8: TButton
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btn8'
    TabOrder = 6
    OnClick = btn8Click
  end
  object btn9: TButton
    Left = 256
    Top = 200
    Width = 75
    Height = 25
    Caption = 'btn9'
    TabOrder = 7
    OnClick = btn9Click
  end
end
