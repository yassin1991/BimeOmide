program Bime;

uses
  Vcl.Forms,
  MainPage in 'MainPage.pas' {MainPageForm},
  Vcl.Themes,
  Vcl.Styles,
  NewFile in 'NewFile.pas' {NewFileForm},
  dbcomponent in 'dbcomponent.pas' {DataModule5: TDataModule},
  NewPerson in 'NewPerson.pas' {NewPersonForm},
  NewPatient in 'NewPatient.pas' {NewPatientForm},
  PersonSearch in 'PersonSearch.pas' {PersonSearchForm},
  PatientSearch in 'PatientSearch.pas' {PatientSearchForm},
  FileFind in 'FileFind.pas' {FindFileForm},
  FindPerson in 'FindPerson.pas' {FindPersonForm},
  PersonEdit in 'PersonEdit.pas' {PersonEditForm},
  FileEdit in 'FileEdit.pas' {FileEditForm},
  AboutUs in 'AboutUs.pas' {AboutUsForm},
  Baygani in 'Baygani.pas' {BayganiForm},
  PersonSearchFileEdit in 'PersonSearchFileEdit.pas' {PersonSearchFileEditForm},
  PatientSearchFileEdit in 'PatientSearchFileEdit.pas' {PatientSearchFileEditForm},
  FindPatient in 'FindPatient.pas' {FindPatientForm},
  Destroy in 'Destroy.pas' {DestroyForm},
  Delivery in 'Delivery.pas' {DeliveryForm},
  Folder in 'Folder.pas' {FolderForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TDataModule5, DataModule5);
  Application.CreateForm(TMainPageForm, MainPageForm);
  Application.CreateForm(TNewPersonForm, NewPersonForm);
  Application.CreateForm(TNewPatientForm, NewPatientForm);
  Application.CreateForm(TPersonSearchForm, PersonSearchForm);
  Application.CreateForm(TPatientSearchForm, PatientSearchForm);
  Application.CreateForm(TNewFileForm, NewFileForm);
  Application.CreateForm(TFindFileForm, FindFileForm);
  Application.CreateForm(TFindPersonForm, FindPersonForm);
  Application.CreateForm(TPersonEditForm, PersonEditForm);
  Application.CreateForm(TFileEditForm, FileEditForm);
  Application.CreateForm(TAboutUsForm, AboutUsForm);
  Application.CreateForm(TBayganiForm, BayganiForm);
  Application.CreateForm(TPersonSearchFileEditForm, PersonSearchFileEditForm);
  Application.CreateForm(TPatientSearchFileEditForm, PatientSearchFileEditForm);
  Application.CreateForm(TFindPatientForm, FindPatientForm);
  Application.CreateForm(TDestroyForm, DestroyForm);
  Application.CreateForm(TDeliveryForm, DeliveryForm);
  Application.CreateForm(TFolderForm, FolderForm);
  Application.Run;
end.
