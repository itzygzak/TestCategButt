unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CategoryButtons,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.ButtonGroup, RzButton,
  Vcl.ComCtrls, RzLabel, Winapi.ShellAPI;

type
  TForm1 = class(TForm)
    ctgryBtns1: TCategoryButtons;
    btn1a: TButton;
    btn2a: TButton;
    btn3a: TButton;
    btn1: TButton;
    edttitle: TEdit;
    spltvw1: TSplitView;
    ctgryPnlGrp1: TCategoryPanelGroup;
    ctgryPnl1: TCategoryPanel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    btn7: TButton;
    btn8: TButton;
    btn99: TButton;
    btn9: TButton;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
    lbl1: TLabel;
    btn13: TSpeedButton;
    rzTlbrBtn1: TRzToolbarButton;
    btnGrp1: TButtonGroup;
    rzBtBtn1: TRzBitBtn;
    lbl2: TLabel;
    rzLbl1: TRzLabel;
    btn14: TButton;
    btn15: TButton;
    procedure btn1aClick(Sender: TObject);
    procedure dynButtonClick(Sender: TObject);
    procedure DynamicMenuButtonClick(Sender: TObject);
    procedure btn3aClick(Sender: TObject);
    procedure dynCtgZapisz(Sender: TObject);
    procedure dynCtgAnuluj(Sender: TObject);
    procedure dynCtgZamknij(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2aClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn99Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
  private
    function MyFont(ResName, ResType: string):Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  SeriesOfButtons : TCategoryButtons;
    Category        : TButtonCategory;
    btn,btn1,btn2   : TButtonItem;


implementation
uses Unit2, Unit3;

{$R *.dfm}
{$R myfonts.RES}



function TForm1.MyFont(ResName: string; ResType: string):Boolean;
var ResStream : TResourceStream;
    FontsCount : Integer;
    hFont : THandle;

begin
ResStream := TResourceStream.Create(HInstance,PChar(ResName),PChar(ResType));
hFont := AddFontMemResourceEx(ResStream.Memory,ResStream.Size,nil, @FontsCount);
ResStream.Free;

if (hFont <> 0) then
begin
SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);
end;
Result:=(hFont <> 0);
end;


procedure TForm1.FormCreate(Sender: TObject);
var
    SeriesOfButtons : TCategoryButtons;
    Category        : TButtonCategory;
   // btn,btn1,btn2   : TButtonItem;
begin

//   if MyFont('Fda' , 'FD') then
//    if MyFont('FontGrasshopper' , 'FGASS') then
 //    if MyFont('FSL' , 'FL') then
 //   if MyFont('FontHigSPEED' , 'HS') then
 //   if MyFont('FLI' , 'FI') then
     if MyFont('FG' , 'IG') then


    begin
    //  lbl1.Font.Name := 'HIGHSPEED';
    //  lbl1.Font.Name := 'Grasshopper';
//      rzlbl1.Font.Name := 'DAV-Sets';
   //   rzLbl1.Font.Name :='ShadowsIntoLight';
   //   rzLbl1.Font.Name := 'Lato-Italic';
      rzLbl1.Font.Name := 'IrishGrover-Regular';
      rzlbl1.Font.Size := 24;
    end;



{    SeriesOfButtons := TCategoryButtons.Create(Self);
    SeriesOfButtons.Parent := Self;

    SeriesOfButtons.Left := 20;
    SeriesOfButtons.Top  := 40;
    SeriesOfButtons.Height:=120;
    SeriesOfButtons.Width:=150;
    SeriesOfButtons.BorderStyle := bsNone;
    SeriesOfButtons.ButtonOptions:=[boFullSize, boShowCaptions];
    SeriesOfButtons.Color:=clLime;

    Category := SeriesOfButtons.Categories.Add;

    btn := Category.Items.Add();
    btn.Caption:='Zapisz';
    btn.Category.Color:=clRed;
    btn.OnClick:=dynCtgZapisz;

    btn1 := Category.Items.Add();
    btn1.Caption:='Anuluj';
    btn1.OnClick:=dynCtgAnuluj;

    btn2 := Category.Items.Add();
    btn2.Caption:='Zamknij';
    btn2.OnClick:=dynCtgZamknij;
 }
end;

procedure TForm1.dynCtgZapisz(Sender: TObject);
begin
  ShowMessage('Klikn¹³eœ na zapisz');
end;

procedure TForm1.dynCtgAnuluj(Sender: TObject);
begin
  ShowMessage('Klikn¹³eœ na Anuluj');
end;

procedure TForm1.dynCtgZamknij(Sender: TObject);
begin
  ShowMessage('Klikn¹³eœ na zamknij');
end;


procedure TForm1.btn1Click(Sender: TObject);
 var hWnd :THandle;
 ProcessId :DWORD;
 hProc :THandle;
begin
hWnd := FindWindow(nil,PCHar(edtTitle.Text));

if (IsWindow(hWnd)) then
begin
ProcessId:=0;
GetWindowThreadProcessId(hWnd, @ProcessId);
hProc := OpenProcess(PROCESS_SET_INFORMATION, FALSE, ProcessId);
if (hProc<>0) then
begin
if (not SetPriorityClass(hProc,IDLE_PRIORITY_CLASS)) then
ShowMessage('Nie mo¿na zmieniæ priorytetu ('+edtTitle.Text+')');
CloseHandle(hProc);
ShowMessage('To jest to okno');
end;
end
else
ShowMessage('Okno o podanej nazwie nie istnieje ('+edtTitle.Text+')');
end;

