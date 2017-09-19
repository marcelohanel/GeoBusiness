unit uFiltro;

interface

uses
  xhConsts, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxFilterControl, cxDBFilterControl, DB, ADODB,
  cxLookAndFeels, dxSkinscxPCPainter, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxPC, Menus, cxButtons;

type
  TfrmFiltro = class(TForm)
    qryFiltro: TADOQuery;
    btnConfirmar: TButton;
    Button1: TButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cbxFiltro1: TcxDBFilterControl;
    cxMemo1: TcxMemo;
    cxButton1: TcxButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltro: TfrmFiltro;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmFiltro.btnConfirmarClick(Sender: TObject);
begin
    frmPrincipal.sFiltro := cxMemo1.Text;
    close;
end;

procedure TfrmFiltro.Button1Click(Sender: TObject);
begin
    close;
end;

procedure TfrmFiltro.cxButton1Click(Sender: TObject);
begin
    cxMemo1.Text := cbxFiltro1.FilterText;
end;

procedure TfrmFiltro.FormShow(Sender: TObject);
begin
    cxPageControl1.ActivePageIndex := 0;

    cbxFiltro1.FilterOptions.DateTimeFormat := frmPrincipal.cdsGeoBusinesscampo_aux_2.Value;

    if frmPrincipal.cdsGeoBusinesscampo_aux_3.Value = 'S' then
       cbxFiltro1.FilterOptions.SupportedBetween := True
    else
       cbxFiltro1.FilterOptions.SupportedBetween := False;

    if frmPrincipal.cdsGeoBusinesscampo_aux_4.Value = 'S' then
       cbxFiltro1.FilterOptions.SupportedIn := True
    else
       cbxFiltro1.FilterOptions.SupportedIn := False;

    if frmPrincipal.cdsGeoBusinesscampo_aux_5.Value = 'S' then
       cbxFiltro1.FilterOptions.SupportedLike := True
    else
       cbxFiltro1.FilterOptions.SupportedLike := False;
end;

end.
