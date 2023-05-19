unit viewPrincipal;

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
    // abaixo é setado as informações no objeto. [SET]
    Pessoa.Id := 1;
    Pessoa.Nome := 'Rafael';
    Pessoa.Tipo := 'F';
    Pessoa.Email := 'rafael.zaap@gmail.com';

    //abaixo é buscado as informações no objeto. [GET]
    ShowMessage(Pessoa.Id.ToString + ' - ' +Pessoa.Nome + #13 +
                Pessoa.Tipo + ' - ' + Pessoa.Email);
  finally
    FreeAndNil(Pessoa);
  end;

end;

end.