procedure TForm1.btn2aClick(Sender: TObject);
begin
//btn1.Destroy;
if spltVw1.Opened = True then
  //  btn4.Layout := blGlyphLeft;
    spltVw1.Close

  else
    spltVw1.Open;
end;

procedure TForm1.btn3aClick(Sender: TObject);
{var
    SeriesOfButtons : TCategoryButtons;
    Category        : TButtonCategory;
    btn,btn1,btn2   : TButtonItem;  }
begin
    SeriesOfButtons := TCategoryButtons.Create(Self);
    SeriesOfButtons.Parent := Self;

    SeriesOfButtons.Left := 220;
    SeriesOfButtons.Top  := 40;
    SeriesOfButtons.Height:=120;
    SeriesOfButtons.Width:=150;
    SeriesOfButtons.BorderStyle := bsNone;
    SeriesOfButtons.ButtonOptions:=[boFullSize, boShowCaptions];
    SeriesOfButtons.Color:=clLime;

    Category := SeriesOfButtons.Categories.Add;
    btn := Category.Items.Add();
    btn.Caption:='Zapisz';
    btn.Category.Color:=clRed;
    btn.OnClick:=dynCtgZapisz;

  {  btn1 := Category.Items.Add();
    btn1.Caption:='Anuluj';
    btn1.OnClick:=dynCtgAnuluj;
   }
{    btn2 := Category.Items.Add();
    btn2.Caption:='Zamknij';
    btn2.OnClick:=dynCtgZamknij;
 }
end;


procedure TForm1.btn7Click(Sender: TObject);
begin
    btn4.Layout := blGlyphLeft;
    btn5.Layout := blGlyphLeft;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
Form1.Caption:='Ala ma kota';
end;

procedure TForm1.btn99Click(Sender: TObject);
var
  hW: HWND;
begin
 hW:= FindWindow(nil, 'Form1');
 CloseWindow(hW);  //minimalizuje
// ShowMessage('Nazwa okna' + hW);

{ if h <> 0 then
 begin
  h:= FindWindowEx(h, 0, 'Edttitle', 0); //<- tutaj masz ju¿ swój upragniony uchwyt
 end;}
end;


procedure TForm1.btn9Click(Sender: TObject);
begin
 TForm2.Create(Self).Show;
//Form2.Show;
end;

procedure TForm1.dynButtonClick(Sender: TObject);
begin
  ShowMessage('Akcja z klawisza dynamicznego');
end;

procedure TForm1.DynamicMenuButtonClick(Sender: TObject);
 var
    dynctgbutt: TCategoryButtons;

begin
    dynctgbutt := (Sender as TCategoryButtons);
    //Mmo1.Lines.Add(dynctgbutt.SelectedItem.Caption);



{

  if sender is TButtonItem then //false
    ShowMessage('Sender is TButtonItem');

  if sender is TCategoryButtons then //true
    ShowMessage('Sender is TCategoryButtons');}
end;

procedure TForm1.btn10Click(Sender: TObject);
var hW : HWND;
begin
hW := FindWindow(nil, 'Form1');
ShowWindow(hW, SW_MAXIMIZE);
end;

procedure TForm1.btn11Click(Sender: TObject);
var hW : HWND;
begin
hW := FindWindow(nil, 'Form1');



SetWindowText(hW, 'Nowy tekst');


end;

procedure TForm1.btn12Click(Sender: TObject);
var
H : HWND;
S : string;
I : integer;
begin
H:=GetForegroundWindow;
I := SendMessage(H, WM_GETTEXTLENGTH, 0, 0);
I := I + 1;
setlength(S, I);
SendMessage(H, WM_GETTEXT,I,longint(@S[1]) );
//Lbl1.Caption:='Nazwa okna: '+S;
lbl1.Caption:= s;
//end;
if s = 'Form1' then
begin
ShowMessage('Ala ma kota');
end
else
ShowMessage('Kot ma Ale');
end;




procedure TForm1.btn14Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.btn15Click(Sender: TObject);
begin
case Application.MessageBox('Czy zainstalowaæ bazê ?', 'Application.Title',
  MB_YESNO + MB_ICONINFORMATION) of
  IDYES:
    begin
     ShellExecute(Handle, 'open', 'install.bat', '', 'C:\Dev\Delphi\testcategbutt', SW_SHOWNORMAL);
    end;
  IDNO:
    begin
      Close;
    end;
end;

//ShellExecute(Handle, 'open', 'install.bat', '', 'C:\Dev\Delphi\testcategbutt', SW_SHOWNORMAL);
end;

procedure TForm1.btn1aClick(Sender: TObject);
var dynButton : TButton;
begin
    dynButton := TButton.Create(Self);
    dynButton.Parent:=Form1;
    dynButton.Left:=320;
    dynButton.Top:=20;
    dynButton.Height:=55;
    dynButton.Width:=100;
    dynButton.Caption:='Jestem dynamiczny';
    dynButton.OnClick:=dynButtonClick;

end;

end.
