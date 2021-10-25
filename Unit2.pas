unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
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
 GetParent(hW);

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
end.
