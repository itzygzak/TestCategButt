unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    spltVw1: TSplitView;
    grp1: TGroupBox;
    rzpnl3: TRzPanel;
    rzpnl2: TRzPanel;
    rzpnl1: TRzPanel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

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

procedure TForm3.rzpnl1MouseLeave(Sender: TObject);
begin
rzPnl1.Color:=rgb(182,186,181);
end;

procedure TForm3.rzpnl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl1.Color:=rgb(182,186,181);
end;

procedure TForm3.rzpnl2MouseLeave(Sender: TObject);
begin
rzPnl2.Color:=rgb(182,186,181);
end;

procedure TForm3.rzpnl2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl2.Color:=rgb(182,186,181);
end;

procedure TForm3.rzpnl3MouseLeave(Sender: TObject);
begin
rzPnl3.Color:=rgb(182,186,181);
end;

procedure TForm3.rzpnl3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl3.Color:=rgb(182,186,181);
end;

end.
