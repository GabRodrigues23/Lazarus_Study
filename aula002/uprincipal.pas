unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnMostrarMensagem: TButton;
    btnSair: TButton;
    chkMostrarSobrenome: TCheckBox;
    edtNome: TEdit;
    edtSobrenome: TEdit;
    lblNome: TLabel;
    lblSobrenome: TLabel;
    procedure btnMostrarMensagemClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btnMostrarMensagemClick(Sender: TObject);
begin
  if chkMostrarSobrenome.Checked then
     ShowMessage('Olá ' + edtNome.Text + ' ' + edtSobrenome.Text)
  else
     ShowMessage('Olá ' + edtNome.Text);
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  ShowMessage('Até Breve!');
  Application.Terminate;
end;

end.

