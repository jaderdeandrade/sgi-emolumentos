unit configuracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, IniFiles, ImgList,
  ToolWin, DB, DBClient, Mask, DBCtrls;

type
  TfmConfiguracao = class(TForm)
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure cpath; // recupera caminho do banco de dados
    { Public declarations }
  end;

var
  fmConfiguracao: TfmConfiguracao;
  data:TIniFile;
implementation

{$R *.dfm}
function PreencheComZeros(numero, digitos : Integer) : String;
var
  i : Integer;
begin
  Result := IntToStr(numero);
  for i := Length(Result) to digitos-1 do
    Result := '0'+Result;
end;

procedure TfmConfiguracao.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfmConfiguracao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmConfiguracao.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.Execute;
  Edit2.Text:= OpenDialog1.FileName;
end;

procedure TfmConfiguracao.cpath;
var
 data:TIniFile;
 path: string;
begin
  try
    data:= TiniFile.Create('c:\Sistemas\SGI\data.ini');
    path:= Data.ReadString('data','Database','');
    if path <> '' then
      Edit2.Text:= path;
  finally
    Data.Free;
  end;
end;
procedure TfmConfiguracao.TabSheet2Show(Sender: TObject);
begin
  cpath;
end;

procedure TfmConfiguracao.FormActivate(Sender: TObject);
begin
  cpath;
end;

procedure TfmConfiguracao.SpeedButton2Click(Sender: TObject);
var
 data:TIniFile;
begin
 try
  data:= TiniFile.Create('c:\Sistemas\SGI\data.ini');
  Data.WriteString('data','Database',Edit2.Text);
  except
    on E: EConvertError do
      begin
        Data.Free;
        showmessage('ATENÇÃO! Para validar a configuração ,e preciso reiniciar o sistema.');
       end;

 end;
    Application.Terminate;
end;
end.
