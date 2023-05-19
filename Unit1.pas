unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Pessoa, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.Nome := 'Rafael';
    Pessoa.SobreNome := 'Silva';
    Pessoa.Cpf := '060.651.677-89';

    ShowMessage('Nome: ' + pessoa.SobreNome + ' ' + Pessoa.Nome + #13 +
                'CPF: ' + pessoa.Cpf);
  finally
    FreeAndNil(Pessoa);
  end;

end;

end.
