unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, Buttons, Messages, ExtCtrls, 
  ActnList, AdvMenus, RzButton, ImgList, RzPanel, RzStatus,
  RzDBStat, ExceptionLog;

type
  TMainForm = class(TForm)
    ActionList: TActionList;
    Panel1: TPanel;
    pnlMain: TPanel;
    RzMainToolbar: TRzToolbar;
    sbrSysStatus: TRzStatusBar;
    ImageList: TImageList;
    btnCreateStockOrder: TRzToolButton;
    imgTitleImage: TImage;
    BtnStockCenter: TRzBitBtn;
    actCreateSupplier: TAction;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    actSupplierManager: TAction;
    actCreateBrand: TAction;
    actBrandManager: TAction;
    actCreateProduct: TAction;
    actProductManager: TAction;
    actCreateCatalog: TAction;
    actCatalogManager: TAction;
    actCreateStockOrder: TAction;
    actStockOrderManager: TAction;
    actExceptStockOrder: TAction;
    actPriceEdit: TAction;
    actProductEdit: TAction;
    actShelfManager: TAction;
    actSellStat: TAction;
    actCreateOrder: TAction;
    actOrderManager: TAction;
    actSendBackManager: TAction;
    actDispatchingQuery: TAction;
    actMemberManager: TAction;
    actProductIntoDepot: TAction;
    actCreateDepotPosition: TAction;
    actDepotPositionManager: TAction;
    actProductDepotManager: TAction;
    actCreateExceptStockOrder: TAction;
    actOrderDispatchingManager: TAction;
    actOrderSendBackManager: TAction;
    actCreateExpress: TAction;
    actExpressManager: TAction;
    actOrderDispatchingQuery: TAction;
    actRoleManager: TAction;
    actUserManager: TAction;
    actFinanceOrderManager: TAction;
    actFinanceSendBackManager: TAction;
    actStockCenter: TAction;
    actFinanceCenter: TAction;
    actDepotCenter: TAction;
    actProductCenter: TAction;
    actMemServiceCenter: TAction;
    actLogisticsCenter: TAction;
    actSysCenter: TAction;
    mmMain: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    clkstDateTime: TRzClockStatus;
    vrstsVersion: TRzVersionInfoStatus;
    vrinfVersion: TRzVersionInfo;
    stspnRealName: TRzStatusPane;
    stspnCreateDate: TRzStatusPane;
    stspnLastLoginDate: TRzStatusPane;
    N8: TMenuItem;
    btnStkoManager: TRzToolButton;
    RzSpacer1: TRzSpacer;
    btnCreateOrder: TRzToolButton;
    btnOrderManager: TRzToolButton;
    RzSpacer2: TRzSpacer;
    btnProductIntoDepot: TRzToolButton;
    btnOrderOut: TRzToolButton;
    N12: TMenuItem;
    N14: TMenuItem;
    N17: TMenuItem;
    stspnServer: TRzStatusPane;
    actFinanceStat: TAction;
    procedure actFinanceCenterExecute(Sender: TObject);
    procedure actFinanceOrderManagerExecute(Sender: TObject);
    procedure actFinanceSendBackManagerExecute(Sender: TObject);
    procedure actStockCenterExecute(Sender: TObject);
    procedure actCreateSupplierExecute(Sender: TObject);
    procedure actSupplierManagerExecute(Sender: TObject);
    procedure actCreateBrandExecute(Sender: TObject);
    procedure actBrandManagerExecute(Sender: TObject);
    procedure actCreateProductExecute(Sender: TObject);
    procedure actProductManagerExecute(Sender: TObject);
    procedure actCreateCatalogExecute(Sender: TObject);
    procedure actCatalogManagerExecute(Sender: TObject);
    procedure actCreateStockOrderExecute(Sender: TObject);
    procedure actStockOrderManagerExecute(Sender: TObject);
    procedure actExceptStockOrderExecute(Sender: TObject);
    procedure actDepotCenterExecute(Sender: TObject);
    procedure actProductIntoDepotExecute(Sender: TObject);
    procedure actCreateDepotPositionExecute(Sender: TObject);
    procedure actDepotPositionManagerExecute(Sender: TObject);
    procedure actProductDepotManagerExecute(Sender: TObject);
    procedure actCreateExceptStockOrderExecute(Sender: TObject);
    procedure actOrderDispatchingManagerExecute(Sender: TObject);
    procedure actOrderSendBackManagerExecute(Sender: TObject);
    procedure actProductCenterExecute(Sender: TObject);
    procedure actPriceEditExecute(Sender: TObject);
    procedure actProductEditExecute(Sender: TObject);
    procedure actShelfManagerExecute(Sender: TObject);
    procedure actSellStatExecute(Sender: TObject);
    procedure actMemServiceCenterExecute(Sender: TObject);
    procedure actCreateOrderExecute(Sender: TObject);
    procedure actOrderManagerExecute(Sender: TObject);
    procedure actSendBackManagerExecute(Sender: TObject);
    procedure actDispatchingQueryExecute(Sender: TObject);
    procedure actMemberManagerExecute(Sender: TObject);
    procedure actLogisticsCenterExecute(Sender: TObject);
    procedure actCreateExpressExecute(Sender: TObject);
    procedure actExpressManagerExecute(Sender: TObject);
    procedure actOrderDispatchingQueryExecute(Sender: TObject);
    procedure actSysCenterExecute(Sender: TObject);
    procedure actRoleManagerExecute(Sender: TObject);
    procedure actUserManagerExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure actFinanceStatExecute(Sender: TObject);
  private
    procedure InitData;
    procedure SetStatusBar;
    procedure SetPrivilege;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  CurrencyFrame : TFrame;

