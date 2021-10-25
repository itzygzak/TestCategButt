object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 439
  ClientWidth = 773
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
    Left = 304
    Top = 384
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object ctgryBtns1: TCategoryButtons
    Left = 632
    Top = 8
    Width = 133
    Height = 209
    ButtonFlow = cbfVertical
    ButtonOptions = [boFullSize, boGradientFill, boShowCaptions, boVerticalCategoryCaptions]
    Categories = <
      item
        Color = 15395839
        Collapsed = False
        Items = <
          item
            Caption = 'A'
          end
          item
            Caption = 'B'
          end
          item
            Caption = 'C'
          end
          item
            Caption = 'D'
          end>
      end
      item
        Color = 16771839
        Collapsed = False
        Items = <
          item
            Caption = 'E'
          end
          item
            Caption = 'F'
          end>
      end>
    RegularButtonColor = clWhite
    SelectedButtonColor = 15132390
    TabOrder = 0
  end
  object btn1a: TButton
    Left = 656
    Top = 232
    Width = 75
    Height = 25
    Caption = 'btn1a'
    TabOrder = 1
    OnClick = btn1aClick
  end
  object btn2a: TButton
    Left = 464
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hide split'
    TabOrder = 2
    OnClick = btn2aClick
  end
  object mmo1: TMemo
    Left = 424
    Top = 128
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 3
  end
  object btn3a: TButton
    Left = 656
    Top = 295
    Width = 75
    Height = 25
    Caption = 'btn3a'
    TabOrder = 4
    OnClick = btn3aClick
  end
  object btn1: TButton
    Left = 520
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 5
    OnClick = btn1Click
  end
  object edttitle: TEdit
    Left = 474
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edttitle'
  end
  object spltvw1: TSplitView
    Left = 0
    Top = 0
    Width = 200
    Height = 439
    CloseStyle = svcCompact
    CompactWidth = 40
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 7
    object ctgryPnlGrp1: TCategoryPanelGroup
      Left = 0
      Top = 0
      Height = 439
      VertScrollBar.Tracking = True
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 0
      object ctgryPnl1: TCategoryPanel
        Top = 0
        Height = 256
        Caption = 'ctgryPnl1'
        Color = 10066227
        CollapsedHotImageIndex = 1
        CollapsedImageIndex = 1
        CollapsedPressedImageIndex = 1
        TabOrder = 0
        object btn2: TBitBtn
          AlignWithMargins = True
          Left = 0
          Top = 170
          Width = 190
          Height = 25
          Caption = 'e'
          Margin = 5
          TabOrder = 0
        end
        object btn3: TBitBtn
          Left = 0
          Top = 105
          Width = 196
          Height = 35
          Align = alTop
          Caption = 'd'
          Enabled = False
          Margin = 5
          TabOrder = 1
        end
        object btn4: TBitBtn
          Left = 0
          Top = 70
          Width = 196
          Height = 35
          Align = alTop
          Kind = bkYes
          Layout = blGlyphRight
          Margin = 5
          NumGlyphs = 2
          TabOrder = 2
        end
        object btn5: TBitBtn
          Left = 0
          Top = 35
          Width = 196
          Height = 35
          Hint = 'Dupint'
          Align = alTop
          Kind = bkAbort
          Layout = blGlyphRight
          Margin = 5
          NumGlyphs = 2
          TabOrder = 3
          ExplicitTop = 45
        end
        object btn6: TBitBtn
          Left = 0
          Top = 0
          Width = 196
          Height = 35
          Align = alTop
          Caption = 'a'
          Margin = 5
          TabOrder = 4
        end
      end
    end
  end
  object btn7: TButton
    Left = 672
    Top = 376
    Width = 75
    Height = 25
    Caption = 'btn7'
    TabOrder = 8
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 320
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Napis na belce'
    TabOrder = 9
    OnClick = btn8Click
  end
  object btn99: TButton
    Left = 280
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Minimize'
    TabOrder = 10
    OnClick = btn99Click
  end
  object btn9: TButton
    Left = 440
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Nowe okno'
    TabOrder = 11
    OnClick = btn9Click
  end
  object btn10: TButton
    Left = 288
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Maximize'
    TabOrder = 12
    OnClick = btn10Click
  end
  object btn11: TButton
    Left = 280
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Zmiana tekstu'
    TabOrder = 13
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 248
    Top = 264
    Width = 75
    Height = 25
    Caption = 'btn12'
    TabOrder = 14
    OnClick = btn12Click
  end
end
