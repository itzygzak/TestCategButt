unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CategoryButtons;

type
  TForm1 = class(TForm)
    ctgryBtns1: TCategoryButtons;
    btn1: TButton;
    btn2: TButton;
    mmo1: TMemo;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure dynButtonClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure DynamicMenuButtonClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dynCtgZapisz(Sender: TObject);
    procedure dynCtgAnuluj(Sender: TObject);
    procedure dynCtgZamknij(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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


procedure TForm1.btn2Click(Sender: TObject);
var dynCtgButt : TCategoryButtons;
    klawisz1 : TButtonCategory;
     i: integer;
begin
   {klawisz1 := TButtonCategory.Create()
   klawisz1.Collapsed:=False;
   klawisz1.Color:=clRed;   }

   dynCtgButt:=TCategoryButtons.Create(Self);
   dynCtgButt.Parent:= Form1;
   dynCtgButt.Left:=20;
   dynCtgButt.Top:=40;
   dynCtgButt.Height:=120;
   dynCtgButt.Width:=150;

   for i:=0 to 10 do begin
    dynCtgButt.Categories[1].Items[i] := TButtonItem.Create(dynCtgButt.Categories[1].Items);
    dynCtgButt.Categories[1].Items[i].Caption := 'Something';
    dynCtgButt.Categories[1].Items[i].OnClick := DynamicMenuButtonClick;
  end;

   //dynCtgButt.Categories.AddItem(klawisz1,0);

end;

procedure TForm1.btn3Click(Sender: TObject);
var
    SeriesOfButtons : TCategoryButtons;
    Category        : TButtonCategory;
    btn,btn1,btn2   : TButtonItem;
begin
    SeriesOfButtons := TCategoryButtons.Create(Self);
    SeriesOfButtons.Parent := Self;

    SeriesOfButtons.Left := 8;
    SeriesOfButtons.Top  := 40;
    SeriesOfButtons.BorderStyle := bsNone;
    SeriesOfButtons.ButtonOptions:=[boFullSize, boShowCaptions];

    Category := SeriesOfButtons.Categories.Add;
    btn := Category.Items.Add();
    btn.Caption:='Zapisz';
    btn.OnClick:=dynCtgZapisz;

    btn1 := Category.Items.Add();
    btn1.Caption:='Anuluj';
    btn1.OnClick:=dynCtgAnuluj;

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

procedure TForm1.btn1Click(Sender: TObject);
var dynButton : TButton;
begin
    dynButton := TButton.Create(Self);
    dynButton.Parent:=Form1;
    dynButton.Left:=20;
    dynButton.Top:=20;
    dynButton.Height:=55;
    dynButton.Width:=70;
    dynButton.Caption:='Jestem dynamiczny';
    dynButton.OnClick:=dynButtonClick;

end;

end.
