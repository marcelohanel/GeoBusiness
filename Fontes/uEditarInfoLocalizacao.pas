unit uEditarInfoLocalizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver;

type
  TfrmEditarInfoLocalizacao = class(TForm)
    qryGeoReferencia: TADOQuery;
    qryGeoReferenciaID_REFERENCIA: TWideStringField;
    qryGeoReferenciaCIDADE: TWideStringField;
    qryGeoReferenciaMICROREGIAO: TWideStringField;
    qryGeoReferenciaMESOREGIAO: TWideStringField;
    qryGeoReferenciaESTADO: TWideStringField;
    qryGeoReferenciaREGIAO: TWideStringField;
    qryGeoReferenciaPAIS: TWideStringField;
    qryGeoReferenciaREF_PAIS: TWideStringField;
    qryGeoReferenciaREF_REGIAO: TWideStringField;
    qryGeoReferenciaREF_ESTADO: TWideStringField;
    qryGeoReferenciaREF_MESO: TWideStringField;
    qryGeoReferenciaREF_MICRO: TWideStringField;
    qryGeoReferenciaLATITUDE: TFloatField;
    qryGeoReferenciaLONGITUDE: TFloatField;
    dtsGeoReferencia: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_REFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1MICROREGIAO: TcxGridDBColumn;
    cxGrid1DBTableView1MESOREGIAO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1REGIAO: TcxGridDBColumn;
    cxGrid1DBTableView1PAIS: TcxGridDBColumn;
    cxGrid1DBTableView1REF_PAIS: TcxGridDBColumn;
    cxGrid1DBTableView1REF_REGIAO: TcxGridDBColumn;
    cxGrid1DBTableView1REF_ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1REF_MESO: TcxGridDBColumn;
    cxGrid1DBTableView1REF_MICRO: TcxGridDBColumn;
    cxGrid1DBTableView1LATITUDE: TcxGridDBColumn;
    cxGrid1DBTableView1LONGITUDE: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditarInfoLocalizacao: TfrmEditarInfoLocalizacao;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmEditarInfoLocalizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qryGeoReferencia.Close;
end;

procedure TfrmEditarInfoLocalizacao.FormShow(Sender: TObject);
begin
    frmPrincipal.aguarde(0,'Acessando as informa��es sobre as localiza��es');

    try
       qryGeoReferencia.Open;
    except
    end;

    frmPrincipal.aguarde(1,'');
end;

end.
