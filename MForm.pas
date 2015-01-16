unit MForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Objects, FMX.Header, FMX.Layouts, IdBaseComponent, IdSASL,
  IdSASLUserPass, IdSASL_CRAMBase, IdSASL_CRAM_MD5, Data.DB, FMX.Effects,
  FireDAC.UI.Intf, FireDAC.FMXUI.Login, FMX.Controls.Presentation, FMX.Edit,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, FMX.Menus, FMX.Platform,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  FireDAC.Comp.Client, FMX.Ani, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FMX.ListView.Types, Data.Bind.DBScope,
  FMX.ListView, FireDAC.Comp.DataSet, LbCipher, LbClass, FireDAC.FMXUI.Wait,
  FMX.Memo, FMX.ListBox, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, System.IOUtils, FMX.ExtCtrls, IdGlobalProtocols;

type
  TmainForm = class(TForm)
    styleAir: TStyleBook;
    headerlayout: TLayout;
    Header1: THeader;
    headerItemsLayout: TLayout;
    Image1: TImage;
    lblHeader: TLabel;
    btnQuitApp: TButton;
    MainTabControl: TTabControl;
    LoginPage: TTabItem;
    HomePage: TTabItem;
    UserPage: TTabItem;
    pnlLogin: TPanel;
    Layout1: TLayout;
    Image2: TImage;
    pnlLoginGlow: TGlowEffect;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    btnLogin: TButton;
    editLoginUsername: TEdit;
    Label2: TLabel;
    editLoginPassword: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnLoginOption: TButton;
    popMenuLogin: TPopupMenu;
    miChangeStyle: TMenuItem;
    miStyleAir: TMenuItem;
    miStyleAmaskrit: TMenuItem;
    miStyleDark: TMenuItem;
    miStyleLight: TMenuItem;
    MenuItem6: TMenuItem;
    styleAmaskrit: TStyleBook;
    styleDark: TStyleBook;
    styleLight: TStyleBook;
    GoodsPage: TTabItem;
    FeedbackPage: TTabItem;
    DictionaryPage: TTabItem;
    calloutConnConfig: TCalloutPanel;
    Label5: TLabel;
    editCNCServer: TEdit;
    editCNCUsername: TEdit;
    editCNCPassword: TEdit;
    editCNCDb: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    BindingsList1: TBindingsList;
    btnConnConfigOK: TButton;
    animCalloutConnConfig: TFloatAnimation;
    MibaoConnection: TFDConnection;
    T_feedbackTable: TFDQuery;
    T_goodsTable: TFDQuery;
    T_image_assetTable: TFDQuery;
    T_image_setTable: TFDQuery;
    T_userTable: TFDQuery;
    T_user_collectTable: TFDQuery;
    Sys_dictTable: TFDQuery;
    KeywordTable: TFDQuery;
    KeywordTableid: TStringField;
    KeywordTableword_key: TStringField;
    KeywordTableword_value: TStringField;
    KeywordTableclick_num: TIntegerField;
    KeywordTableis_disable: TBooleanField;
    Sys_dictTabledict_id: TStringField;
    Sys_dictTabledict_key: TStringField;
    Sys_dictTabledict_value: TStringField;
    Sys_dictTabledict_type: TStringField;
    Sys_dictTabledict_disabled: TBooleanField;
    Sys_dictTablecol_order: TIntegerField;
    T_image_setTableimage_set_id: TStringField;
    T_image_setTableusage: TStringField;
    T_image_setTablecorrespond_good_id: TStringField;
    T_image_setTableimage_count: TLongWordField;
    T_image_setTableimage_set_name: TStringField;
    T_image_assetTableimage_asset_id: TStringField;
    T_image_assetTableimage_set_id: TStringField;
    T_image_assetTableindex: TIntegerField;
    T_image_assetTableimage_height: TLongWordField;
    T_image_assetTableimage_width: TLongWordField;
    T_image_assetTableimage_name: TStringField;
    T_image_assetTableimage_url: TStringField;
    T_user_collectTablecollect_id: TStringField;
    T_user_collectTableuser_id: TStringField;
    T_user_collectTablegood_id: TStringField;
    layout2ndlevelNav: TLayout;
    btnUserPageBack: TButton;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    Label9: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    lblUserName: TLabel;
    lblUserID: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    Image3: TImage;
    btnUserPageEdit: TButton;
    chkUserEnable: TCheckBox;
    chkAdmin: TCheckBox;
    LinkControlToField1: TLinkControlToField;
    GridLayout1: TGridLayout;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    GridLayout2: TGridLayout;
    editUserEmail: TEdit;
    editUserPassword: TEdit;
    editUserRegDate: TEdit;
    editUser3rdParty: TEdit;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDAdhocQuery: TFDQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    btnHometoUser: TButton;
    btnHometoGoods: TButton;
    btnHometoFeedback: TButton;
    btnHometoDict: TButton;
    GlowEffect2: TGlowEffect;
    lblIsAdmin: TLabel;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    UserPageEditGlow: TGlowEffect;
    UserPageButtonEditGlow: TGlowEffect;
    btnReportProblem: TButton;
    pnlSendFeedback: TPanel;
    GlowEffect1: TGlowEffect;
    Label14: TLabel;
    Label15: TLabel;
    comboSendFeedback: TComboBox;
    memoFeedback: TMemo;
    btnSendFeedback: TButton;
    Label16: TLabel;
    T_userTableuser_id: TWideStringField;
    T_userTableuser_name: TWideStringField;
    T_userTablepassword: TWideStringField;
    T_userTableemail: TWideStringField;
    T_userTablereg_date: TDateTimeField;
    T_userTableis_disable: TBooleanField;
    T_userTabledevice_type: TWideStringField;
    T_userTabledevice_token: TWideStringField;
    T_userTablethirdParty_type: TWideStringField;
    T_userTablethirdParty_token: TWideStringField;
    T_userTableCOMMUNICATION_ID: TWideStringField;
    T_userTableuser_permission: TWideStringField;
    Layout6: TLayout;
    Button6: TButton;
    Label17: TLabel;
    Button7: TButton;
    Layout7: TLayout;
    Button8: TButton;
    Label18: TLabel;
    Button9: TButton;
    Layout8: TLayout;
    Button10: TButton;
    Label19: TLabel;
    Button11: TButton;
    MainMenu1: TMainMenu;
    操作: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    btnAbortFeedback: TButton;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    FTPConn: TIdFTP;
    Q_goodsdesigner: TFDQuery;
    Q_goodscolor: TFDQuery;
    Layout9: TLayout;
    Layout10: TLayout;
    btnAddGood: TButton;
    btnRemoveGood: TButton;
    listGoodsPage: TListView;
    pnlGoodsPageFilter: TFramedVertScrollBox;
    expGoodsSort: TExpander;
    Expander2: TExpander;
    expGoodsData: TExpander;
    expGoodsFilter: TExpander;
    T_goodsTablegood_id: TWideStringField;
    T_goodsTablegood_sku: TWideStringField;
    T_goodsTablegood_designer: TWideStringField;
    T_goodsTablegood_name: TWideStringField;
    T_goodsTablenick_name: TWideStringField;
    T_goodsTableoriginal_price: TBCDField;
    T_goodsTablecurrent_price: TBCDField;
    T_goodsTableis_show: TBooleanField;
    T_goodsTableis_street_shooting: TBooleanField;
    T_goodsTablecollect_count: TIntegerField;
    T_goodsTablecolor: TWideStringField;
    T_goodsTablediscount: TFloatField;
    T_goodsTabledetailed: TWideStringField;
    T_goodsTablegood_desc: TWideStringField;
    T_goodsTableproduction: TWideStringField;
    T_goodsTablematerial_quality: TWideStringField;
    T_goodsTablebuy_url: TWideStringField;
    T_goodsTableadd_time: TDateTimeField;
    T_goodsTablelast_update_time: TDateTimeField;
    T_goodsTableimage_street: TWideStringField;
    T_goodsTableimage_thumbnail: TWideStringField;
    T_goodsTableimage_big: TWideStringField;
    T_goodsTableimage_slideshow: TWideStringField;
    T_goodsTableimage_trending: TWideStringField;
    T_goodsTableimage_highlight: TWideStringField;
    BindSourceDB2: TBindSourceDB;
    lnkGoodsPageListCategory: TLinkListControlToField;
    Layout5: TLayout;
    expUserPageFilter: TExpander;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    expUserPageSort: TExpander;
    rbtUserPageSortByName: TRadioButton;
    rbtUserPageSortByDate: TRadioButton;
    rbtnUserPageOrderAsc: TRadioButton;
    rbtnUserPageOrderDesc: TRadioButton;
    FramedVertScrollBox1: TFramedVertScrollBox;
    Layout11: TLayout;
    imgGoodThumbnail: TImage;
    chkGoodOnline: TCheckBox;
    lblGoodsDesigner: TLabel;
    lblGoodsName: TLabel;
    lblGoodsID: TLabel;
    btnGoodsPageEdit: TButton;
    GoodsPageEditBtnGlow: TGlowEffect;
    Layout13: TLayout;
    btnGoodsPageChangeName: TButton;
    GoodsPageEditNameBtnGlow: TGlowEffect;
    LinkControlToField9: TLinkControlToField;
    Q_goodsdesignerdesigner: TWideStringField;
    Q_goodsdesignercount: TLargeintField;
    Q_goodscolorcolor: TWideStringField;
    Q_goodscolorcount: TLargeintField;
    rbtnGoodsPageSortByDesigner: TRadioButton;
    rbtnGoodsPageSortByPrice: TRadioButton;
    rbtnGoodsPageSortByColor: TRadioButton;
    rbtnGoodsPageSortByAddDate: TRadioButton;
    Layout14: TLayout;
    editGoodsOrigPrice: TEdit;
    editGoodsCurPrice: TEdit;
    editGoodsDiscount: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    rbtnGoodsPageSortAsc: TRadioButton;
    rbtnGoodsPageSortDesc: TRadioButton;
    Layout12: TLayout;
    GridLayout3: TGridLayout;
    Z: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    GridLayout4: TGridLayout;
    editGoodsSKU: TEdit;
    editGoodsLink: TEdit;
    editGoodsColor: TEdit;
    editGoodsMaterial: TEdit;
    editGoosAddDate: TEdit;
    Layout15: TLayout;
    Label20: TLabel;
    memoGoodsDescription: TMemo;
    listGoodsDesigner: TComboBox;
    listGoodsColor: TComboBox;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    Label30: TLabel;
    Label31: TLabel;
    lblGoodsColorCount: TLabel;
    lblGoodsDesignerCount: TLabel;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    chkGoodsPageFilterShownGoods: TCheckBox;
    chkGoodsPageShowDiscount: TCheckBox;
    lblGoodLikeNumber: TLabel;
    Image4: TImage;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    rbtnGoodsPageSortByCollectCount: TRadioButton;
    LinkControlToField10: TLinkControlToField;
    chkGoodsPageFilterDesigner: TCheckBox;
    chkGoodsPageFilterColor: TCheckBox;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    LinkPropertyToFieldText9: TLinkPropertyToField;
    GoodsPageEditGlow: TGlowEffect;
    UserPageEditBtnGlow: TGlowEffect;
    GoodsPagePriceEditGlow: TGlowEffect;
    pnlAddGoods: TPanel;
    GlowEffect3: TGlowEffect;
    Layout16: TLayout;
    imgAddGoodsHeader: TImage;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    effAddGoodStep1a: TGlowEffect;
    effAddGoodStep2a: TGlowEffect;
    effAddGoodStep3a: TGlowEffect;
    effAddGoodStep1b: TGlowEffect;
    effAddGoodStep2b: TGlowEffect;
    effAddGoodStep3b: TGlowEffect;
    pnlAddGoodsTabs: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    editAddGoodSetDesigner: TEdit;
    editAddGoodSetName: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    editAddGoodSetOrigPrice: TEdit;
    editAddGoodSetCurPrice: TEdit;
    editAddGoodSetDiscount: TEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    editAddGoodSetSku: TEdit;
    Label38: TLabel;
    editAddGoodSetColor: TEdit;
    Label39: TLabel;
    editAddGoodSetMaterial: TEdit;
    Label40: TLabel;
    editAddGoodSetLink: TEdit;
    Label41: TLabel;
    chkAddGoodSetOnline: TSwitch;
    Label42: TLabel;
    lblAddGoodDispID: TLabel;
    lblAddGoodDispAddDate: TLabel;
    Label45: TLabel;
    memoAddGoodSetDesc: TMemo;
    btnAddGoodPage1to2: TButton;
    btnAddGoodAbort: TButton;
    btnAddGoodPage2to1: TButton;
    btnAddGoodPage2to3: TButton;
    lblAddGoodDispGoodDesigner: TLabel;
    lblAddGoodDispGoodName: TLabel;
    pnlAddGoodAddImage: THorzScrollBox;
    dropAddGoodImage: TDropTarget;
    Label46: TLabel;
    Button16: TButton;
    lblAddGoodImageCount: TLabel;
    Label47: TLabel;
    LinkControlToPropertyText: TLinkControlToProperty;
    LinkControlToPropertyText2: TLinkControlToProperty;
    btnAddGoodFinish: TButton;
    Label43: TLabel;
    lblAddGoodsDispUploading: TLabel;
    lblAddGoodsDispAdding: TLabel;
    animAddGoodUploading: TFloatAnimation;
    animAddGoodSQLProcessing: TFloatAnimation;
    lblAddGoodsDispFinished: TLabel;
    animAddGoodsFinished: TFloatAnimation;
    openDialogPicture: TOpenDialog;
    Layout17: TLayout;
    Layout18: TLayout;
    Button1: TButton;
    Button5: TButton;
    listFeedbackPageSelect: TListView;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    T_feedbackTableid: TWideStringField;
    T_feedbackTablecontent: TWideStringField;
    T_feedbackTableclient_version: TWideStringField;
    T_feedbackTableapp_version: TWideStringField;
    T_feedbackTablefeedback_time: TDateTimeField;
    T_feedbackTableresolved: TShortintField;
    T_feedbackTablereply: TWideStringField;
    T_feedbackTablefeedback_user: TWideStringField;
    FramedVertScrollBox2: TFramedVertScrollBox;
    Expander1: TExpander;
    rbtnFeedbackSortByTime: TRadioButton;
    rbtnFeedbackSortByUser: TRadioButton;
    rbtnFeedbackSortByVersion: TRadioButton;
    rbtnFeedbackSortAcc: TRadioButton;
    rbtnFeedbackSortDesc: TRadioButton;
    Expander3: TExpander;
    Expander5: TExpander;
    chkFeedbackFilterBackend: TCheckBox;
    chkFeedbackFilterAdmin: TCheckBox;
    chkFeedbackFilterUnresolved: TCheckBox;
    Layout19: TLayout;
    Layout20: TLayout;
    memoFeedbackContent: TMemo;
    Layout21: TLayout;
    Label44: TLabel;
    editFeedbackClientVersion: TEdit;
    editFeedbackAppVersion: TEdit;
    Label48: TLabel;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField15: TLinkControlToField;
    LinkControlToField16: TLinkControlToField;
    Layout22: TLayout;
    chkFeedbackResolved: TSwitch;
    Label49: TLabel;
    Label50: TLabel;
    Layout23: TLayout;
    btnFeedbackReplySave: TButton;
    memoFeedbackReply: TMemo;
    LinkControlToField17: TLinkControlToField;
    Layout24: TLayout;
    Layout25: TLayout;
    lblFeedbackDate: TLabel;
    lblFeedbackID: TLabel;
    Image5: TImage;
    lblFeedbackUser: TLabel;
    LinkControlToField18: TLinkControlToField;
    LinkPropertyToFieldText15: TLinkPropertyToField;
    LinkPropertyToFieldText16: TLinkPropertyToField;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField19: TLinkControlToField;
    LinkControlToField20: TLinkControlToField;
    LinkControlToPropertyParamsDatabase: TLinkControlToProperty;
    LinkControlToPropertyParamsUserName: TLinkControlToProperty;
    LinkControlToPropertyParamsPassword: TLinkControlToProperty;
    pnlGoodChangeName: TPanel;
    btnChangeNameOK: TButton;
    btnChangeNameCancel: TButton;
    Label51: TLabel;
    Label52: TLabel;
    editChangeNameNewDesigner: TEdit;
    editChangeNameNewName: TEdit;
    lblChangeNameGoodID: TLabel;
    LinkPropertyToFieldText10: TLinkPropertyToField;
    GlowEffect4: TGlowEffect;
    LibMD5: TLbMD5;
    procedure miStyleAirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miStyleAmaskritClick(Sender: TObject);
    procedure miStyleDarkClick(Sender: TObject);
    procedure miStyleLightClick(Sender: TObject);
    procedure btnLoginOptionClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure animCalloutConnConfigFinish(Sender: TObject);
    procedure btnConnConfigOKClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure editLoginPasswordKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnHometoUserClick(Sender: TObject);
    procedure btnHometoGoodsClick(Sender: TObject);
    procedure btnHometoFeedbackClick(Sender: TObject);
    procedure btnHometoDictClick(Sender: TObject);
    procedure btnUserPageBackClick(Sender: TObject);
    procedure ListView1Change(Sender: TObject);
    procedure chkUserEnableChange(Sender: TObject);
    procedure chkAdminChange(Sender: TObject);
    procedure chkUserEnableClick(Sender: TObject);
    procedure chkAdminClick(Sender: TObject);
    procedure btnUserPageEditClick(Sender: TObject);
    procedure expUserPageSortCheckChange(Sender: TObject);
    procedure rbtUserPageSortByNameChange(Sender: TObject);
    procedure rbtUserPageSortByDateChange(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure rbtnUserPageOrderAscChange(Sender: TObject);
    procedure rbtnUserPageOrderDescChange(Sender: TObject);
    procedure btnSendFeedbackClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MenuItem8Click(Sender: TObject);
    procedure btnReportProblemClick(Sender: TObject);
    procedure btnAbortFeedbackClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure listGoodsPageItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure GoodsPageSQLRefresh(Sender: TObject);
    procedure chkGoodOnlineChange(Sender: TObject);
    procedure chkGoodOnlineClick(Sender: TObject);
    procedure btnGoodsPageEditClick(Sender: TObject);
    procedure editGoodsDiscountKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editGoodsOrigPriceKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editGoodsCurPriceKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure animAddGoodsFinishedFinish(Sender: TObject);
    procedure btnAddGoodPage2to1Click(Sender: TObject);
    procedure btnAddGoodPage2to3Click(Sender: TObject);
    procedure btnAddGoodPage1to2Click(Sender: TObject);
    procedure btnAddGoodAbortClick(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure btnAddGoodClick(Sender: TObject);
    procedure editAddGoodSetDesignerKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure dropAddGoodImageDropped(Sender: TObject; const Data: TDragObject;
      const Point: TPointF);
    procedure dropAddGoodImageDragOver(Sender: TObject; const Data: TDragObject;
      const Point: TPointF; var Operation: TDragOperation);
    procedure animAddGoodUploadingFinish(Sender: TObject);
    procedure animAddGoodSQLProcessingFinish(Sender: TObject);
    procedure btnAddGoodFinishClick(Sender: TObject);
    procedure btnRemoveGoodClick(Sender: TObject);
    procedure editAddGoodSetCurPriceKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editAddGoodSetDiscountKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure editAddGoodSetOrigPriceKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnFeedbackReplySaveClick(Sender: TObject);
    procedure chkFeedbackResolvedClick(Sender: TObject);
    procedure btnChangeNameCancelClick(Sender: TObject);
    procedure btnChangeNameOKClick(Sender: TObject);
    procedure btnGoodsPageChangeNameClick(Sender: TObject);
  private
    { Private declarations }
    procedure genUserPageSQL;
    procedure genGoodsPageSQL;
  public
    { Public declarations } 
    addGoodImageSet:record
      goodID:string;
      setID:string;
      imageCount:integer;
      images:array of TFileName;
      imageID:array of string;
      imageAID:array of string;
      imageBoxes:array of TImage;
    end;
    procedure initUserPage;
    function findMD5Str(inp:string):string;
    function concatMD5(md5src:TMD5Digest):string;
    function randMD5Str:string;
    function getImageAssetName(id:string):string;
    procedure retrieveimage(name:string; image:TBitmap);
    procedure AddGoodAddImage(name:TFileName);
    procedure AddGoodSQLCollate(aSQL:TStrings);
  end;

const
  VERSION_NUM = '1.0.0';

var
  mainForm: TmainForm;
  mainState: record
    login: boolean;
    loginusername:string;
    loginuserid:string;
    cache_dir:string;
  end;
  UserPageQueryState: record
    permitUEnChange:boolean;
    permitAdminChange:boolean;
    filter: record
      admin: boolean;
      disabled: boolean;
    end;
    sort: record
      enabled:boolean;
      byName:boolean;
      byDate:boolean;
      asc:boolean;
    end;
  end;
  GoodsPageQueryState:record
    permitGoodsOnline:boolean;
    editing:boolean;
    curpricelock:boolean;
    discountlock:boolean;
    filter:record
      enabled:boolean;
      byColor,byDesigner:boolean;
      online,discount:boolean;
    end;
    sort:record
      asc:boolean;
      byDesigner, byPrice, byColor, byDate, byLike:boolean;
    end;
  end;
  
implementation

{$R *.fmx}

procedure TmainForm.AddGoodSQLCollate(aSQL: TStrings);
var
  i:integer;
  firstpicID:string;
begin
  aSQL.Clear;
  //collate goods details
  firstpicID := addGoodImageSet.imageAID[0];
  aSQL.Add('insert into t_goods set');
  aSQL.Add('good_id="'+addGoodImageSet.goodID+'",');
  aSQL.Add('good_sku="'+editAddGoodSetSku.Text+'",');
  aSQL.Add('good_designer="'+editAddGoodSetDesigner.Text+'",');
  aSQL.Add('good_name="'+editAddGoodSetDesigner.Text+'",');
  aSQL.Add('nick_name="'+editAddGoodSetName.Text+'",');
  aSQL.Add('original_price='+editAddGoodSetOrigPrice.Text+',');
  aSQL.Add('current_price='+editAddGoodSetCurPrice.Text+',');
  aSQL.Add('is_show='+inttostr(Integer(chkAddGoodSetOnline.IsChecked))+',');
  aSQL.Add('discount='+editAddGoodSetDiscount.Text+',');
  aSQL.Add('is_street_shooting=1,collect_count=0,');
  aSQL.Add('good_desc="'+memoAddGoodSetDesc.Text+'",');
  aSQL.Add('detailed="'+memoAddGoodSetDesc.Text+'",');
  aSQL.Add('color="'+editAddGoodSetColor.Text+'",');
  aSQL.Add('material_quality="'+editAddGoodSetMaterial.Text+'",');
  aSQL.Add('buy_url="'+editAddGoodSetLink.Text+'",');
  aSQL.Add('add_time=now(),last_update_time=now(),');
  //add pictures
  aSQL.Add('image_big="'+addGoodImageSet.setID+'",');
  aSQL.Add('image_thumbnail="'+addGoodImageSet.setID+'",');
  aSQL.Add('image_street="'+addGoodImageSet.setID+'",');
  aSQL.Add('image_slideshow="'+addGoodImageSet.setID+'",');
  aSQL.Add('image_highlight="'+addGoodImageSet.setID+'";');
  //Create a set within the database
  with addGoodImageSet do
  begin
    aSQL.Add('insert into t_image_set values');
    aSQL.Add('("'+setID+'","image_big","'+goodID+'",'+IntToStr(imageCount)+',"'+editAddGoodSetName.Text+'");');
  end;
  //Insert images into the set
  with addGoodImageSet do
  begin
    aSQL.Add('insert into t_image_asset values');
    aSQL.Add('("'+imageAID[0]+'","'+setID+'",1,null,null,null,"'+imageID[0]+'")');
    for i := 1 to imageCount-1 do
    begin
      aSQL.Add(',("'+imageAID[i]+'","'+setID+'",'+IntToStr(i+1)+',null,null,null,"'+imageID[i]+'")');
    end;
    aSQL.Add(';');
  end;
  //Done!
  //ShowMessage(aSQL.Text);
  aSQL.SaveToFile(mainState.cache_dir+PathDelim+'myblaire_sql.log');
end;

procedure TmainForm.AddGoodAddImage(name:TFileName);
begin
  //ShowMessage(name);
  with addGoodImageSet do
  begin
    imageCount := imageCount + 1;
    SetLength(imageID,imageCount);
    SetLength(images, imageCount);
    SetLength(imageBoxes, imageCount);
    SetLength(imageAID, imageCount);
    images[imageCount-1] := name;
    imageAID[imageCount-1] := findMD5Str(randMD5Str+name+editAddGoodSetName.Text+goodID); 
    imageID[imageCount-1] := imageAID[imageCount-1]+ExtractFileExt(name);
    //ShowMessage('Name of Image ID will be '+imageID[imagecount-1]);
    CopyFileTo(name, mainState.cache_dir+PathDelim+imageID[imageCount-1]);
    //ShowMessage('File Copied to '+imageID[imageCount-1]);
    imageBoxes[imageCount-1] := TImage.Create(pnlAddGoodAddImage);
    imageBoxes[imageCount-1].Parent := pnlAddGoodAddImage;
    imageBoxes[imageCount-1].Visible := true;
    with imageBoxes[imageCount-1].Size do
    begin
      Width := 170;
      Height := 130;
    end;
    with imageBoxes[imageCount-1].Position do
    begin
      X := 100000;
      Y := 10;
    end;
    imageBoxes[imageCount-1].Align := TAlignLayout.Left;
    imageBoxes[imageCount-1].WrapMode := TImageWrapMode.Fit;
    imageBoxes[imageCount-1].Bitmap.LoadFromFile(mainState.cache_dir+PathDelim+imageID[imageCount-1]);
    lblAddGoodImageCount.Text := '当前 '+IntToStr(imageCount)+' 张图片';
    if imageCount>0 then
      btnAddGoodPage2to3.Enabled := true;
  end;
end;

procedure TmainForm.genGoodsPageSQL;
var
  tmpsql:TStrings;
begin
  //Retrieve query state from various controls
  with GoodsPageQueryState do
  begin
    filter.byColor := chkGoodsPageFilterColor.IsChecked;
    filter.byDesigner := chkGoodsPageFilterDesigner.IsChecked;
    filter.online := chkGoodsPageFilterShownGoods.IsChecked;
    filter.discount := chkGoodsPageShowDiscount.IsChecked;
    with filter do
      enabled := byColor or byDesigner or online or discount;
    sort.asc := rbtnGoodsPageSortAsc.IsChecked;
    sort.byDesigner := rbtnGoodsPageSortByDesigner.IsChecked;
    sort.byPrice := rbtnGoodsPageSortByPrice.IsChecked;
    sort.byColor := rbtnGoodsPageSortByPrice.IsChecked;
    sort.byColor := rbtnGoodsPageSortByColor.IsChecked;
    sort.byDate := rbtnGoodsPageSortByAddDate.IsChecked;
    sort.byLike := rbtnGoodsPageSortByCollectCount.IsChecked;
  end;
  //From query state generate a temporary query
  tmpsql := TStringList.Create;
  tmpsql.Add('select * from t_goods');
  with GoodsPageQueryState do
  begin
    if filter.enabled then
      tmpsql.Add('where true ');
    if filter.byColor then
      tmpsql.Add('and color="'+listGoodsColor.Selected.Text+'" ');
    if filter.byDesigner then
      tmpsql.Add('and good_designer="'+listGoodsDesigner.Selected.Text+'" ');
    if filter.online then
      tmpsql.Add('and is_show=1 ');
    if filter.discount then
      tmpsql.Add('and discount < 1 ');
    if sort.byDesigner then
    begin
      tmpsql.Add('order by good_designer ');
      lnkGoodsPageListCategory.FillHeaderFieldName := 'good_designer';
    end;
    if sort.byPrice then
    begin
      tmpsql.Add('order by current_price ');
      lnkGoodsPageListCategory.FillHeaderFieldName := 'current_price';
    end;
    if sort.byColor then
    begin
      tmpsql.Add('order by color ');
      lnkGoodsPageListCategory.FillHeaderFieldName := 'color';
    end;
    if sort.byDate then
    begin
      tmpsql.Add('order by add_time ');
      lnkGoodsPageListCategory.FillHeaderFieldName := 'add_time';
    end;
    if sort.byLike then
    begin
      tmpsql.Add('order by collect_count ');
      lnkGoodsPageListCategory.FillHeaderFieldName := 'collect_count';
    end;
    if sort.asc then
      tmpsql.Add(' ASC') else tmpsql.Add('DESC');
  end;
  T_goodsTable.Active := false;
  T_goodsTable.SQL.Clear;
  T_goodsTable.SQL.AddStrings(tmpsql);
  T_goodsTable.Active := true;
  
end;

procedure TmainForm.retrieveimage(name: string; image: TBitmap);
var
  path:string;
begin
  if name<>'' then begin
    path := mainState.cache_dir+PathDelim+name;
    if not FileExists(path) then
      if FTPConn.Connected then
        FTPConn.Get(name,path,true);
    image.LoadFromFile(path);
  end;
end;

function TMainForm.getImageAssetName(id: string):string;
begin
  if id='' then result:='' else begin
  FDAdhocQuery.SQL.Clear;
  FDAdhocQuery.SQL.Add('select image_url from t_image_asset where image_set_id="'+id+'" order by "index" asc limit 0,1');
  FDAdhocQuery.Active := true;
  result := (FDAdhocQuery.FieldByName('image_url') as TWideStringField).Value;
  FDAdhocQuery.Active := false;
  end;
end;

procedure TmainForm.GoodsPageSQLRefresh(Sender: TObject);
begin
  genGoodsPageSQL;
end;

function TmainForm.randMD5Str:string;
begin
  Result := findMD5Str(DateTimeToStr(Now)+IntToStr(random(65536)));
end;

function TmainForm.findMD5Str(inp: string):string;
var
  tmpdigest:TMD5Digest;
begin
  libMD5.HashString(inp);
  libMD5.GetDigest(tmpdigest);
  result := concatMD5(tmpdigest);
end;

procedure TmainForm.initUserPage;
begin
  with UserPageQueryState do
  begin
    sort.byName := true;
    sort.asc := true;
  end;
end;

procedure TmainForm.listGoodsPageItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  retrieveimage(getImageAssetName((T_goodsTable.FieldByName('image_thumbnail') as TWideStringField).Value),imgGoodThumbnail.Bitmap);

end;

procedure TmainForm.genUserPageSQL;
var
  tempsql:TStrings;
begin
  T_usertable.Active := false;
  tempsql := TStringList.Create;
  tempsql.Add('Select * from t_user');
  if (UserPageQueryState.filter.admin or UserPageQueryState.filter.disabled) then
    tempsql.Add('where true ');
  with UserPageQueryState do
  begin
    if filter.admin then tempsql.Add('and user_permission="ADMIN" ');
    if filter.disabled then tempsql.add('and is_disable=1 ');
    if (sort.enabled and sort.byName) then tempsql.Add('order by user_name');
    if (sort.enabled and sort.byDate) then tempsql.Add('order by reg_date');
    if (sort.enabled and sort.asc) then tempsql.Add('asc');
    if (sort.enabled and (not sort.asc)) then tempsql.Add('desc');
  end;
  T_userTable.SQL.Clear;
  T_userTable.SQL.AddStrings(tempsql);
  //ShowMessage(tempsql.Text);
  T_userTable.Active := true;
end;

procedure TmainForm.ListView1Change(Sender: TObject);
begin
  if lblIsAdmin.Text='ADMIN' then
    chkAdmin.IsChecked := true
    else chkAdmin.IsChecked := false;
end;

procedure TmainForm.animAddGoodsFinishedFinish(Sender: TObject);
begin
  btnAddGoodFinish.Enabled := true;
  effAddGoodStep3b.Enabled := true;
  effAddGoodStep3a.Enabled := false;
end;

procedure TmainForm.animAddGoodSQLProcessingFinish(Sender: TObject);
begin
  AddGoodSQLCollate(FDAdhocQuery.SQL);
  FDAdhocQuery.ExecSQL;
  T_goodsTable.Refresh;
  animAddGoodsFinished.start;
end;

procedure TmainForm.animAddGoodUploadingFinish(Sender: TObject);  
var
  i:integer;
begin
  with addGoodImageSet do
    for i := 0 to imageCount-1 do
    try
      if FTPConn.Size(imageid[i])<=0 then
        FTPConn.Put(mainState.cache_dir+PathDelim+imageid[i],imageid[i]);
    finally
    end;
  animAddGoodSQLProcessing.Start;
end;

procedure TmainForm.animCalloutConnConfigFinish(Sender: TObject);
begin
  if calloutConnConfig.Opacity = 0 then
    calloutConnConfig.Visible := false;
end;

procedure TmainForm.btnAbortFeedbackClick(Sender: TObject);
begin
  memoFeedback.Lines.Clear;
  pnlSendFeedback.Visible := false;
end;

procedure TmainForm.btnAddGoodAbortClick(Sender: TObject);
begin
  pnlAddGoods.Visible := false;
  editAddGoodSetDesigner.Text := '';
  editAddGoodSetName.Text := '';
  editAddGoodSetOrigPrice.Text := '';
  editAddGoodSetCurPrice.Text := '';
  editAddGoodSetDiscount.Text := '';
  editAddGoodSetSku.Text := '';
  editAddGoodSetColor.Text := '';
  editAddGoodSetMaterial.Text := '';
  editAddGoodSetLink.Text := '';
  lblAddGoodImageCount.Text := '';
  memoAddGoodSetDesc.Text := '';
end;

procedure TmainForm.btnAddGoodClick(Sender: TObject);
begin
  effAddGoodStep1a.Enabled := true;
  pnlAddGoodsTabs.TabIndex := 0;
  pnlAddGoods.Visible := true;
  addGoodImageSet.imageCount := 0;
end;

procedure TmainForm.btnAddGoodFinishClick(Sender: TObject);
var
  aImage:TImage;
begin
  pnlAddGoods.Visible := false;
  editAddGoodSetDesigner.Text := '';
  editAddGoodSetName.Text := '';
  editAddGoodSetOrigPrice.Text := '';
  editAddGoodSetCurPrice.Text := '';
  editAddGoodSetDiscount.Text := '';
  editAddGoodSetSku.Text := '';
  editAddGoodSetColor.Text := '';
  editAddGoodSetMaterial.Text := '';
  editAddGoodSetLink.Text := '';
  lblAddGoodImageCount.Text := '';
  memoAddGoodSetDesc.Text := '';
  effAddGoodStep1a.Enabled := false;
  effAddGoodStep1b.Enabled := false;
  effAddGoodStep2a.Enabled := false;
  effAddGoodStep2b.Enabled := false;
  effAddGoodStep3a.Enabled := false;
  effAddGoodStep3b.Enabled := false;
  btnAddGoodFinish.Enabled := false;
  with addGoodImageSet do
  begin
    for aImage in imageBoxes do
    begin
      aImage.Free;
    end;
    SetLength(imageBoxes,0);
    SetLength(images,0);
    SetLength(imageID,0);
    SetLength(imageAID,0);
    imageCount := 0;
  end;
end;

procedure TmainForm.btnAddGoodPage1to2Click(Sender: TObject);
begin
  effAddGoodStep2a.Enabled := true;
  effAddGoodStep1a.Enabled := false;
  effAddGoodStep1b.Enabled := true;
  pnlAddGoodsTabs.Next;
  addGoodImageSet.setID := findMD5Str(randMD5Str+addGoodImageSet.goodID+editAddGoodSetDesigner.Text+editAddGoodSetName.Text+randMD5Str);
end;

procedure TmainForm.btnAddGoodPage2to1Click(Sender: TObject);
begin
  pnlAddGoodsTabs.Previous;
  effAddGoodStep2a.Enabled := false;
  effAddGoodStep1a.Enabled := true;
  effAddGoodStep1b.Enabled := false;
end;

procedure TmainForm.btnAddGoodPage2to3Click(Sender: TObject);
begin
  effAddGoodStep2a.Enabled := false;
  effAddGoodStep3a.Enabled := true;
  effAddGoodStep2b.Enabled := true;
  lblAddGoodsDispAdding.Opacity := 0;
  lblAddGoodsDispUploading.Opacity := 0;
  lblAddGoodsDispFinished.Opacity := 0;
  lblAddGoodsDispUploading.Text := '正在上传'+IntToStr(addGoodImageSet.imageCount)+'张图片文件';
  lblAddGoodsDispFinished.Text := '成功添加条目'+addGoodImageSet.goodID;
  pnlAddGoodsTabs.Next;
  animAddGoodUploading.Start;
end;

procedure TmainForm.btnChangeNameCancelClick(Sender: TObject);
begin
  editChangeNameNewName.text := '';
  editChangeNameNewDesigner.text := '';
  pnlgoodchangename.visible := false;
end;

procedure TmainForm.btnChangeNameOKClick(Sender: TObject);
begin
  FDAdhocQuery.SQL.Clear;
  FDAdhocQuery.SQL.Add('update t_goods set name="'+editChangeNameNewName.Text+'",');
  FDAdhocQuery.SQL.Add('good_designer="'+editChangeNameNewDesigner.Text+'" where good_id='+lblChangeNameGoodID.Text);
  FDAdhocQuery.ExecSQL;
  FDAdhocQuery.SQL.Clear;
  editChangeNameNewName.text := '';
  editChangeNameNewDesigner.text := '';
  pnlgoodchangename.visible := false;
end;

procedure TmainForm.btnConnConfigOKClick(Sender: TObject);
begin
  animCalloutConnConfig.Inverse := true;
  animCalloutConnConfig.start;
end;

procedure TmainForm.btnFeedbackReplySaveClick(Sender: TObject);
begin
  try
   FDAdhocQuery.SQL.Clear;
   FDAdhocQuery.SQL.Add('update t_feedback set reply="'+memoFeedbackReply.Text+'"');
   FDAdhocQuery.SQL.Add('where id="'+lblFeedbackID.Text+'"');
    FDAdhocQuery.ExecSQL;
    T_feedbackTable.Refresh;
  finally
    ShowMessage('您的回复已保存。');
  end;

end;

procedure TmainForm.btnGoodsPageChangeNameClick(Sender: TObject);
begin
  pnlGoodChangeName.Visible := true;
end;

procedure TmainForm.btnGoodsPageEditClick(Sender: TObject);
begin
  if not GoodsPageQueryState.editing then
  begin
    //Start editing sequence
    GoodsPageQueryState.editing := true;
    listGoodsPage.Enabled := false;
    GoodsPageEditGlow.Enabled := true;
    GoodsPageEditBtnGlow.Enabled := true;
    GoodsPagePriceEditGlow.Enabled := true;
    editGoodsOrigPrice.ReadOnly := false;
    editGoodsCurPrice.ReadOnly := false;
    editGoodsDiscount.ReadOnly := false;
    editGoodsSKU.ReadOnly := false;
    editGoodsLink.ReadOnly := false;
    editGoodsColor.ReadOnly := false;
    editGoodsMaterial.ReadOnly := false;
    memoGoodsDescription.ReadOnly := false;
    btnGoodsPageEdit.Text := '编辑中';
  end else
      begin
        GoodsPageQueryState.editing := false;
        listGoodsPage.Enabled := true;
        GoodsPageEditGlow.enabled := false;
        GoodsPageEditBtnGlow.enabled := false;
        GoodsPagePriceEditGlow.enabled := false;
        editGoodsOrigPrice.ReadOnly := true;
        editGoodsCurPrice.ReadOnly := true;
        editGoodsDiscount.ReadOnly := true;
        editGoodsSKU.ReadOnly := true;
        editGoodsLink.ReadOnly := true;
        editGoodsColor.ReadOnly := true;
        editGoodsMaterial.ReadOnly := true;
        memoGoodsDescription.ReadOnly := true;
        btnGoodsPageEdit.Text := '编 辑';
        FDAdhocQuery.SQL.Clear;
        FDAdhocQuery.sql.Add('update t_goods set ');
        FDAdhocQuery.SQL.Add('original_price='+editGoodsOrigPrice.Text+',');
        FDAdhocQuery.SQL.Add('current_price='+editGoodsCurPrice.Text+',');
        FDAdhocQuery.SQL.Add('discount='+editGoodsDiscount.Text+',');
        FDAdhocQuery.SQL.Add('good_sku="'+editGoodsSKU.Text+'",');
        FDAdhocQuery.SQL.Add('buy_url="'+editGoodsLink.Text+'",');
        FDAdhocQuery.SQL.Add('color="'+editGoodsColor.Text+'",');
        FDAdhocQuery.SQL.Add('material_quality="'+editGoodsMaterial.Text+'",');
        FDAdhocQuery.SQL.Add('good_desc="'+memoGoodsDescription.Text+'"');
        FDAdhocQuery.SQL.Add('where good_id="'+lblGoodsID.Text+'"');
        //ShowMessage(FDAdhocQuery.SQL.Text);
        FDAdhocQuery.ExecSQL;
        T_goodsTable.Refresh;
      end;

end;

procedure TmainForm.btnHometoDictClick(Sender: TObject);
begin
  MainTabControl.GotoVisibleTab(5);
end;

procedure TmainForm.btnHometoFeedbackClick(Sender: TObject);
begin
  MainTabControl.GotoVisibleTab(4);
end;

procedure TmainForm.btnHometoGoodsClick(Sender: TObject);
begin
  genGoodsPageSQL;
  MainTabControl.GotoVisibleTab(3);
end;

procedure TmainForm.btnHometoUserClick(Sender: TObject);
begin
  MainTabControl.GotoVisibleTab(2);
end;

function TmainForm.concatMD5(md5src:TMD5Digest):string;
var
  i:integer;
  p,q:string;
const
  hextable:string = '0123456789abcdef';
begin
   p := EmptyStr;
   q := EmptyStr;
  for i := 0 to 15 do
  begin
    p:= p+hextable[md5src[i] div 16+1]+hextable[md5src[i] mod 16+1];
   // q:= q + ' ' + inttostr(md5src[i] div 16) + ' '+ inttostr(md5src[i] mod 16);
  end;
  //  showmessage(q);
  //  ShowMessage(p);
  result:=p;
end;

procedure TmainForm.dropAddGoodImageDragOver(Sender: TObject;
  const Data: TDragObject; const Point: TPointF; var Operation: TDragOperation);
begin
  if length(data.Files)>0 then
    Operation := TDragOperation.Copy;
end;

procedure TmainForm.dropAddGoodImageDropped(Sender: TObject;
  const Data: TDragObject; const Point: TPointF);
var
  astr,bstr:TFileName;
begin
  for astr in data.Files do
  begin
    //ShowMessage(astr);
    bstr := LowerCase(astr);
    if (ExtractFileExt(bstr)='.png') or (ExtractFileExt(bstr)='.jpg') then
      AddGoodAddImage(bstr);
  end;
end;

procedure TmainForm.btnLoginClick(Sender: TObject);
var
  pwMD5:string;
  pwmd5d:TMD5Digest;
  correctpass:string;
  uname:string;
begin
  pnlLoginGlow.GlowColor := TAlphaColorRec.Yellow;
  pnlLogin.Repaint;
  MibaoConnection.Connected := true;
  T_userTable.Active := false;
  T_userTable.SQL.Clear;
  T_userTable.SQL.Add('select * from t_user where user_name = "'+editLoginUsername.Text+'" or email="'+editLoginUsername.Text+'"');
  T_userTable.Active := true;
  libMD5.HashString(editLoginPassword.Text);
  libMD5.GetDigest(pwmd5d);
  pwMD5 := concatMD5(pwmd5d);
  T_userTable.Active := true;
  if T_userTable.RecordCount=0 then
  begin
    ShowMessage('用户不存在！');
    MibaoConnection.Connected := false;
  end else
      begin
        correctpass := (T_userTable.FieldByName('password')as TWideStringField).Value;
        //ShowMessage(correctpass+PathDelim+pwMD5);
        if pwMD5 <> correctpass then
        begin
          ShowMessage('对不起，密码错误，请再次尝试。');
          MibaoConnection.Connected := false;
          pnlLoginGlow.GlowColor := TAlphaColorRec.Red;
        end else
            begin
              if (T_userTable.FieldByName('user_permission')as TStringField).Value<>'ADMIN' then
              begin
                ShowMessage('对不起，您没有权限访问本系统。');
                MibaoConnection.Connected := false; pnlLoginGlow.GlowColor := TAlphaColorRec.Red;
              end else
                  begin
                    pnlLoginGlow.GlowColor := TAlphaColorRec.Lime;
                    uname := (T_userTable.FieldByName('user_name') as TWideStringField).Value;
                    mainform.Caption := uname + ' - 蜜包管理系统';
                    lblHeader.Text := '已登录：'+uname;
                    mainState.loginuserid:=(T_userTable.FieldByName('user_id') as TWideStringField).Value;
                    mainstate.login := true;
                    mainState.loginusername := uname;
                    FTPConn.Connect;
                    FTPConn.ChangeDir('/upload/');
                    genUserPageSQL;
                    MainTabControl.Next(TTabTransition.Slide);
                  end;
            end;
      end;

end;

procedure TmainForm.btnLoginOptionClick(Sender: TObject);
var
  a:TPointF;
begin
  a := Screen.MousePos;
  popMenuLogin.Popup(a.X, a.Y);
end;

procedure TmainForm.btnRemoveGoodClick(Sender: TObject);
begin
  if MessageDlg('确实要删除吗？',TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo],0)=mrYes then
  begin
    FDAdhocQuery.SQL.Clear;
    FDAdhocQuery.SQL.Add('delete from t_goods where good_id="'+lblGoodsID.Text+'"');
    FDAdhocQuery.ExecSQL;
    T_goodsTable.Refresh;
  end;
end;

procedure TmainForm.btnReportProblemClick(Sender: TObject);
begin
  pnlSendFeedback.Visible := true;
end;

procedure TmainForm.btnSendFeedbackClick(Sender: TObject);
begin
  FDAdhocQuery.SQL.Clear;
  FDAdhocQuery.SQL.Add('insert into t_feedback set id="'+randMD5Str+'",');
  FDAdhocQuery.SQL.Add('content="'+comboSendFeedback.Items[comboSendFeedback.ItemIndex]);
  FDAdhocQuery.SQL.AddStrings(memoFeedback.Lines);
  FDAdhocQuery.SQL.Add('",client_version="'+VERSION_NUM+'",app_version="BACKEND",');
  FDAdhocQuery.SQL.Add('feedback_user="'+mainState.loginuserid+'",feedback_time=now()');
  //ShowMessage(FDAdhocQuery.sql.Text);
  FDAdhocQuery.ExecSQL;
  pnlSendFeedback.Visible := false;
  memoFeedback.lines.Clear;
end;

procedure TmainForm.btnUserPageBackClick(Sender: TObject);
begin
  MainTabControl.GotoVisibleTab(1,TTabTransition.Slide,TTabTransitionDirection.Normal);
end;

procedure TmainForm.Button16Click(Sender: TObject);
var aFile:TFileName;
begin
  if openDialogPicture.Execute then
    for aFile in openDialogPicture.Files do
      AddGoodAddImage(aFile);
end;

procedure TmainForm.Button1Click(Sender: TObject);
begin
  if MessageDlg('真的要退出系统吗？',TMsgDlgType.mtWarning,[TMsgDlgBtn.mbOK,TMsgDlgBtn.mbCancel],0)=mrOk then
    Application.Terminate;
end;

procedure TmainForm.Button2Click(Sender: TObject);
begin
  calloutConnConfig.Visible := false;
end;

procedure TmainForm.Button5Click(Sender: TObject);
begin
  pnlSendFeedback.Visible := true;
end;

procedure TmainForm.CheckBox1Change(Sender: TObject);
begin
  UserPageQueryState.filter.admin := TCheckBox(Sender).IsChecked;
  genUserPageSQL;
end;

procedure TmainForm.CheckBox2Change(Sender: TObject);
begin
  UserPageQueryState.filter.disabled := TCheckBox(Sender).IsChecked;
  genUserPageSQL;
end;

procedure TmainForm.btnUserPageEditClick(Sender: TObject);
var
  md5hash:TMD5Digest;
begin
  if ListView1.Enabled then
  begin
    ListView1.Enabled := false;
    editUserEmail.ReadOnly := false;
    editUserPassword.ReadOnly := false;
    editUser3rdParty.ReadOnly := false;
    UserPageEditGlow.Enabled := true;
    UserPageButtonEditGlow.Enabled := true;
    btnUserPageEdit.Text := '编辑中';
  end else
      begin
        UserPageButtonEditGlow.Enabled := false;
        UserPageEditGlow.Enabled := false;
        editUserEmail.ReadOnly := true;
        editUserPassword.ReadOnly := true;
        editUser3rdParty.ReadOnly := true;
        btnUserPageEdit.Text := '编 辑';
        ListView1.Enabled := true;
        libMD5.HashString(editUserPassword.Text);
        libMD5.GetDigest(md5hash);
        btnUserPageEdit.SetFocus;
        editUserPassword.Text := concatMD5(md5hash);
        with FDAdhocQuery.SQL do
        begin
          Clear;
          Add('update t_user set');
          Add('email="'+editUserEmail.Text+'",');
          Add('password="'+editUserPassword.Text+'",');
          Add('thirdParty_type="'+editUser3rdParty.Text+'"');
          Add('where user_id="'+lblUserID.Text+'"')
        end;
        //ShowMessage(FDAdhocQuery.SQL.Text);
        FDAdhocQuery.ExecSQL;
        T_userTable.Refresh;
      end;
end;

procedure TmainForm.chkAdminChange(Sender: TObject);
begin
if UserPageQueryState.permitAdminChange then
begin
  if chkAdmin.IsChecked then
  begin
    if MessageDlg('给予该用户管理员权限？该账号将被允许登录蜜包管理系统。',TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0)=mrYes then
    begin
      FDAdhocQuery.SQL.Clear;
      FDAdhocQuery.SQL.Add('Update t_user set user_permission="ADMIN" where user_id="'+lblUserID.Text+'"');
      FDAdhocQuery.ExecSQL;
      T_userTable.Refresh;
    end else chkAdmin.IsChecked := false;
  end
  else
  begin
    if MessageDlg('吊销该用户的管理员权限？该账号将不可用于登录蜜包管理系统。',TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0)=mrYes then
    begin
      FDAdhocQuery.SQL.Clear;
      FDAdhocQuery.SQL.Add('Update t_user set user_permission="" where user_id="'+lblUserID.Text+'"');
      FDAdhocQuery.ExecSQL;
      T_userTable.Refresh;
    end else chkAdmin.IsChecked := true;
  end;
  UserPageQueryState.permitAdminChange := false;
end;
end;

procedure TmainForm.chkAdminClick(Sender: TObject);
begin
  UserPageQueryState.permitAdminChange := true;
end;

procedure TmainForm.chkFeedbackResolvedClick(Sender: TObject);
begin
  if MessageDlg('骗人可不行哦~',TmsgDlgType.mtWarning,[TMsgDlgBtn.mbOK,tmsgdlgbtn.mbCancel],0)=mrOK then
  begin
    try
      chkFeedbackResolved.IsChecked := not chkFeedbackResolved.IsChecked;
      FDAdhocQuery.SQL.Clear;
      FDAdhocQuery.SQL.Add('update t_feedback set resolved='+IntToStr(integer(chkFeedbackResolved.IsChecked)));
      FDAdhocQuery.SQL.Add(' where id="'+lblFeedbackID.Text+'"');
      //ShowMessage(FDAdhocQuery.SQL.Text);
      FDAdhocQuery.ExecSQL;
    finally
      T_feedbackTable.Refresh;
    end;

  end else
      begin
       // chkFeedbackResolved.IsChecked := not chkFeedbackResolved.IsChecked;
      end;
end;

procedure TmainForm.chkGoodOnlineChange(Sender: TObject);
var
  promptstr:string;
begin
  if GoodsPageQueryState.permitGoodsOnline then
  begin
    GoodsPageQueryState.permitGoodsOnline := false;
    if chkGoodOnline.IsChecked then
      promptstr := '真的要上架吗？' else promptstr := '真的要下架吗？';
    if MessageDlg(promptstr,TMsgDlgType.mtWarning,[TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo],0)=mrYes then
    begin
      FDAdhocQuery.SQL.Clear;
      FDAdhocQuery.SQL.Add('update t_goods set is_show='+IntToStr(integer(chkGoodOnline.IsChecked)));
      FDAdhocQuery.SQL.Add('where good_id="'+lblGoodsID.Text+'"');
      FDAdhocQuery.ExecSQL;
      T_goodsTable.Refresh;
    end else
        begin
          chkGoodOnline.IsChecked := not chkGoodOnline.IsChecked;
        end;
  end;
end;

procedure TmainForm.chkGoodOnlineClick(Sender: TObject);
begin
  GoodsPageQueryState.permitGoodsOnline := true;
end;

procedure TmainForm.chkUserEnableChange(Sender: TObject);
begin
if UserPageQueryState.permitUEnChange then begin
  if (chkUserEnable.IsChecked) and (MessageDlg('确定要封锁此账号吗？禁用后该账号将无法登录蜜包。', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0)=mrYes) then
  begin
    FDAdhocQuery.SQL.Clear;
    FDAdhocQuery.SQL.Add('Update t_user set is_disable = 1 where user_id="'+lblUserID.Text+'"');
    FDAdhocQuery.ExecSQL;
    T_userTable.Refresh;
  end else begin
             chkUserEnable.IsChecked := false;
             FDAdhocQuery.SQL.Clear;
             FDAdhocQuery.SQL.Add('Update t_user set is_disable = 0 where user_id="'+lblUserID.Text+'"');
             //ShowMessage(FDAdhocQuery.SQL.Text);
             FDAdhocQuery.ExecSQL;
             T_userTable.Refresh;
           end;
  UserPageQueryState.permitUEnChange := false;
end;
end;

procedure TmainForm.chkUserEnableClick(Sender: TObject);
begin
  UserPageQueryState.permitUEnChange := true;
end;

procedure TmainForm.editAddGoodSetCurPriceKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if (editAddGoodSetOrigPrice.Text<>'') and (editAddGoodSetCurPrice.Text<>'') then
    editAddGoodSetDiscount.Text := FloatToStrF(StrToFloat(editAddGoodSetCurPrice.Text)/StrToFloat(editAddGoodSetOrigPrice.Text),TFloatFormat.ffFixed,5,2);
end;

procedure TmainForm.editAddGoodSetDesignerKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  addGoodImageSet.goodID := findMD5Str(randMD5Str+editAddGoodSetDesigner.Text+editAddGoodSetName.Text+DateToStr(Now)+randMD5Str);
  lblAddGoodDispID.Text := 'ID: ' + addGoodImageSet.goodID;
  lblAddGoodDispAddDate.Text := '已添加：'+DateTimeToStr(now);
end;

procedure TmainForm.editAddGoodSetDiscountKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if (editAddGoodSetOrigPrice.Text<>'') and (editAddGoodSetDiscount.Text<>'') then
    editAddGoodSetCurPrice.Text := FloatToStrF(StrToFloat(editAddGoodSetOrigPrice.Text)*StrToFloat(editAddGoodSetDiscount.Text),TFloatFormat.ffFixed,5,2);
end;

procedure TmainForm.editAddGoodSetOrigPriceKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
if (editAddGoodSetOrigPrice.Text<>'') and (editAddGoodSetCurPrice.Text<>'') then
    editAddGoodSetDiscount.Text := FloatToStrF(StrToFloat(editAddGoodSetCurPrice.Text)/StrToFloat(editAddGoodSetOrigPrice.Text),TFloatFormat.ffFixed,5,2);
end;

procedure TmainForm.editGoodsCurPriceKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  try
    if (GoodsPageQueryState.editing and (not GoodsPageQueryState.discountlock) and (editGoodsCurPrice.Text<>'')) then
    begin
    GoodsPageQueryState.curpricelock := true;
    editGoodsDiscount.Text := FloatToStrF(StrToFloat(editGoodsCurPrice.Text)/StrToFloat(editGoodsOrigPrice.Text),TFloatFormat.ffFixed,5,2);
    goodspagequerystate.curpricelock := false;
    end;
  finally
    
  end;
end;

procedure TmainForm.editGoodsDiscountKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
try
if (GoodsPageQueryState.editing and (not GoodsPageQueryState.curpricelock) and (editGoodsDiscount.Text<>''))then
    begin
      GoodsPageQueryState.discountlock := true;
      editGoodsCurPrice.Text := FloatToStrF(StrToFloat(editGoodsOrigPrice.Text)*StrToFloat(editGoodsDiscount.Text),TFloatFormat.ffFixed,5,2);
      GoodsPageQueryState.discountlock := false;
    end;
finally

end;
end;

procedure TmainForm.editGoodsOrigPriceKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  try
    if (GoodsPageQueryState.editing and (not GoodsPageQueryState.discountlock) and (editGoodsOrigPrice.Text<>'')) then begin
      GoodsPageQueryState.curpricelock := true;
      editGoodsDiscount.Text := FloatToStrF(StrToFloat(editGoodsCurPrice.Text)/StrToFloat(editGoodsOrigPrice.Text),TFloatFormat.ffFixed,5,2);
      GoodsPageQueryState.curpricelock := false;
    end;
  finally
    
  end;
end;

procedure TmainForm.editLoginPasswordKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if Key=13 then
    btnLogin.OnClick(btnLogin);
end;

procedure TmainForm.expUserPageSortCheckChange(Sender: TObject);
begin
  UserPageQueryState.sort.enabled := TExpander(Sender).IsChecked;
  genUserPageSQL;
end;

procedure TmainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := MessageDlg('真的要退出系统吗？',TMsgDlgType.mtWarning,[TMsgDlgBtn.mbOK,TMsgDlgBtn.mbCancel],0)=mrOk
end;

procedure TmainForm.FormCreate(Sender: TObject);
begin
  //Hide all the optional panels
  pnlAddGoods.Visible := false;
  pnlGoodChangeName.Visible := false;
  miStyleAir.IsSelected := true;
  MainTabControl.ActiveTab := MainTabControl.Tabs[0];
  FMX.types.GlobalUseDirect2D := False;
  initUserPage;
  mainState.login := false;
  mainState.loginusername := 'admin_nil';
  mainState.loginuserid := '<Unknown>';
  mainState.cache_dir := TPath.GetCachePath + PathDelim + 'MyBlaireBkend';
  if not DirectoryExists (mainState.cache_dir) then
    MkDir(mainState.cache_dir);
end;

procedure TmainForm.FormDestroy(Sender: TObject);
var
  result:TSearchRec;
  found:boolean;
  dir:string;
begin
  dir:=mainState.cache_dir;
  Found := False;
  if FindFirst(Dir + PathDelim + '*', faAnyFile, Result) = 0 then
    while not Found do begin
      if (Result.Attr and faAnyFile <> faDirectory) then DeleteFile(Dir + PathDelim + Result.Name);
      Found := FindNext(Result) <> 0;
    end;
  FindClose(Result);
end;

procedure TmainForm.MenuItem1Click(Sender: TObject);
begin
  Button1Click(Sender);
end;

procedure TmainForm.MenuItem6Click(Sender: TObject);
begin
  calloutConnConfig.Position.X := pnlLogin.Position.X + 311;
  calloutConnConfig.Position.Y:= pnlLogin.Position.Y + 150;
  calloutConnConfig.Visible := true;
  animCalloutConnConfig.Inverse := false;
  animCalloutConnConfig.Start;
end;

procedure TmainForm.MenuItem8Click(Sender: TObject);
begin
  btnReportProblemClick(Sender);
end;

procedure TmainForm.miStyleAirClick(Sender: TObject);
begin
  miStyleAir.IsSelected := true;
  mainForm.StyleBook := styleAir;
end;


procedure TmainForm.miStyleAmaskritClick(Sender: TObject);
begin
  miStyleAmaskrit.IsSelected := true;
  mainForm.StyleBook := styleAmaskrit;
end;

procedure TmainForm.miStyleDarkClick(Sender: TObject);
begin
  miStyleDark.IsSelected := true;
  mainForm.StyleBook := styleDark;
end;

procedure TmainForm.miStyleLightClick(Sender: TObject);
begin
  miStyleLight.IsSelected := true;
  mainForm.StyleBook := styleLight;
end;

procedure TmainForm.rbtnUserPageOrderAscChange(Sender: TObject);
begin
  UserPageQueryState.sort.asc := true;
  genUserPageSQL;
end;

procedure TmainForm.rbtnUserPageOrderDescChange(Sender: TObject);
begin
  UserPageQueryState.sort.asc := false;
  genUserPageSQL;
end;

procedure TmainForm.rbtUserPageSortByDateChange(Sender: TObject);
begin
  UserPageQueryState.sort.byDate := TRadioButton(Sender).IsChecked;
  UserPageQueryState.sort.byName := not TRadioButton(Sender).IsChecked;
  genUserPageSQL;
end;

procedure TmainForm.rbtUserPageSortByNameChange(Sender: TObject);
begin
  UserPageQueryState.sort.byName := TRadioButton(Sender).IsChecked;
  UserPageQueryState.sort.byDate := not TRadioButton(Sender).IsChecked;
  genUserPageSQL;
end;

end.
