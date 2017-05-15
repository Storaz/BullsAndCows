unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    mot: TEdit;
    bulls: TEdit;
    cows: TEdit;
    essais: TEdit;
    gg: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    looool: TLabel;
    Label4: TLabel;
    mots: TMemo;
    chercher: TEdit;
    Button4: TButton;
    lettres: TEdit;
    Label3: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form2: TForm2;
  essai:integer;
  i:integer;
  bull:integer;
  longueur:integer;
  cow:integer;
implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Bull:=0;
  cow:=0;
  Essai:=Essai-1;
  Essais.Text:=IntToStr(essai);
  if (essai=0) OR (essai<0) then
          BEGIN
              Essais.Text:=IntToStr(0);
              if mot.Text=chercher.text then BEGIN
                                              gg.Visible := true;
                                              gg.Text := 'Vous avez gagné, incroyable !';
                                             END
              else BEGIN
                    gg.Text:='Vous avez perdu.';
                    gg.Visible:=true;
                   END;
              button4.Visible := true;
          END;
   if mot.Text=chercher.text then BEGIN
                                      gg.Visible := true;
                                      gg.Text := 'Vous avez gagné, incroyable !';
                                      button4.Visible := true;
                                  END;
   for I := 1 to length(chercher.text) do
      Begin
        if chercher.Text[I]=mot.Text[I] then
        BEGIN
        Bull:=bull+1;
        Bulls.Text:=IntToStr(Bull)
        END;
      End;

  for I := 1 to length(chercher.Text) do
      Begin
        if chercher.Text[I]=mot.Text[1] then if chercher.Text[i]<>mot.Text[I] then
        Begin
          cow:=cow+1;
          cows.Text:=IntToStr(cow)
        End;
         if chercher.Text[I]=mot.Text[2] then if chercher.Text[i]<>mot.Text[I] then
        Begin
          cow:=cow+1;
          cows.Text:=IntToStr(cow)
        End;
         if chercher.Text[I]=mot.Text[3] then if chercher.Text[i]<>mot.Text[I] then
        Begin
          cow:=cow+1;
          cows.Text:=IntToStr(cow)
        End;
         if chercher.Text[I]=mot.Text[4] then if chercher.Text[i]<>mot.Text[I] then
        Begin
          cow:=cow+1;
          cows.Text:=IntToStr(cow)
        End;
         if chercher.Text[I]=mot.Text[5] then if chercher.Text[i]<>mot.Text[I] then
        Begin
          cow:=cow+1;
          cows.Text:=IntToStr(cow)
        End;
         if chercher.Text[I]=mot.Text[6] then if chercher.Text[i]<>mot.Text[I] then
        Begin
          cow:=cow+1;
          cows.Text:=IntToStr(cow)
        End;
         if chercher.Text[I]=mot.Text[7] then if chercher.Text[i]<>mot.Text[I] then
        Begin
          cow:=cow+1;
          cows.Text:=IntToStr(cow)
        End;
      End;





end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  mot.Text:='';
  bulls.Text:='';
  cows.Text:='';
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  form2.close;
end;

procedure TForm2.Button4Click(Sender: TObject);

begin
  mots.lines.LoadFromFile('mots.txt');
  Randomize;
  chercher.text:=mots.Lines[Random(10)];
  Button4.Visible := false;
  lettres.Text:=IntToStr(length(chercher.text));
  case length(chercher.text) of
    3 : essai:=4;
    4 : essai:=7;
    5 : essai:=10;
    6 : essai:=16;
    7 : essai:=20;

  end;
  essais.Text:=IntToStr(essai);
  gg.Visible:=false;
  longueur := length(chercher.text)
end;

end.
