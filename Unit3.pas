unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    spltVw1: TSplitView;
    grp1: TGroupBox;
    rzpnl3: TRzPanel;
    rzpnl2: TRzPanel;
    rzpnl1: TRzPanel;
    lbl1: TLabel;
    pnl1: TPanel;
    btn1: TButton;
    btn2: TButton;
    pgc1: TPageControl;
    procedure FormCreate(Sender: TObject);
    procedure rzpnl2MouseLeave(Sender: TObject);
    procedure rzpnl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rzpnl3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rzpnl3MouseLeave(Sender: TObject);
    procedure rzpnl1MouseLeave(Sender: TObject);
    procedure rzpnl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rzpnl3MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure rzpnl1Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure rzpnl2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure rzpnl3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm3.btn1Click(Sender: TObject);
begin
if spltVw1.Placement = svpLeft then
  spltVw1.Placement := svpRight
  else
  spltVw1.Placement := svpLeft;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  with TForm3.Create(Application) do
  begin
    ManualDock(pgc1);
    Caption := Format('Nowa forma nr %d', [pgc1.PageCount]);
  end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
grp1.Color:=rgb(37,38,40);
rzPnl1.Color:=rgb(37,38,40);
rzPnl1.Font.Color:=clWhite;
rzPnl1.Font.Size:=12;
rzPnl2.Color:=rgb(37,38,40);
rzPnl2.Font.Color:=clWhite;
rzPnl2.Font.Size:=12;
rzPnl3.Color:=rgb(37,38,40);
rzPnl3.Font.Color:=clWhite;
rzPnl3.Font.Size:=12;

end;

procedure TForm3.pnl1Click(Sender: TObject);
begin
  if spltVw1.Opened = True then
    spltVw1.Close
  else
    spltVw1.Open;

end;

procedure TForm3.rzpnl1Click(Sender: TObject);
var dynPanel : TPanel;
begin
    dynPanel:=TPanel.Create(Self);
    dynPanel.Parent := Self;

    dynPanel.Left := 120;
    dynPanel.Top := 20;
 {   dynPanel.Height := 300;
    dynPanel.Width := 300;       }
    dynPanel.Align := alTop;
    dynPanel.BevelKind :=  bkFlat;
end;

procedure TForm3.rzpnl1MouseLeave(Sender: TObject);
begin
rzPnl1.Color:=rgb(37,38,40);//rgb(182,186,181);
end;

procedure TForm3.rzpnl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl1.Color:=rgb(182,186,181);
end;

procedure TForm3.rzpnl2Click(Sender: TObject);
var dynPanel : TPanel;
    dynEdit :TEdit;
    dynLabel : TLabel;
begin
    begin
    dynPanel:=TPanel.Create(Self);
    dynPanel.Parent := Self;

    dynPanel.Left := 120;
    dynPanel.Top := 20;
 {   dynPanel.Height := 300;
    dynPanel.Width := 300;       }
    dynPanel.Align := alClient; //alRight;
    dynPanel.BevelKind :=  bkFlat;
    end;
    begin
    dynEdit:= TEdit.Create(Self);
    dynEdit.Parent := dynPanel;
    dynEdit.Height := 26;

    dynEdit.Top := 30;
    end;
    begin
    dynLabel:= TLabel.Create(Self);
    dynLabel.Parent:= dynPanel;

    dynLabel.Top:=16;
    dynLabel.Caption := 'Wprowad� dane';
    end;
end;

procedure TForm3.rzpnl2MouseLeave(Sender: TObject);
begin
rzPnl2.Color:=rgb(37,38,40);//rgb(182,186,181);
end;

procedure TForm3.rzpnl2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl2.Color:=rgb(182,186,181);
end;

procedure TForm3.rzpnl3Click(Sender: TObject);
var dynForm : TForm;
begin
//Form4.ShowModal;
  dynForm:= TForm.Create(Self);
  dynForm.Parent := Self;
  dynForm.Height:=500;
  dynForm.Width:=600;
  dynForm.BorderStyle:=bsSizeable;
  dynForm.Caption:='Okno dynamiczne';
  dynForm.Visible:=True;

  dynForm.BorderStyle:=bsNone;

end;

procedure TForm3.rzpnl3MouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
rzpnl3.Color:=RGB(182,186,181);
end;

procedure TForm3.rzpnl3MouseLeave(Sender: TObject);
begin
rzPnl3.Color:=rgb(37,38,40);//rgb(182,186,181);
end;

procedure TForm3.rzpnl3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl3.Color:=rgb(182,186,181);
end;

end.
