program pGeoBusiness;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uAguarde in 'uAguarde.pas' {frmAguarde},
  uFiltro in 'uFiltro.pas' {frmFiltro},
  uArqGeoBusiness in 'uArqGeoBusiness.pas' {frmArqGeoBusiness},
  uInformacoes in 'uInformacoes.pas' {frmInformacoes},
  uInfoLocalizacao in 'uInfoLocalizacao.pas' {frmInfoLocalizacao},
  uEditarInfoLocalizacao in 'uEditarInfoLocalizacao.pas' {frmEditarInfoLocalizacao},
  uEditarInfoFatos in 'uEditarInfoFatos.pas' {frmEditarInfoFatos},
  uRegistro in 'uRegistro.pas' {frmRegistro},
  uni_RegCommon in 'uni_RegCommon.pas',
  uAbout in 'uAbout.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