implementation

{$R *.dfm}

uses untSysManager, untUserManager, untLogin,about, untCommonUtil, untRoleManager,
     untMenServiceCenter,untMenManager, untStockCenter, untProductCenter, untFinanceCenter,
     untDepotManagerCenter, untLogisticsCenter, untSupplierManager, untBrandManager,
     untCatalogManager, untExpressManager, untProductManager, untCreateStockOrder,
     untStockOrderManager, untExceptStockOrder, untPriceEdit, untProductEdit, untShelfManager,
     untSellStat, untCreateOrder, untOrderManager, untSendBackManager, untDispatchingQuery,
     untProductIntoDepot, untDepotPositionManager, untFinanceOrderManager, untFinanceSendBackManager,
     untEStockOrder, untODpManager, untOSBackManager, untFinanceStat;

var currButton : TRzBitBtn;

//------------------------------------------------------------------------------
// ϵͳ�¼�
//------------------------------------------------------------------------------

//���ڴ���
procedure TMainForm.FormCreate(Sender: TObject);
begin
  InitData;
end;

//���ڹر�
procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

//------------------------------------------------------------------------------
// �����͹���
//------------------------------------------------------------------------------

//���ݳ�ʼ��
procedure TMainForm.InitData;
begin
  currButton := TRzBitBtn.Create(nil);
  SetPrivilege;
  SetStatusBar;
end;

//����״̬��
procedure TMainForm.SetStatusBar;
begin
  stspnRealName.Caption := '������' + CurrentUser.RealName;
  stspnCreateDate.Caption := '����ʱ�䣺' + CurrentUser.CreateDate;
  stspnLastLoginDate.Caption := '����¼ʱ�䣺' + CurrentUser.LastLoginDate;
  stspnServer.Caption := CurrentUser.server;
end;

//����Ȩ��
procedure TMainForm.SetPrivilege;
var
  i,listIndex : Integer;
begin
  for i := 0 to ActionList.ActionCount - 1 do
  begin
    if CurrentUser.RoleList.Find(IntToStr(ActionList.Actions[i].Tag),listIndex) then
      TAction(ActionList.Actions[i]).Enabled := True
    else
      TAction(ActionList.Actions[i]).Enabled := False;
  end;
end;

//------------------------------------------------------------------------------
// ����ִ��
//------------------------------------------------------------------------------

//��������
procedure TMainForm.actFinanceCenterExecute(Sender: TObject);
begin
  currButton.Color := clBtnFace;
  currButton := RzBitBtn6;
  currButton.Color := clSkyBlue;
  CurrencyFrame := ShowFrame(CurrencyFrame,TfrmFinanceCenter,pnlMain);
end;

//���񶩵�����
procedure TMainForm.actFinanceOrderManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmFinanceOrderManager);
  MainForm.Show;
end;

//�˻���Ϣ����
procedure TMainForm.actFinanceSendBackManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmFinanceSendBackManager);
  MainForm.Show;
end;

//����ͳ��
procedure TMainForm.actFinanceStatExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmFinanceStat);
  MainForm.Show;
end;

//�ɹ�����
procedure TMainForm.actStockCenterExecute(Sender: TObject);
begin
  currButton.Color := clBtnFace;
  currButton := RzBitBtn5;
  currButton.Color := clSkyBlue;
  CurrencyFrame := ShowFrame(CurrencyFrame,TfrmStockCenter,pnlMain);
end;

//�½���Ӧ��
procedure TMainForm.actCreateSupplierExecute(Sender: TObject);
begin
  //---
end;

//��Ӧ����Ϣ����
procedure TMainForm.actSupplierManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmSupplierManager);
  MainForm.Show;
end;

//�½�Ʒ��
procedure TMainForm.actCreateBrandExecute(Sender: TObject);
begin
 //---
end;

//Ʒ�ƹ���
procedure TMainForm.actBrandManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmBrandManager);
  MainForm.Show;
end;

//�½���Ʒ��Ϣ
procedure TMainForm.actCreateProductExecute(Sender: TObject);
begin
  //sfd
end;

//��Ʒ��Ϣ����
procedure TMainForm.actProductManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmProductManager);
  MainForm.Show;
end;

//�½���ƷĿ¼
procedure TMainForm.actCreateCatalogExecute(Sender: TObject);
begin
  //sdf
end;

//��ƷĿ¼����
procedure TMainForm.actCatalogManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmCatalogManager);
  MainForm.Show;
