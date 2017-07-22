unit UnitdmConect;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr,IniFiles;

type
  Tdmconect = class(TDataModule)
    SQLConnection1: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmconect: Tdmconect;

implementation

uses configuracao;

{$R *.dfm}

procedure Tdmconect.DataModuleCreate(Sender: TObject);
var
 data:TIniFile;
 Path: string;
begin
  data:= TiniFile.Create('c:\Sistemas\SGI\data.ini');
  Try
    Path:= Data.ReadString('data','Database','');
        if not (dmconect.SQLConnection1.Connected)then  // Se o TSqlConnection Estiver Ativado, ele será desativado para que o arquivo q foi lido seja realmente inserido no TSqlConnection
          begin
            if Path <> '' then
              begin
                dmconect.SQLConnection1.Connected := False;
                dmconect.SQLConnection1.Params.Values['database'] := ''; // Atribui o caminho do banco de dados ao TSqlConnection
                dmconect.SQLConnection1.Params.Values['database'] := Path;
                dmconect.SQLConnection1.Connected := True; // Tenta ativar o TSqlConnection e, se dé erro,
              end
            else
            if Path = '' then
              begin
                fmConfiguracao := TfmConfiguracao.Create(self);
                fmConfiguracao.ShowModal;
              end
          end
    finally
      data.Free;
    end;

end;

end.
