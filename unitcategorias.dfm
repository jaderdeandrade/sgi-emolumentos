object fmCategorias: TfmCategorias
  Left = 332
  Top = 227
  Width = 476
  Height = 309
  BorderIcons = [biSystemMenu]
  Caption = 'CATEGORIAS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 468
    Height = 234
    Align = alClient
    DataSource = dmsesi.dsCategoria
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 444
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 234
    Width = 468
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 157
      Height = 26
      Caption = 'COMO APAGAR UM ARQUIVO?'#13#10'Aperte as teclas Ctrl + Delete'
    end
    object Button1: TButton
      Left = 200
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
