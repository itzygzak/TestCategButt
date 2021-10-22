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
    Left = 656
    Top = 264
    Width = 75
    Height = 25
    Caption = 'btn2a'
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
<<<<<<< HEAD
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
    Width = 225
    Height = 439
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
      ExplicitLeft = 24
      ExplicitTop = 32
      ExplicitHeight = 350
      object ctgryPnl1: TCategoryPanel
        Top = 0
        Caption = 'ctgryPnl1'
        TabOrder = 0
        object btn2: TBitBtn
          Left = 0
          Top = 0
          Width = 196
          Height = 25
          Align = alTop
          Caption = 'btn2'
          TabOrder = 0
          ExplicitLeft = 32
          ExplicitTop = 24
          ExplicitWidth = 75
        end
      end
    end
=======
  object btn1234: TButton
    Left = 288
    Top = 184
    Width = 75
    Height = 25
    Caption = 'btn1234'
    TabOrder = 5
    OnClick = btn1234Click
>>>>>>> c86b3e5e355c2e7b7ea0d7aa7643eaad10792e1a
  end
end
