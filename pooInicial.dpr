program pooInicial;

uses
  Vcl.Forms,
  viewPrincipal in 'viewPrincipal.pas' {Form1},
  Pessoa in 'Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
