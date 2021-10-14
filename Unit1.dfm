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
  object btn1: TButton
    Left = 656
    Top = 232
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 656
    Top = 264
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 2
    OnClick = btn2Click
  end
  object mmo1: TMemo
    Left = 344
    Top = 288
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 3
  end
  object btn3: TButton
    Left = 656
    Top = 295
    Width = 75
    Height = 25
    Caption = 'btn3'
    TabOrder = 4
    OnClick = btn3Click
  end
end
