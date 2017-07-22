unit UnitFicha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TfmFicha = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand5: TRLBand;
    RLLabel26: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel27: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel28: TRLLabel;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText26: TRLDBText;
    dsdp: TDataSource;
    dspdep: TDataSetProvider;
    cdsdep: TClientDataSet;
    sqldep: TSQLDataSet;
    sqlcliente: TSQLDataSet;
    cdscliente: TClientDataSet;
    dspcliente: TDataSetProvider;
    dscliente: TDataSource;
    sqlclienteIDCLIENTE: TIntegerField;
    sqlclienteNOME: TStringField;
    sqlclienteENDERECO: TStringField;
    sqlclienteBAIRRO: TStringField;
    sqlclienteCIDADE: TStringField;
    sqlclienteCEP: TStringField;
    sqlclienteESTADO: TStringField;
    sqlclienteESTADOCIVIL: TStringField;
    sqlclienteIDENTIDADE: TStringField;
    sqlclienteCPF: TStringField;
    sqlclienteCTPS: TStringField;
    sqlclienteDATANASCIMENTO: TDateField;
    sqlclienteCATEGORIATITULAR: TStringField;
    sqlclienteTELEFONE: TStringField;
    sqlclienteCELULAR: TStringField;
    sqlclienteEMAIL: TStringField;
    sqlclienteNOMEEMPRESA: TStringField;
    sqlclienteTELEFONEEMPRESA: TStringField;
    sqlclienteENDERECOEMPRESA: TStringField;
    sqlclienteBAIRROEMPRESA: TStringField;
    sqlclienteCIDADEEMPRESA: TStringField;
    sqlclienteCEPEMPRESA: TStringField;
    sqlclienteESTADOEMPRESA: TStringField;
    sqlclienteDEPENDENTE: TStringField;
    sqlclienteCOTATITULAR: TIntegerField;
    sqlclienteDATACADASTRO: TDateField;
    sqlclientePARENTESCO: TStringField;
    sqlclienteDATAATESTADO: TDateField;
    sqlclienteFOTO: TStringField;
    cdsclienteIDCLIENTE: TIntegerField;
    cdsclienteNOME: TStringField;
    cdsclienteENDERECO: TStringField;
    cdsclienteBAIRRO: TStringField;
    cdsclienteCIDADE: TStringField;
    cdsclienteCEP: TStringField;
    cdsclienteESTADO: TStringField;
    cdsclienteESTADOCIVIL: TStringField;
    cdsclienteIDENTIDADE: TStringField;
    cdsclienteCPF: TStringField;
    cdsclienteCTPS: TStringField;
    cdsclienteDATANASCIMENTO: TDateField;
    cdsclienteCATEGORIATITULAR: TStringField;
    cdsclienteTELEFONE: TStringField;
    cdsclienteCELULAR: TStringField;
    cdsclienteEMAIL: TStringField;
    cdsclienteNOMEEMPRESA: TStringField;
    cdsclienteTELEFONEEMPRESA: TStringField;
    cdsclienteENDERECOEMPRESA: TStringField;
    cdsclienteBAIRROEMPRESA: TStringField;
    cdsclienteCIDADEEMPRESA: TStringField;
    cdsclienteCEPEMPRESA: TStringField;
    cdsclienteESTADOEMPRESA: TStringField;
    cdsclienteDEPENDENTE: TStringField;
    cdsclienteCOTATITULAR: TIntegerField;
    cdsclienteDATACADASTRO: TDateField;
    cdsclientePARENTESCO: TStringField;
    cdsclienteDATAATESTADO: TDateField;
    cdsclienteFOTO: TStringField;
    sqldepIDCLIENTE: TIntegerField;
    sqldepNOME: TStringField;
    sqldepENDERECO: TStringField;
    sqldepBAIRRO: TStringField;
    sqldepCIDADE: TStringField;
    sqldepCEP: TStringField;
    sqldepESTADO: TStringField;
    sqldepESTADOCIVIL: TStringField;
    sqldepIDENTIDADE: TStringField;
    sqldepCPF: TStringField;
    sqldepCTPS: TStringField;
    sqldepDATANASCIMENTO: TDateField;
    sqldepCATEGORIATITULAR: TStringField;
    sqldepTELEFONE: TStringField;
    sqldepCELULAR: TStringField;
    sqldepEMAIL: TStringField;
    sqldepNOMEEMPRESA: TStringField;
    sqldepTELEFONEEMPRESA: TStringField;
    sqldepENDERECOEMPRESA: TStringField;
    sqldepBAIRROEMPRESA: TStringField;
    sqldepCIDADEEMPRESA: TStringField;
    sqldepCEPEMPRESA: TStringField;
    sqldepESTADOEMPRESA: TStringField;
    sqldepDEPENDENTE: TStringField;
    sqldepCOTATITULAR: TIntegerField;
    sqldepDATACADASTRO: TDateField;
    sqldepPARENTESCO: TStringField;
    sqldepDATAATESTADO: TDateField;
    sqldepFOTO: TStringField;
    cdsdepIDCLIENTE: TIntegerField;
    cdsdepNOME: TStringField;
    cdsdepENDERECO: TStringField;
    cdsdepBAIRRO: TStringField;
    cdsdepCIDADE: TStringField;
    cdsdepCEP: TStringField;
    cdsdepESTADO: TStringField;
    cdsdepESTADOCIVIL: TStringField;
    cdsdepIDENTIDADE: TStringField;
    cdsdepCPF: TStringField;
    cdsdepCTPS: TStringField;
    cdsdepDATANASCIMENTO: TDateField;
    cdsdepCATEGORIATITULAR: TStringField;
    cdsdepTELEFONE: TStringField;
    cdsdepCELULAR: TStringField;
    cdsdepEMAIL: TStringField;
    cdsdepNOMEEMPRESA: TStringField;
    cdsdepTELEFONEEMPRESA: TStringField;
    cdsdepENDERECOEMPRESA: TStringField;
    cdsdepBAIRROEMPRESA: TStringField;
    cdsdepCIDADEEMPRESA: TStringField;
    cdsdepCEPEMPRESA: TStringField;
    cdsdepESTADOEMPRESA: TStringField;
    cdsdepDEPENDENTE: TStringField;
    cdsdepCOTATITULAR: TIntegerField;
    cdsdepDATACADASTRO: TDateField;
    cdsdepPARENTESCO: TStringField;
    cdsdepDATAATESTADO: TDateField;
    cdsdepFOTO: TStringField;
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFicha: TfmFicha;

implementation
  uses UnitdmConect, UnitCadCliente,UnitDmSesi;
{$R *.dfm}

procedure TfmFicha.RLReport1AfterPrint(Sender: TObject);
begin
  close;
end;

procedure TfmFicha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
