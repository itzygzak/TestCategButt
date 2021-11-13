object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 424
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 232
    Top = 255
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object lbl2: TLabel
    Left = 192
    Top = 112
    Width = 16
    Height = 13
    Caption = 'lbl2'
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
    Left = 369
    Top = 7
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
    Height = 424
    Align = alLeft
    Color = clCream
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    object rzPnl1: TRzPanel
      Left = 4
      Top = 23
      Width = 160
      Height = 41
      BorderOuter = fsNone
      BorderColor = clCream
      Caption = 'Dodaj nowego'
      Color = clCream
      FlatColor = clCream
      TabOrder = 0
      OnClick = rzPnl1Click
      OnMouseLeave = rzPnl1MouseLeave
      OnMouseMove = rzPnl1MouseMove
      object img1: TImage
        Left = 0
        Top = 0
        Width = 48
        Height = 41
        Align = alLeft
        AutoSize = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000001
          3F4944415478DA636418E28071A01D30EA818176C0A80706DA0134F380C98CDB
          FF61ECAF2FEE6155D36EC7433587B4DC1283B38116579CCD50ED1CB21E80FAA2
          F14CA66AC3A0F1405949310ABFABA717BF0788F4C4E0F600119E18FC1E20E089
          A1E101203893A18AD5ADA31E18F5C0A80788F0C0F7570F19FEFDFB8BA1A6C282
          9B819F8DF2D6C8A7DFCC0C93EE0BD3CE037F7E7E63F8F5F135C37F344F6808B3
          3004AAB233F051E089CF7F9818B6BEE465B8F3959D761E180C60D403030D463D
          30D060647B6086AF3483B114275D1D7CFAE97786AC2D4FA9E381D3E92A74753C
          0C98CEBC33EA01AC1EB870F32E4D1C6CA0AE3CEA01A23C402F30EA015C1E18F2
          4968C87B805E60D403B83C30E493D090F700BDC0A80760ECD9FE320C06121C74
          75FCF9E7DF19D23651A9393D18C0C8F3C05001A31E186830EA81810643DE0300
          8FFD4540A6FD6ACA0000000049454E44AE426082}
        ExplicitLeft = 24
        ExplicitTop = 16
        ExplicitHeight = 48
      end
    end
    object rzPnl2: TRzPanel
      Left = 3
      Top = 88
      Width = 160
      Height = 41
      BorderOuter = fsNone
      Caption = 'Uzupe'#322'nij'
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
      Caption = 'Edytuj'
      Color = clCream
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
