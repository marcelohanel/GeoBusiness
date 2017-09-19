unit uRegistro;

interface

uses
  uni_RegCommon, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, OnGuard,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel;

type
  TfrmRegistro = class(TForm)
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    edtSerial: TcxTextEdit;
    cxLabel2: TcxLabel;
    edtMaquina: TcxTextEdit;
    cxLabel3: TcxLabel;
    edtRelease: TcxTextEdit;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistro: TfrmRegistro;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmRegistro.cxButton1Click(Sender: TObject);
begin
    close;
end;

procedure TfrmRegistro.cxButton2Click(Sender: TObject);
var
  SerialNum : longint;
begin
  // Validate the serial number
  try
    SerialNum := StrToInt(edtSerial.Text);
  except
    MessageDlg('Número de série inválido.  Verifique e tente novamente.', mtInformation, [mbOK], 0);
    edtSerial.SetFocus;
    edtSerial.SelectAll;
    exit;
  end;

  // Validate the release code
  if not IsReleaseCodeValid (edtRelease.Text, SerialNum) then
  begin
    MessageDlg('Código de liberação inválido.  Verifique e tente novamente.', mtInformation, [mbOK], 0);
    edtRelease.SetFocus;
    edtRelease.Text := '';
    exit;
  end
  else
  begin
    MessageDlg('Registro Completo.', mtInformation, [mbOK], 0);
    SaveRegistrationInformation(edtRelease.Text, SerialNum);

    frmPrincipal.sSerial                     := edtSerial.Text;
    frmPrincipal.sRelease                    := edtRelease.Text;
    frmPrincipal.dxStatusBar1.Panels[2].Text := 'Cópia Registrada';

    frmPrincipal.lDemo                       := False;
    frmPrincipal.cxLabel3.Visible            := False;
    frmPrincipal.cxLabel4.Visible            := False;
    frmPrincipal.cxLabel5.Visible            := False;
    frmPrincipal.cxLabel6.Visible            := False;

    Close;
  end;
end;

procedure TfrmRegistro.FormShow(Sender: TObject);
begin
    edtSerial.Text  := frmPrincipal.sSerial;
    edtRelease.Text := frmPrincipal.sRelease;
    edtMaquina.Text := format('%d',[MachineModifier]);

    edtRelease.Properties.ReadOnly := True;
    cxButton2.Enabled := False;

    if frmPrincipal.sSerial = '' then
    begin
        edtSerial.Text := Entry(1,frmPrincipal.sVersao,'.');
        edtRelease.Properties.ReadOnly := False;
        cxButton2.Enabled := True;
    end;
end;

end.
