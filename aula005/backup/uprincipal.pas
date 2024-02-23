unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, DateUtils;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnProcessa: TButton;
    Memo1: TMemo;
    procedure btnProcessaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

end;

procedure TfrmPrincipal.btnProcessaClick(Sender: TObject);
var
  nNum1, nNum2, nTotal : Real;
  nItem1, nItem2, nTotalItem, nQtd, nAnos, nDias : Integer;
  dData1, dData2 : TDate;
  tHora1, tHora2, tTotal : TTime;
  cNome, cSobrenome, cValor1, cValor2 : String;
  nTotalSoma, nTotalSub, nTotalMult, nTotalDiv : Real;
begin
  Memo1.Lines.Clear;
  // Num1 + Num2 - operações com reais(float)
  nNum1 := 1123.80;
  nNum2 := 2.20;
  nTotal := nNum1 + nNum2;
  Memo1.Lines.Add('Total: ' + FloatToStr(nTotal));
  Memo1.Lines.Add('-----------------------------');

  // Datas
  dData1 := StrToDate('23/02/2002'); // data de nascimento
  dData2 := date; // data de hoje
  nAnos := YearsBetween(dData1,dData2); // anos entre nascimento e hoje
  nDias := DaysBetween(dData1,dData2); // dias entre nascimento e hoje
  Memo1.Lines.Add('Você tem ' + IntToStr(nAnos) + ' anos');
  Memo1.Lines.Add('Você tem ' + IntToStr(nDias) + ' dias');
  if nAnos >= 18 then
     Memo1.Lines.Add('Você é maior de idade!')
  else
     Memo1.Lines.Add('Você é menor de idade!');
  Memo1.Lines.Add('-----------------------------');

  // Input Query
      // Valor 1
  InputQuery('Informe o Campo','Digite o Valor 1',cValor1); // titulo da janela ; texto ; variavel
  Try
    nNum1 := StrToFloat(cValor1);
  Except;
    ShowMessage('Variável valor 1 não é válida');
    exit;
  end;
      // Valor 2
  InputQuery('Informe o Campo','Digite o Valor 2',cValor2); // titulo da janela ; texto ; variavel
  Try
    nNum2 := StrToFloat(cValor2);
  Except;
    ShowMessage('Variável valor 2 não é válida');
    exit;
  end;

  Memo1.Lines.Add('Valor 1: ' + cValor1);
  Memo1.Lines.Add('Valor 2: ' + cValor2);
  Memo1.Lines.Add('-----------------------------');

  // Soma ; Subtração ; Multiplicação ; Divisão - utilizando nNum1 e nNum2
  nTotalSoma := nNum1 + nNum2;
  nTotalSub := nNum1 - nNum2;
  nTotalMult := nNum1 * nNum2;
  nTotalDiv := nNum1 / nNum2;

  Memo1.Lines.Add('Soma:              ' + FloatToStr(nTotalSoma));
  Memo1.Lines.Add('Subtração:         ' + FloatToStr(nTotalSub));
  Memo1.Lines.Add('Multiplicação:     ' + FloatToStr(nTotalMult));
  Memo1.Lines.Add('Divisão:           ' + FloatToStr(nTotalDiv));
  Memo1.Lines.Add('-----------------------------');

  if nTotalSoma > nTotalDiv then
     Memo1.Lines.Add('Valor variavel soma é maior que vairavel divisão')
  else if nTotalSoma < nTotalDiv then
     Memo1.Lines.Add('Valor variavel soma é menor que variavel divisão')
  else
     Memo1.Lines.Add('Valor variavel soma é igual a variavel divisão');
  Memo1.Lines.Add('-----------------------------');

  tHora1 := StrToTime('06:00:00');
  tHora1 := Time; // hora atual
  tTotal := tHora2 - tHora1;
  Memo1.Lines.Add('Total de Horas: ' + TimeToStr(tTotal));

end;

end.

