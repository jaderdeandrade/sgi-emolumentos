unit UnitParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Buttons, StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls,DB;

type
  TfmParametros = class(TForm)
    Panel1: TPanel;
    btGravar: TButton;
    btEditar: TButton;
    btCancelar: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    btFoto1: TSpeedButton;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    cbEstado: TDBComboBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit12: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btFoto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Function VerificaCampos(DataSource : TDataSource) : Boolean;
    procedure habilitacampos(x: boolean);
    procedure foto;
    { Public declarations }
  end;

var
  fmParametros: TfmParametros;

implementation

uses UnitSesi, UnitDmSesi;

{$R *.dfm}

procedure TfmParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfmParametros.btCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfmParametros.habilitacampos(x: boolean);
var
  count : integer;
begin
  for count:=0 to Pred(Self.ComponentCount) do
  begin
    if x = false then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= false;

        if Self.Components[count].ClassType = TDBComboBox then
        (Self.Components[count] as TDBComboBox).Enabled:= false;

        if Self.Components[count].ClassType = TButton then
          begin
           if (Self.Components[count] as TButton).Name = 'btGravar' then
            (Self.Components[count] as TButton).Enabled:= false;
          end;

        if Self.Components[count].ClassType = TSpeedButton then
          begin
           if (Self.Components[count] as TSpeedButton).Name = 'btFoto1' then
            (Self.Components[count] as TSpeedButton).Enabled:= false;
          end;
      end
    else
    if x = true then
      begin
        if Self.Components[count].ClassType = TDBEdit then
        (Self.Components[count] as TDBEdit).Enabled:= true;

        if Self.Components[count].ClassType = TDBComboBox then
        (Self.Components[count] as TDBComboBox).Enabled:= true;

        if Self.Components[count].ClassType = TButton then
          begin
           if (Self.Components[count] as TButton).Name = 'btGravar' then
            (Self.Components[count] as TButton).Enabled:= true;
          end;

        if Self.Components[count].ClassType = TSpeedButton then
          begin
           if (Self.Components[count] as TSpeedButton).Name = 'btFoto1' then
            (Self.Components[count] as TSpeedButton).Enabled:= true;
          end;
      end;
  end;

end;

procedure TfmParametros.btGravarClick(Sender: TObject);
begin
  if VerificaCampos(dmSesi.dsParametro) then
    begin
      dmSesi.cdsParametro.ApplyUpdates(0);
      close;
    end;
end;

procedure TfmParametros.btEditarClick(Sender: TObject);
begin
  dmSesi.cdsParametro.Edit;
  habilitacampos(true);
end;

procedure TfmParametros.btFoto1Click(Sender: TObject);
begin
  try
      OpenPictureDialog1.Execute;
      DBEdit12.Text     := OpenPictureDialog1.FileName;
      Image1.Picture.LoadFromFile(DBEdit12.Text);
      Image1.Visible := true;
    except
    on EInvalidGraphic do
       showmessage('Erro!Imagem inválida ou campo vazio.Dê OK para continuar.');
    end;
end;

procedure TfmParametros.foto;
var
 CaminhoFoto1: String;
begin
  if dmsesi.cdsParametroLOGOMARCA.AsString <> '' then
      begin
        try
          image1.Visible := true;
          image1.Refresh;
          CaminhoFoto1    := dmsesi.cdsParametroLOGOMARCA.AsString;
          image1.Picture.LoadFromFile(CaminhoFoto1);
          DBEdit12.Text     := CaminhoFoto1;
         except
      end;
  end;
end;

function TfmParametros.VerificaCampos(DataSource: TDataSource): Boolean;
Var
  C : Byte;
begin                                                             // A rotina ao lado faz um laço em todos os fields da
   Result := True;                                                // tabela  e procura por fields que sejam
   With(DataSource.DataSet)Do                                     // requeridos pelo sistema e estejam em branco.
   Begin                                                          // Se houver algum requerido em branco, então o sistema
      For C := 0 To FieldCount -1 Do                              // emitirá uma mensagem sobre o ocorrido e colocará o
      Begin                                                       // focus "SetFocus" no campo não preenchido;
         If((Fields[C].Tag=1))And(Trim(Fields[C].Text)='')Then
         Begin
            Result := False;
            MessageBeep(64);
            MessageDlg('Preencha o campo "'+Fields[C].DisplayLabel+'".',mtInformation,[mbOk],0);
            Fields[C].FocusControl;
            Break;
         End;
      End;
   End;

end;

end.
