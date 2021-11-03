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
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 224
    Top = 381
    Width = 241
    Height = 39
    Caption = 'Za'#380#243#322#263' g'#281#347'l'#261' ja'#378#324
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 449
    Top = 418
    Width = 16
    Height = 13
    Caption = 'lbl2'
  end
  object rzLbl1: TRzLabel
    Left = 224
    Top = 341
    Width = 82
    Height = 13
    Caption = 'Za'#380#243#322#263' g'#281#347'l'#261' ja'#378#324
  end
  object ctgryBtns1: TCategoryButtons
    Left = 632
    Top = 8
    Width = 133
    Height = 209
    BackgroundGradientDirection = gdVertical
    BevelWidth = 4
    ButtonFlow = cbfVertical
    ButtonOptions = [boFullSize, boShowCaptions, boVerticalCategoryCaptions]
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
    Color = 15395839
    HotButtonColor = clCream
    RegularButtonColor = 15395839
    SelectedButtonColor = 15395839
    ShowHint = True
    TabOrder = 0
    StyleElements = []
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
  object btn3a: TButton
    Left = 656
    Top = 295
    Width = 75
    Height = 25
    Caption = 'btn3a'
    TabOrder = 3
    OnClick = btn3aClick
  end
  object btn1: TButton
    Left = 520
    Top = 8
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 4
    OnClick = btn1Click
  end
  object edttitle: TEdit
    Left = 474
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 5
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
    TabOrder = 6
    object rzTlbrBtn1: TRzToolbarButton
      Left = 15
      Top = 356
      Width = 169
      Height = 41
      Cursor = crSQLWait
      Caption = 'XXX'
      HotNumGlyphs = 0
      UseHotGlyph = True
    end
    object ctgryPnlGrp1: TCategoryPanelGroup
      Left = 0
      Top = 0
      Height = 330
      VertScrollBar.Tracking = True
      Align = alNone
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      TabOrder = 0
      object ctgryPnl1: TCategoryPanel
        Top = 0
        Height = 288
        Caption = 'ctgryPnl1'
        Color = 10066227
        CollapsedHotImageIndex = 1
        CollapsedImageIndex = 1
        CollapsedPressedImageIndex = 1
        TabOrder = 0
        object btn13: TSpeedButton
          Left = 0
          Top = 189
          Width = 161
          Height = 22
          Cursor = crHourGlass
          Caption = 'GGG'
          Flat = True
        end
        object btn2: TBitBtn
          AlignWithMargins = True
          Left = 0
          Top = 158
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
          Kind = bkCancel
          Layout = blGlyphRight
          Margin = 5
          NumGlyphs = 2
          Style = bsWin31
          TabOrder = 1
          StyleElements = []
        end
        object btn4: TBitBtn
          Left = 0
          Top = 70
          Width = 196
          Height = 35
          Align = alTop
          Caption = '&Yes'
          Default = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          Layout = blGlyphRight
          Margin = 5
          ModalResult = 6
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
          Kind = bkOK
          Layout = blGlyphRight
          Margin = 5
          NumGlyphs = 2
          TabOrder = 3
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
        object rzBtBtn1: TRzBitBtn
          Left = 13
          Top = 214
          Width = 169
          Height = 36
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          FrameColor = 10066227
          ShowDownPattern = False
          ShowFocusRect = False
          BiDiMode = bdLeftToRight
          Caption = 'rzBtBtn1'
          Color = 10066227
          DoubleBuffered = True
          HotTrack = True
          HotTrackColorType = htctComplement
          ParentBiDiMode = False
          ParentDoubleBuffered = False
          TextShadowDepth = 0
          TabOrder = 5
          ThemeAware = False
          Margin = 0
          Spacing = 0
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
    TabOrder = 7
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 329
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Napis na belce'
    TabOrder = 8
    OnClick = btn8Click
  end
  object btn99: TButton
    Left = 280
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Minimize'
    TabOrder = 9
    OnClick = btn99Click
  end
  object btn9: TButton
    Left = 440
    Top = 305
    Width = 75
    Height = 25
    Caption = 'Nowe okno'
    TabOrder = 10
    OnClick = btn9Click
  end
  object btn10: TButton
    Left = 288
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Maximize'
    TabOrder = 11
    OnClick = btn10Click
  end
  object btn11: TButton
    Left = 280
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Zmiana tekstu'
    TabOrder = 12
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 248
    Top = 264
    Width = 75
    Height = 25
    Caption = 'btn12'
    TabOrder = 13
    OnClick = btn12Click
  end
  object btnGrp1: TButtonGroup
    Left = 536
    Top = 264
    Height = 148
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 4
    BorderStyle = bsNone
    ButtonOptions = [gboAllowReorder, gboFullSize, gboGroupStyle, gboShowCaptions]
    Items = <
      item
        Caption = 'Q'
      end
      item
        Caption = 'W'
      end
      item
        Caption = 'E'
      end
      item
        Caption = 'R'
      end>
    TabOrder = 14
    StyleElements = []
  end
  object btn14: TButton
    Left = 496
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Okno 3'
    TabOrder = 15
    OnClick = btn14Click
  end
end
