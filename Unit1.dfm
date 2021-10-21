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
    Left = 344
    Top = 288
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
  object btn1234: TButton
    Left = 288
    Top = 184
    Width = 75
    Height = 25
    Caption = 'btn1234'
    TabOrder = 5
    OnClick = btn1234Click
  end
end
