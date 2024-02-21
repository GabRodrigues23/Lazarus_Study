unit uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnProcessa: TButton;
    btnExit: TButton;
    edtData: TEdit;
    lblData: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure btnExitClick(Sender: TObject);
    procedure btnProcessaClick(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnExitClick(Sender: TObject);
begin
  ShowMessage('Encerrando Programa!');
  Application.Terminate;
end;

procedure TfrmPrincipal.btnProcessaClick(Sender: TObject);
var
  cNomeDiaDaSemana : array[1..7] of String = ('Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado');
  dData : TDateTime;
  nDia : integer;
  cDiaDaSemana : String;
begin
  // Forma Normal

  // primeiro método
  Memo1.Lines.Add('Dia da Semana: ' +cNomeDiaDaSemana[DayOfWeek(Date)]); // DayOfWeek: Seleciona o dia da semana | Date:Puxa o dia Atual
  {
  // segundo método
  dData:= StrToDate(edtData.Text);
  Memo1.Lines.Add('Dia da Semana: ' + cNomeDiaDaSemana[DayOfWeek(dData)]);

  // terceiro método
  nDia:= DayOfWeek(dData);
  Memo1.Lines.Add('Dia da Semana: ' + cNomeDiaDaSemana[nDia]);

  // quarto metodo
  cDiaDaSemana:= cNomeDiaDaSemana[nDia];
  Memo1.Lines.Add('Dia da Semana: ' + cDiaDaSemana);
  }

  // Forma Simplificada
  Memo2.Lines.Add('Dia da Semana: ' + cNomeDiaDaSemana[DayOfWeek(StrToDate(edtData.Text))])

end;

end.