end;

//�½��ɹ�����
procedure TMainForm.actCreateStockOrderExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmCreateStockOrder);
  MainForm.Show;
end;

//�ɹ���������
procedure TMainForm.actStockOrderManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmStockOrderManager);
  MainForm.Show;
end;

//�쳣�ɹ�����
procedure TMainForm.actExceptStockOrderExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmExceptStockOrder);
  MainForm.Show;
end;

//�ִ���������
procedure TMainForm.actDepotCenterExecute(Sender: TObject);
begin
  currButton.Color := clBtnFace;
  currButton := RzBitBtn2;
  currButton.Color := clSkyBlue;
  CurrencyFrame := ShowFrame(CurrencyFrame,TfrmDepotManagerCenter,pnlMain);
end;

//��Ʒ������
procedure TMainForm.actProductIntoDepotExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmProductIntoDepot);
  MainForm.Show;
end;

//�½���Ʒ��λ
procedure TMainForm.actCreateDepotPositionExecute(Sender: TObject);
begin
 //sdf
end;

//��Ʒ��λ��Ϣ����
procedure TMainForm.actDepotPositionManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmDepotPositionManager);
  MainForm.Show;
end;

//��Ʒ��λ��ϵ����
procedure TMainForm.actProductDepotManagerExecute(Sender: TObject);
begin
  //asdfg
end;

//�ֿ��쳣�ɹ�����
procedure TMainForm.actCreateExceptStockOrderExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmEStockOrder);
  MainForm.Show;
end;

//���Ͷ�����Ϣ����
procedure TMainForm.actOrderDispatchingManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmODpManager);
  MainForm.Show;
end;

//�˻���������
procedure TMainForm.actOrderSendBackManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmOSBackManager);
  MainForm.Show;
end;

//��Ʒ����
procedure TMainForm.actProductCenterExecute(Sender: TObject);
begin
  currButton.Color := clBtnFace;
  currButton := RzBitBtn4;
  currButton.Color := clSkyBlue;
  CurrencyFrame := ShowFrame(CurrencyFrame,TfrmProductCenter,pnlMain);
end;

//�۸�༭
procedure TMainForm.actPriceEditExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmPriceEdit);
  MainForm.Show;
end;

//��Ʒ�༭
procedure TMainForm.actProductEditExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmProductEdit);
  MainForm.Show;
end;

//���ܹ���
procedure TMainForm.actShelfManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmShelfManager);
  MainForm.Show;
end;

//����ͳ��
procedure TMainForm.actSellStatExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmSellStat);
  MainForm.Show;
end;

//�ͻ���������
procedure TMainForm.actMemServiceCenterExecute(Sender: TObject);
begin
  currButton.Color := clBtnFace;
  currButton := RzBitBtn3;
  currButton.Color := clSkyBlue;
  CurrencyFrame := ShowFrame(CurrencyFrame,TfrmMenServiceCenter,pnlMain);
end;

//�½�����
procedure TMainForm.actCreateOrderExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmCreateOrder);
  MainForm.Show;
end;

//��������
procedure TMainForm.actOrderManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmOrderManager);
  MainForm.Show;
end;

//�˻���Ϣ����
procedure TMainForm.actSendBackManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmSendBackManager);
  MainForm.Show;
end;

//���Ͳ�ѯ
procedure TMainForm.actDispatchingQueryExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmDispatchingQuery);
  MainForm.Show;
end;

//��Ա��Ϣ����
procedure TMainForm.actMemberManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmMenManager);
  MainForm.Show;
end;

//������������
procedure TMainForm.actLogisticsCenterExecute(Sender: TObject);
begin
  currButton.Color := clBtnFace;
  currButton := RzBitBtn1;
  currButton.Color := clSkyBlue;
  CurrencyFrame := ShowFrame(CurrencyFrame,TfrmLogisticsCenter,pnlMain);
end;

//�½���ݹ�˾
procedure TMainForm.actCreateExpressExecute(Sender: TObject);
begin
  //sdf
end;

//��ݹ�˾����
procedure TMainForm.actExpressManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmExpressManager);
  MainForm.Show;
end;

//�������Ͳ�ѯ
procedure TMainForm.actOrderDispatchingQueryExecute(Sender: TObject);
begin
 //sdf
end;

//ϵͳ��������
procedure TMainForm.actSysCenterExecute(Sender: TObject);
begin
  currButton.Color := clBtnFace;
  currButton := BtnStockCenter;
  currButton.Color := clSkyBlue;
  CurrencyFrame := ShowFrame(CurrencyFrame,TfrmSysManager,pnlMain);
end;

//��ɫ����
procedure TMainForm.actRoleManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmRoleManager);
  MainForm.Show;
end;

//�û�����
procedure TMainForm.actUserManagerExecute(Sender: TObject);
begin
  MainForm.Hide;
  ShowModalForm(TfrmUserManager);
  MainForm.Show;
end;

//����
procedure TMainForm.N17Click(Sender: TObject);
begin
  ShowModalForm(TAboutBox);
end;

end.