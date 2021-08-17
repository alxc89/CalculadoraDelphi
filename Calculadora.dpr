program Calculadora;

uses
  Vcl.Forms,
  Calc in 'src\Calc.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  nfuncoes in 'src\nfuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
