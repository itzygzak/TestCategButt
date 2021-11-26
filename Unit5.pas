unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzPrgres, Vcl.ComCtrls;

type
  TForm5 = class(TForm)
    btn1: TButton;
    lbl1: TLabel;
    rzPrgrsBr1: TRzProgressBar;
    lbl2: TLabel;
    chk1: TCheckBox;
    btn2: TButton;
    pb1: TProgressBar;
    mmo1: TMemo;
    lbl3: TLabel;
    lbl4: TLabel;
    pb2: TProgressBar;
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mmo1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn2Click(Sender: TObject);
begin
{rzPrgrsBr1.Percent := 1;
rzPrgrsBr1.Percent.MinValue:=0;
rzPrgrsBr1.Percent.MaxValue:=100;}

end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  pb1.Min := 0;
  pb1.Max := Mmo1.Width;
  pb2.Min := 0;
  pb1.Max := Mmo1.Height;
end;

procedure TForm5.mmo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  lbl3.Caption := InttoStr(X);
  lbl4.Caption := InttoStr(Y);
  pb1.Position := X;
  pb2.Position := Y;
end;

end.
