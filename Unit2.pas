unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, RzListVw,
  Vcl.ExtCtrls, RzPanel, Vcl.Imaging.pngimage;

type
  TForm2 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    grp1: TGroupBox;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    lbl1: TLabel;
    btnlv: TButton;
    rzLstVw1: TRzListView;
    grp2: TGroupBox;
    rzPnl1: TRzPanel;
    rzPnl2: TRzPanel;
    rzPnl3: TRzPanel;
    btn8: TButton;
    btn9: TButton;
    lbl2: TLabel;
    img1: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure rzPnl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rzPnl1MouseLeave(Sender: TObject);
    procedure rzPnl1Click(Sender: TObject);
    procedure rzPnl3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rzPnl3MouseLeave(Sender: TObject);
    procedure rzPnl2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rzPnl2MouseLeave(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.btn2Click(Sender: TObject);
var
  hW: HWND;
begin
 hW:= FindWindow(nil, 'Form1');
 //CloseWindow(hW);  //minimalizuje

 SetWindowText(hW, 'Nowy tekst');

 //GetParent(hW);

end;
procedure TForm2.btn3Click(Sender: TObject);
begin
SetPriorityClass(GetCurrentProcess(),HIGH_PRIORITY_CLASS)
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
SetPriorityClass(GetCurrentProcess(),IDLE_PRIORITY_CLASS);
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
SetPriorityClass(GetCurrentProcess(),NORMAL_PRIORITY_CLASS);
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
SetPriorityClass(GetCurrentProcess(),REALTIME_PRIORITY_CLASS);
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
case GetPriorityClass(GetCurrentProcess()) of
 IDLE_PRIORITY_CLASS: Lbl1.Caption:='Niski';
 NORMAL_PRIORITY_CLASS: Lbl1.Caption:='Normalny';
 HIGH_PRIORITY_CLASS: Lbl1.Caption:='Wysoki';
 REALTIME_PRIORITY_CLASS: Lbl1.Caption:='Czasu rzecz.';
 else
 Lbl1.Caption:='B³¹d!';
 end;
end;


procedure TForm2.btn8Click(Sender: TObject);
var MenuPanel : TPanel;
begin
MenuPanel:= TPanel.Create(Self);
MenuPanel.Parent := Self;

MenuPanel.Left := 100;
MenuPanel.Top := 20;

//MenuPanel.Color := clYellow;

MenuPanel.Height := 220;
MenuPanel.Width := 220;

 with MenuPanel do
  begin
   // Align := alBottom;
    BevelInner := bvNone;
    BevelOuter := bvNone;
    Color :=clYellow;
    //Bordercolor:=clYellow;
    ParentColor := False;
    BorderWidth := 1;
    BevelWidth := 1;
  end;


end;

procedure TForm2.btn9Click(Sender: TObject);
var KlPanel : TPanel;
begin
      KlPanel := TPanel.Create(Self);
      KlPanel.Parent:=form2;//grp2;

  with KlPanel do
  begin
    Left:=4;
    //Top:=100;
    BevelInner := bvNone;
    BevelOuter := bvRaised;
    Color :=clYellow;
    //Bordercolor:=clYellow;
    ParentColor := False;
    BorderWidth := 1;
    BevelWidth := 1;
    Align:=alBottom;
    Caption := 'Przypisz';
{    OnMouseMove :=
    OnMouseLeave :=}
  end;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
RemoveFontResource('IrishGrover-Regular.ttf');
SendMessage (HWND_BROADCAST,WM_FONTCHANGE,0,0);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
grp2.Color:=rgb(37,38,40);
rzPnl1.Color:=rgb(37,38,40);
rzPnl1.Font.Color:=clWhite;
rzPnl1.Font.Size:=12;
rzPnl2.Color:=rgb(37,38,40);
rzPnl2.Font.Color:=clWhite;
rzPnl2.Font.Size:=12;
rzPnl3.Color:=rgb(37,38,40);
rzPnl3.Font.Color:=clWhite;
rzPnl3.Font.Size:=12;

 AddFontResource('IrishGrover-Regular.ttf');
// AddFontResource('CrystalItalic-R6A.ttf');
 SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);


 lbl2.Font.Size := 32;
 lbl2.Font.Name :='IrishGrover-Regular';
// lbl2.Font.Name := 'CrystalItalic-R6A';

end;


procedure TForm2.rzPnl1Click(Sender: TObject);
begin
ShowMessage('Kasia ma chcicê');
end;

procedure TForm2.rzPnl1MouseLeave(Sender: TObject);
begin
rzPnl1.Color:=clCream;
end;

procedure TForm2.rzPnl1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl1.Color:=clRed;
end;

procedure TForm2.rzPnl2MouseLeave(Sender: TObject);
begin
rzPnl2.Color:=rgb(182,186,181);//(37,38,40);//clWebLightSeaGreen;
end;

procedure TForm2.rzPnl2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl2.Color:=rgb(182,186,181);//(37,38,40);//clRed;
end;

procedure TForm2.rzPnl3MouseLeave(Sender: TObject);
begin
rzPnl3.Color:=rgb(182,186,181);//clCream;
end;

procedure TForm2.rzPnl3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
rzPnl3.Color:=RGB(182,186,181);
end;

end.
