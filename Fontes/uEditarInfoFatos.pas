unit uEditarInfoFatos;

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
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfrmEditarInfoFatos = class(TForm)
    qryFatos: TADOQuery;
    dtsFatos: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridPopupMenu1: TcxGridPopupMenu;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditarInfoFatos: TfrmEditarInfoFatos;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmEditarInfoFatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qryFatos.Close;
end;

procedure TfrmEditarInfoFatos.FormCreate(Sender: TObject);
begin
    qryFatos.Close;
    qryFatos.SQL.Clear;
    qryFatos.SQL.Add('SELECT * FROM ' + frmPrincipal.sTabela);
end;

procedure TfrmEditarInfoFatos.FormShow(Sender: TObject);
begin
    frmPrincipal.aguarde(0,'Acessando as informações sobre a tabela de fatos');
    qryFatos.Open;
    cxGrid1DBTableView1.DataController.CreateAllItems;
    frmPrincipal.aguarde(1,'');
end;

end.
