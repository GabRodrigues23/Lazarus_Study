unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnProcessa: TButton;
    btnSair: TButton;
    Memo1: TMemo;
    procedure btnProcessaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnProcessaClick(Sender: TObject);
var
  cName : string;
  nIdade : integer;
begin
  cName := 'Gabriel';
  nIdade := 15;
  Memo1.Lines.Add('Nome: ' + cName);
  Memo1.Lines.Add('Idade: ' + IntToStr(nIdade));

  if nIdade >= 18 then
     Memo1.Lines.Add(cName + ' é Maior de Idade')
  else
    begin
      Memo1.Lines.Add(cName + ' é Menor de Idade');
      Memo1.Lines.Add('Não pode consumir bebidas !');
    end;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  ShowMessage('Encerrando Programa!');
  Application.Terminate;
end;

end.

