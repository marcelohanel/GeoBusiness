unit uArqGeoBusiness;

interface

uses
  adodb, dbclient, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, DB, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMemo, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookAndFeels, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver;

type
  TfrmArqGeoBusiness = class(TForm)
    DataSource1: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    SaveDialog1: TSaveDialog;
    cxLabel2: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel3: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    btnConectar: TcxButton;
    ADOConnection1: TADOConnection;
    qryAtualiza: TADOQuery;
    cbxSGBD: TcxComboBox;
    cxLabel4: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure CriaBaseDados;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure CriaAccess;
    procedure CriaSQLServer;
    procedure CriaOracle;
  public
    { Public declarations }
    lOK : boolean;
  end;

var
  frmArqGeoBusiness: TfrmArqGeoBusiness;
  lErro : boolean;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmArqGeoBusiness.btnConectarClick(Sender: TObject);
var
    ConnectionString: String;
begin
    ConnectionString := PromptDataSource(0, '');

    if ConnectionString > '' then
       frmPrincipal.cdsGeoBusinessconnection_string.Value := ConnectionString;
end;

procedure TfrmArqGeoBusiness.CriaBaseDados;
begin
    lErro := false;

    try
        ADOConnection1.Close;
        ADOConnection1.ConnectionString := frmPrincipal.cdsGeoBusinessconnection_string.AsString;
        ADOConnection1.Open;
    except
        on E: Exception do
        begin
            MessageDlg('Não foi possível conectar a base de dados informada em função da situação descrita abaixo.'+#13+#10+''+#13+#10+'Situação: ' + e.Message, mtWarning, [mbOK], 0);
            lErro := true;
            exit;
        end;
    end;

    if frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft Access' then
       CriaAccess;

    if (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Microsoft SQL Server')  or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'MySQL')                 or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Postgres')              or
       (frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Firebird ou Interbase') then
        CriaSQLServer;

    if frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString = 'Oracle' then
       CriaOracle;
end;

procedure TfrmArqGeoBusiness.CriaOracle;
begin
    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE TABLE GEO_REFERENCIA');
      qryAtualiza.SQL.Add('(');
      qryAtualiza.SQL.Add(' ID_REFERENCIA   VARCHAR2(100) NOT NULL');
      qryAtualiza.SQL.Add(',CIDADE          VARCHAR2(100)');
      qryAtualiza.SQL.Add(',MICROREGIAO     VARCHAR2(100)');
      qryAtualiza.SQL.Add(',MESOREGIAO      VARCHAR2(100)');
      qryAtualiza.SQL.Add(',ESTADO          VARCHAR2(100)');
      qryAtualiza.SQL.Add(',REGIAO          VARCHAR2(100)');
      qryAtualiza.SQL.Add(',PAIS            VARCHAR2(100)');
      qryAtualiza.SQL.Add(',REF_PAIS        VARCHAR2(1)');
      qryAtualiza.SQL.Add(',REF_REGIAO      VARCHAR2(1)');
      qryAtualiza.SQL.Add(',REF_ESTADO      VARCHAR2(1)');
      qryAtualiza.SQL.Add(',REF_MESO        VARCHAR2(1)');
      qryAtualiza.SQL.Add(',REF_MICRO       VARCHAR2(1)');
      qryAtualiza.SQL.Add(',LATITUDE        FLOAT');
      qryAtualiza.SQL.Add(',LONGITUDE       FLOAT');
      qryAtualiza.SQL.Add(')');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('ALTER TABLE GEO_REFERENCIA');
      qryAtualiza.SQL.Add('ADD CONSTRAINT PK_GEO_REFERENCIA PRIMARY KEY(ID_REFERENCIA) ENABLE');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_PAIS');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (PAIS)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_REGIAO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (REGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_ESTADO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (ESTADO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_MESO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (MESOREGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_MICRO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (MICROREGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_CIDADE');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (CIDADE)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;
end;

procedure TfrmArqGeoBusiness.CriaSQLServer;
begin
    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE TABLE GEO_REFERENCIA');
      qryAtualiza.SQL.Add('(');
      qryAtualiza.SQL.Add(' ID_REFERENCIA   VARCHAR(100) NOT NULL');
      qryAtualiza.SQL.Add(',CIDADE          VARCHAR(100)');
      qryAtualiza.SQL.Add(',MICROREGIAO     VARCHAR(100)');
      qryAtualiza.SQL.Add(',MESOREGIAO      VARCHAR(100)');
      qryAtualiza.SQL.Add(',ESTADO          VARCHAR(100)');
      qryAtualiza.SQL.Add(',REGIAO          VARCHAR(100)');
      qryAtualiza.SQL.Add(',PAIS            VARCHAR(100)');
      qryAtualiza.SQL.Add(',REF_PAIS        VARCHAR(1)');
      qryAtualiza.SQL.Add(',REF_REGIAO      VARCHAR(1)');
      qryAtualiza.SQL.Add(',REF_ESTADO      VARCHAR(1)');
      qryAtualiza.SQL.Add(',REF_MESO        VARCHAR(1)');
      qryAtualiza.SQL.Add(',REF_MICRO       VARCHAR(1)');
      qryAtualiza.SQL.Add(',LATITUDE        FLOAT');
      qryAtualiza.SQL.Add(',LONGITUDE       FLOAT');
      qryAtualiza.SQL.Add(')');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('ALTER TABLE GEO_REFERENCIA');
      qryAtualiza.SQL.Add('ADD CONSTRAINT PK_GEO_REFERENCIA PRIMARY KEY(ID_REFERENCIA)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_PAIS');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (PAIS)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_REGIAO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (REGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_ESTADO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (ESTADO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_MESO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (MESOREGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_MICRO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (MICROREGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_CIDADE');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (CIDADE)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;
end;

procedure TfrmArqGeoBusiness.CriaAccess;
begin
    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE TABLE GEO_REFERENCIA');
      qryAtualiza.SQL.Add('(');
      qryAtualiza.SQL.Add(' ID_REFERENCIA   TEXT(100)');
      qryAtualiza.SQL.Add(',CIDADE          TEXT(100)');
      qryAtualiza.SQL.Add(',MICROREGIAO     TEXT(100)');
      qryAtualiza.SQL.Add(',MESOREGIAO      TEXT(100)');
      qryAtualiza.SQL.Add(',ESTADO          TEXT(100)');
      qryAtualiza.SQL.Add(',REGIAO          TEXT(100)');
      qryAtualiza.SQL.Add(',PAIS            TEXT(100)');
      qryAtualiza.SQL.Add(',REF_PAIS        TEXT(1)');
      qryAtualiza.SQL.Add(',REF_REGIAO      TEXT(1)');
      qryAtualiza.SQL.Add(',REF_ESTADO      TEXT(1)');
      qryAtualiza.SQL.Add(',REF_MESO        TEXT(1)');
      qryAtualiza.SQL.Add(',REF_MICRO       TEXT(1)');
      qryAtualiza.SQL.Add(',LATITUDE        DOUBLE');
      qryAtualiza.SQL.Add(',LONGITUDE       DOUBLE');
      qryAtualiza.SQL.Add(')');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('ALTER TABLE GEO_REFERENCIA');
      qryAtualiza.SQL.Add('ADD CONSTRAINT PK_GEO_REFERENCIA PRIMARY KEY(ID_REFERENCIA)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_PAIS');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (PAIS)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_REGIAO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (REGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_ESTADO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (ESTADO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_MESO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (MESOREGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_MICRO');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (MICROREGIAO)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;

    try
      qryAtualiza.Close;
      qryAtualiza.SQL.Clear;
      qryAtualiza.SQL.Add('CREATE INDEX ixGEO_REFERENCIA_CIDADE');
      qryAtualiza.SQL.Add(' ON GEO_REFERENCIA (CIDADE)');
      qryAtualiza.ExecSQL;
      qryAtualiza.Close;
    except
    end;
end;

procedure TfrmArqGeoBusiness.cxButton1Click(Sender: TObject);
begin
    if cxDBTextEdit1.Text = '' then
    begin
        MessageDlg('Informe um nome para o GeoBusiness', mtInformation, [mbOK], 0);
        Exit;
    end;

    if cxDBMemo2.Text = '' then
    begin
        MessageDlg('Informe uma string de conexão para o GeoBusiness', mtInformation, [mbOK], 0);
        Exit;
    end;

    frmPrincipal.cdsGeoBusinesscampo_aux_1.AsString := cbxSGBD.Text;

    frmPrincipal.aguarde(0,'Gerando as informações na base de dados');
    CriaBaseDados;
    frmPrincipal.aguarde(1,'');

    if lErro then
       Exit;

    if SaveDialog1.Execute then
    begin
        frmPrincipal.cdsGeoBusiness.Post;
        frmPrincipal.cdsGeoBusiness.MergeChangeLog;
        frmPrincipal.cdsGeoBusiness.SaveToFile(SaveDialog1.FileName);
        frmPrincipal.sArquivo := SaveDialog1.FileName;
    end;

    lOK := True;
    close;
end;

procedure TfrmArqGeoBusiness.cxButton2Click(Sender: TObject);
begin
    close;
end;

procedure TfrmArqGeoBusiness.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    ADOConnection1.Close;
    frmPrincipal.cdsGeoBusiness.Cancel;
end;

procedure TfrmArqGeoBusiness.FormCreate(Sender: TObject);
begin
    lOK := False;
end;

procedure TfrmArqGeoBusiness.FormShow(Sender: TObject);
begin
    frmPrincipal.cdsGeoBusiness.EmptyDataSet;
    frmPrincipal.cdsGeoBusiness.Insert;
end;

end.
