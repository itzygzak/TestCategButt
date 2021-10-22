unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CategoryButtons,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.WinXCtrls;

uses hook
  TKeyboardHook.Create;
 KeyboardHook.OnPreExecute: = KeyboardHookPREExecute;
  KeyboardHook.Active: = True;
  end; // obs�uguje KeyboardPack OnPREExecute

  type
  TForm1 = class(TForm)
    ctgryBtns1: TCategoryButtons;
    btn1a: TButton;
    btn2a: TButton;
    mmo1: TMemo;
    btn3a: TButton;
<<<<<<< HEAD
    btn1: TButton;
    edttitle: TEdit;
    spltvw1: TSplitView;
    ctgryPnlGrp1: TCategoryPanelGroup;
    ctgryPnl1: TCategoryPanel;
    btn2: TBitBtn;
=======
    btn1234: TButton;
>>>>>>> c86b3e5e355c2e7b7ea0d7aa7643eaad10792e1a
    procedure btn1aClick(Sender: TObject);
    procedure dynButtonClick(Sender: TObject);
    procedure DynamicMenuButtonClick(Sender: TObject);
    procedure btn3aClick(Sender: TObject);
    procedure dynCtgZapisz(Sender: TObject);
    procedure dynCtgAnuluj(Sender: TObject);
    procedure dynCtgZamknij(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2aClick(Sender: TObject);
<<<<<<< HEAD
    procedure btn1Click(Sender: TObject);
=======
    procedure btn1234Click(Sender: TObject);
>>>>>>> c86b3e5e355c2e7b7ea0d7aa7643eaad10792e1a
  private
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

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
{var
    SeriesOfButtons : TCategoryButtons;
    Category        : TButtonCategory;
<<<<<<< HEAD
   // btn,btn1,btn2   : TButtonItem;
=======
    btn,btn1,btn2   : TButtonItem;}
>>>>>>> c86b3e5e355c2e7b7ea0d7aa7643eaad10792e1a
begin
    SeriesOfButtons := TCategoryButtons.Create(Self);
    SeriesOfButtons.Parent := Self;

    SeriesOfButtons.Left := 20;
    SeriesOfButtons.Top  := 200;
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

end;

procedure TForm1.dynCtgZapisz(Sender: TObject);
begin
  ShowMessage('Klikn��e� na zapisz');
end;

procedure TForm1.dynCtgAnuluj(Sender: TObject);
begin
  ShowMessage('Klikn��e� na Anuluj');
end;

procedure TForm1.dynCtgZamknij(Sender: TObject);
begin
  ShowMessage('Klikn��e� na zamknij');
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
ShowMessage('Nie mo�na zmieni� priorytetu ('+edtTitle.Text+')');
CloseHandle(hProc);
end;
end
else
ShowMessage('Okno o podanej nazwie nie istnieje ('+edtTitle.Text+')');
end;
procedure TForm1.btn2aClick(Sender: TObject);
begin
btn1.Destroy;
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
    btn2 := Category.Items.Add();
    btn2.Caption:='Zamknij';
    btn2.OnClick:=dynCtgZamknij;

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
    Mmo1.Lines.Add(dynctgbutt.SelectedItem.Caption);



{

  if sender is TButtonItem then //false
    ShowMessage('Sender is TButtonItem');

  if sender is TCategoryButtons then //true
    ShowMessage('Sender is TCategoryButtons');}
end;

procedure TForm1.btn1234Click(Sender: TObject);
begin
{


  procedura TMainForm.KeyboardHookPREExecute (Hook: THook; var Hookmsg: THookMsg);
  var Klucz: S�owo;
  begin // Tutaj mo�esz wybra�, czy chcesz zwr�ci�
  // kluczowy skok do aplikacji, czy nie
  Hookmsg.Result: = If Then (cbEatKeyStrokes.Checked, 1, 0);
  Klucz: = Hookmsg.WPARAM; Podpis: = Char (klucz); koniec;

}
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
