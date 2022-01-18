unit DualConnector_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 17244 $
// File generated on 11.01.2022 16:13:28 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\INPAS\DualConnector\DualConnector.tlb (1)
// LIBID: {EABE2A1E-5065-4A58-A956-3E29AB335825}
// LCID: 0
// Helpfile: 
// HelpString: DualConnector TypeLib
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
// Errors:
//   Hint: TypeInfo 'Destructor' changed to 'Destructor_'
//   Hint: TypeInfo 'Type' changed to 'Type_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, mscorlib_TLB, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DualConnectorMajorVersion = 1;
  DualConnectorMinorVersion = 3;

  LIBID_DualConnector: TGUID = '{EABE2A1E-5065-4A58-A956-3E29AB335825}';

  IID__ConfirmOperationParameters: TGUID = '{721F30C0-5FD5-39D9-96AF-8349780F6D36}';
  IID__ConfirmOperationData: TGUID = '{D529FC24-8E70-3AC7-A4E2-6131C6ADEACE}';
  IID__DestructorDelegate: TGUID = '{D94271F9-6C8A-38B4-B6F7-D57A3D467998}';
  IID__Destructor: TGUID = '{C5FC21FC-19BA-38DE-830C-2B99AD80A376}';
  IID_ISAPacket: TGUID = '{F0170496-1BD8-4336-9D48-15D35239B09E}';
  IID__ConfigParameters: TGUID = '{B4ACBE2D-D081-3984-AA7B-684CB9F29E6F}';
  IID__DeviceParameters: TGUID = '{947A3225-B6CE-368A-B8AC-95D765712A4D}';
  IID__OutputParameters: TGUID = '{BA4D3D3B-EC1D-39A4-AADF-461B35EAA2E7}';
  IID__DCLink: TGUID = '{97EDA552-C24F-354E-8BC1-FC2698A60FB3}';
  IID__OnExchangeHandler: TGUID = '{92A6F9C8-E55F-3543-94F7-DDFFC5B8B899}';
  IID__OnShowWindowHandler: TGUID = '{4D8E8BB4-95EA-327F-9FB7-875A1F49551E}';
  IID_DualConnectorInterface: TGUID = '{7EC82459-39CA-467B-9FD2-0ABEDED2F433}';
  DIID_DualConnectorEvents: TGUID = '{3FEFBF77-A6B6-48A9-A340-816E3464D2A0}';
  CLASS_SAPacket: TGUID = '{F1E92F81-2791-397E-89D4-BB29C88F7FE2}';
  IID_IStringConverter: TGUID = '{F302F9A3-10A5-4E59-AC33-73EA4BFDCF0A}';
  IID__FileTracer: TGUID = '{DAB7F4DD-94CD-3667-A8EA-B0EE194CBAB7}';
  IID__SARecord: TGUID = '{9D465962-579B-3FFB-BA1B-BD02E6AEC32A}';
  CLASS_StringConverter: TGUID = '{C9AB99F8-F994-303A-8B45-DF63DD6B4376}';
  IID__PluginContext: TGUID = '{87DFB8C2-8E6D-3BC1-A786-3F9ED5F27EC8}';
  IID__TraceSourceHelper: TGUID = '{3492B696-C11B-38EB-8750-D415AE700500}';
  IID__LogHelper: TGUID = '{5BF24FCF-4CFC-3AE6-8423-42529EF8543D}';
  IID__PathsHelper: TGUID = '{88C1315C-718D-3B8C-B805-559F95959565}';
  IID_ILogHelper: TGUID = '{28D96E70-233B-3F26-94CE-A62D6F0284DA}';
  CLASS_ConfirmOperationParameters: TGUID = '{41763B3E-1903-3A90-99E6-CBB68042D81F}';
  CLASS_ConfirmOperationData: TGUID = '{29E677BD-6959-3806-8BDD-BCE45B55A78C}';
  CLASS_DestructorDelegate: TGUID = '{6822F58A-9967-38CF-B24B-150A0ED3BB38}';
  CLASS_Destructor_: TGUID = '{0BB67806-819C-3BCE-95D3-A868A9A2C2A0}';
  CLASS_ConfigParameters: TGUID = '{ADCDF31B-C006-3B70-AB88-96E800E4215A}';
  CLASS_DeviceParameters: TGUID = '{B825F5F3-5AE2-3A7D-86A2-45943C9BE441}';
  CLASS_OutputParameters: TGUID = '{828A7690-EFE6-3E38-AFF4-DEC73366645F}';
  CLASS_DCLink: TGUID = '{5EABB9F7-5AEE-304B-86C1-D620EDE4533F}';
  CLASS_OnExchangeHandler: TGUID = '{DFDD7413-C7AD-31DF-B9E3-FABC7F155F62}';
  CLASS_OnShowWindowHandler: TGUID = '{43A7F27C-BCEF-409B-9A08-3D40783F7091}';
  CLASS_FileTracer: TGUID = '{CCDDD7DD-12C5-3C6A-AEB4-6EDD1D52369C}';
  CLASS_SARecord: TGUID = '{E665FEFA-DA84-3363-A753-ED7ED100E42C}';
  CLASS_PluginContext: TGUID = '{25E061B6-271F-347C-8AE6-0E0C310E81B6}';
  CLASS_TraceSourceHelper: TGUID = '{F1248BA0-9F46-3158-AFC4-4AE4D6B422EB}';
  CLASS_LogHelper: TGUID = '{8BA39AAE-9570-3BF5-ADC6-823F13B249D8}';
  CLASS_PathsHelper: TGUID = '{67EAE1FB-F2FB-36C1-8337-2D4BA077C2DB}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum LOG_TYPE
type
  LOG_TYPE = TOleEnum;
const
  LOG_TYPE_NONE = $00000000;
  LOG_TYPE_SYSTEM = $00000001;
  LOG_TYPE_ADVANCED = $00000002;
  LOG_TYPE_DEBUG = $00000003;
  LOG_TYPE_VERBOSE = $00000004;

// Constants for enum Switch
type
  Switch = TOleEnum;
const
  Switch_OFF = $00000000;
  Switch_ON = $00000001;

// Constants for enum Connection
type
  Connection = TOleEnum;
const
  Connection_COM = $00000000;
  Connection_IP = $00000001;

// Constants for enum Type_
type
  Type_ = TOleEnum;
const
  Type_TERMINAL = $00000000;
  Type_PINPAD = $00000001;

// Constants for enum SslUse
type
  SslUse = TOleEnum;
const
  SslUse_OFF = $00000000;
  SslUse_ON = $00000001;

// Constants for enum ErrCode
type
  ErrCode = TOleEnum;
const
  ErrCode_OK = $00000000;
  ErrCode_TIMEOUT = $00000001;
  ErrCode_LOG_ERROR = $00000002;
  ErrCode_SYSTEM_ERROR = $00000003;
  ErrCode_REQUEST_ERROR = $00000004;
  ErrCode_CONFIG_REDIRECT = $00000005;
  ErrCode_CONFIG_NOT_FOUND = $00000006;
  ErrCode_CONFIG_ERROR_FORMAT = $00000007;
  ErrCode_CONFIG_ERROR_LOG = $00000008;
  ErrCode_CONFIG_ERROR_DEVICES = $00000009;
  ErrCode_CONFIG_ERROR_DUBLCOMPORTS = $0000000A;
  ErrCode_CONFIG_ERROR_OUTPUT = $0000000B;
  ErrCode_PRINT_ERROR = $0000000C;
  ErrCode_ERROR_CONNECT = $0000000D;
  ErrCode_CONFIG_ERROR_GUI = $0000000E;
  ErrCode_CANCEL_OPERATION = $0000000F;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _ConfirmOperationParameters = interface;
  _ConfirmOperationParametersDisp = dispinterface;
  _ConfirmOperationData = interface;
  _ConfirmOperationDataDisp = dispinterface;
  _DestructorDelegate = interface;
  _DestructorDelegateDisp = dispinterface;
  _Destructor = interface;
  _DestructorDisp = dispinterface;
  ISAPacket = interface;
  ISAPacketDisp = dispinterface;
  _ConfigParameters = interface;
  _ConfigParametersDisp = dispinterface;
  _DeviceParameters = interface;
  _DeviceParametersDisp = dispinterface;
  _OutputParameters = interface;
  _OutputParametersDisp = dispinterface;
  _DCLink = interface;
  _DCLinkDisp = dispinterface;
  _OnExchangeHandler = interface;
  _OnExchangeHandlerDisp = dispinterface;
  _OnShowWindowHandler = interface;
  _OnShowWindowHandlerDisp = dispinterface;
  DualConnectorInterface = interface;
  DualConnectorInterfaceDisp = dispinterface;
  DualConnectorEvents = dispinterface;
  IStringConverter = interface;
  IStringConverterDisp = dispinterface;
  _FileTracer = interface;
  _FileTracerDisp = dispinterface;
  _SARecord = interface;
  _SARecordDisp = dispinterface;
  _PluginContext = interface;
  _PluginContextDisp = dispinterface;
  _TraceSourceHelper = interface;
  _TraceSourceHelperDisp = dispinterface;
  _LogHelper = interface;
  _LogHelperDisp = dispinterface;
  _PathsHelper = interface;
  _PathsHelperDisp = dispinterface;
  ILogHelper = interface;
  ILogHelperDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  SAPacket = ISAPacket;
  StringConverter = IStringConverter;
  ConfirmOperationParameters = _ConfirmOperationParameters;
  ConfirmOperationData = _ConfirmOperationData;
  DestructorDelegate = _DestructorDelegate;
  Destructor_ = _Destructor;
  ConfigParameters = _ConfigParameters;
  DeviceParameters = _DeviceParameters;
  OutputParameters = _OutputParameters;
  DCLink = _DCLink;
  OnExchangeHandler = _OnExchangeHandler;
  OnShowWindowHandler = _OnShowWindowHandler;
  FileTracer = _FileTracer;
  SARecord = _SARecord;
  PluginContext = _PluginContext;
  TraceSourceHelper = _TraceSourceHelper;
  LogHelper = _LogHelper;
  PathsHelper = _PathsHelper;


// *********************************************************************//
// Interface: _ConfirmOperationParameters
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {721F30C0-5FD5-39D9-96AF-8349780F6D36}
// *********************************************************************//
  _ConfirmOperationParameters = interface(IDispatch)
    ['{721F30C0-5FD5-39D9-96AF-8349780F6D36}']
  end;

// *********************************************************************//
// DispIntf:  _ConfirmOperationParametersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {721F30C0-5FD5-39D9-96AF-8349780F6D36}
// *********************************************************************//
  _ConfirmOperationParametersDisp = dispinterface
    ['{721F30C0-5FD5-39D9-96AF-8349780F6D36}']
  end;

// *********************************************************************//
// Interface: _ConfirmOperationData
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D529FC24-8E70-3AC7-A4E2-6131C6ADEACE}
// *********************************************************************//
  _ConfirmOperationData = interface(IDispatch)
    ['{D529FC24-8E70-3AC7-A4E2-6131C6ADEACE}']
  end;

// *********************************************************************//
// DispIntf:  _ConfirmOperationDataDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D529FC24-8E70-3AC7-A4E2-6131C6ADEACE}
// *********************************************************************//
  _ConfirmOperationDataDisp = dispinterface
    ['{D529FC24-8E70-3AC7-A4E2-6131C6ADEACE}']
  end;

// *********************************************************************//
// Interface: _DestructorDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D94271F9-6C8A-38B4-B6F7-D57A3D467998}
// *********************************************************************//
  _DestructorDelegate = interface(IDispatch)
    ['{D94271F9-6C8A-38B4-B6F7-D57A3D467998}']
  end;

// *********************************************************************//
// DispIntf:  _DestructorDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D94271F9-6C8A-38B4-B6F7-D57A3D467998}
// *********************************************************************//
  _DestructorDelegateDisp = dispinterface
    ['{D94271F9-6C8A-38B4-B6F7-D57A3D467998}']
  end;

// *********************************************************************//
// Interface: _Destructor
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C5FC21FC-19BA-38DE-830C-2B99AD80A376}
// *********************************************************************//
  _Destructor = interface(IDispatch)
    ['{C5FC21FC-19BA-38DE-830C-2B99AD80A376}']
  end;

// *********************************************************************//
// DispIntf:  _DestructorDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C5FC21FC-19BA-38DE-830C-2B99AD80A376}
// *********************************************************************//
  _DestructorDisp = dispinterface
    ['{C5FC21FC-19BA-38DE-830C-2B99AD80A376}']
  end;

// *********************************************************************//
// Interface: ISAPacket
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0170496-1BD8-4336-9D48-15D35239B09E}
// *********************************************************************//
  ISAPacket = interface(IDispatch)
    ['{F0170496-1BD8-4336-9D48-15D35239B09E}']
    function Get_CardEntryMode: Integer; safecall;
    procedure Set_CardEntryMode(pRetVal: Integer); safecall;
    function Get_TrxID: Integer; safecall;
    procedure Set_TrxID(pRetVal: Integer); safecall;
    function Get_TerminalTrxID: Integer; safecall;
    procedure Set_TerminalTrxID(pRetVal: Integer); safecall;
    function Get_OperationCode: Integer; safecall;
    procedure Set_OperationCode(pRetVal: Integer); safecall;
    function Get_Status: Integer; safecall;
    procedure Set_Status(pRetVal: Integer); safecall;
    function Get_HostTrxID: Integer; safecall;
    procedure Set_HostTrxID(pRetVal: Integer); safecall;
    function Get_CommandMode: Integer; safecall;
    procedure Set_CommandMode(pRetVal: Integer); safecall;
    function Get_CommandMode2: Integer; safecall;
    procedure Set_CommandMode2(pRetVal: Integer); safecall;
    function Get_CommandResult: Integer; safecall;
    procedure Set_CommandResult(pRetVal: Integer); safecall;
    function Get_OrigOperation: Integer; safecall;
    procedure Set_OrigOperation(pRetVal: Integer); safecall;
    function Get_ProcessingFlag: Integer; safecall;
    procedure Set_ProcessingFlag(pRetVal: Integer); safecall;
    function Get_AdminCardEntryMode: Integer; safecall;
    procedure Set_AdminCardEntryMode(pRetVal: Integer); safecall;
    function Get_PINCodingMode: Integer; safecall;
    procedure Set_PINCodingMode(pRetVal: Integer); safecall;
    function Get_CardWaitTimeout: Integer; safecall;
    procedure Set_CardWaitTimeout(pRetVal: Integer); safecall;
    function Get_RecipientAddress: Integer; safecall;
    procedure Set_RecipientAddress(pRetVal: Integer); safecall;
    function Get_Amount: WideString; safecall;
    procedure Set_Amount(const pRetVal: WideString); safecall;
    function Get_AdditionalAmount: WideString; safecall;
    procedure Set_AdditionalAmount(const pRetVal: WideString); safecall;
    function Get_CurrencyCode: WideString; safecall;
    procedure Set_CurrencyCode(const pRetVal: WideString); safecall;
    function Get_DateTimeHost: WideString; safecall;
    procedure Set_DateTimeHost(const pRetVal: WideString); safecall;
    function Get_PAN: WideString; safecall;
    procedure Set_PAN(const pRetVal: WideString); safecall;
    function Get_CardExpiryDate: WideString; safecall;
    procedure Set_CardExpiryDate(const pRetVal: WideString); safecall;
    function Get_TRACK2: WideString; safecall;
    procedure Set_TRACK2(const pRetVal: WideString); safecall;
    function Get_AuthorizationCode: WideString; safecall;
    procedure Set_AuthorizationCode(const pRetVal: WideString); safecall;
    function Get_ReferenceNumber: WideString; safecall;
    procedure Set_ReferenceNumber(const pRetVal: WideString); safecall;
    function Get_ResponseCodeHost: WideString; safecall;
    procedure Set_ResponseCodeHost(const pRetVal: WideString); safecall;
    function Get_PinBlock: WideString; safecall;
    procedure Set_PinBlock(const pRetVal: WideString); safecall;
    function Get_TextResponse: WideString; safecall;
    procedure Set_TextResponse(const pRetVal: WideString); safecall;
    function Get_TerminalDateTime: WideString; safecall;
    procedure Set_TerminalDateTime(const pRetVal: WideString); safecall;
    function Get_TerminalID: WideString; safecall;
    procedure Set_TerminalID(const pRetVal: WideString); safecall;
    function Get_MerchantID: WideString; safecall;
    procedure Set_MerchantID(const pRetVal: WideString); safecall;
    function Get_MAC: WideString; safecall;
    procedure Set_MAC(const pRetVal: WideString); safecall;
    function Get_CashierRequest: WideString; safecall;
    procedure Set_CashierRequest(const pRetVal: WideString); safecall;
    function Get_CashierResponse: WideString; safecall;
    procedure Set_CashierResponse(const pRetVal: WideString); safecall;
    function Get_CommodityCode: WideString; safecall;
    procedure Set_CommodityCode(const pRetVal: WideString); safecall;
    function Get_PaymentDetails: WideString; safecall;
    procedure Set_PaymentDetails(const pRetVal: WideString); safecall;
    function Get_ProviderCode: WideString; safecall;
    procedure Set_ProviderCode(const pRetVal: WideString); safecall;
    function Get_Acquirer: WideString; safecall;
    procedure Set_Acquirer(const pRetVal: WideString); safecall;
    function Get_WorkKey: WideString; safecall;
    procedure Set_WorkKey(const pRetVal: WideString); safecall;
    function Get_DebitAmount: WideString; safecall;
    procedure Set_DebitAmount(const pRetVal: WideString); safecall;
    function Get_DebitCount: WideString; safecall;
    procedure Set_DebitCount(const pRetVal: WideString); safecall;
    function Get_CreditAmount: WideString; safecall;
    procedure Set_CreditAmount(const pRetVal: WideString); safecall;
    function Get_CreditCount: WideString; safecall;
    procedure Set_CreditCount(const pRetVal: WideString); safecall;
    function Get_VoidDebitAmount: WideString; safecall;
    procedure Set_VoidDebitAmount(const pRetVal: WideString); safecall;
    function Get_VoidDebitCount: WideString; safecall;
    procedure Set_VoidDebitCount(const pRetVal: WideString); safecall;
    function Get_VoidCreditAmount: WideString; safecall;
    procedure Set_VoidCreditAmount(const pRetVal: WideString); safecall;
    function Get_VoidCreditCount: WideString; safecall;
    procedure Set_VoidCreditCount(const pRetVal: WideString); safecall;
    function Get_PinKey: WideString; safecall;
    procedure Set_PinKey(const pRetVal: WideString); safecall;
    function Get_AdminTrack2: WideString; safecall;
    procedure Set_AdminTrack2(const pRetVal: WideString); safecall;
    function Get_AdminPinBlock: WideString; safecall;
    procedure Set_AdminPinBlock(const pRetVal: WideString); safecall;
    function Get_AdminPAN: WideString; safecall;
    procedure Set_AdminPAN(const pRetVal: WideString); safecall;
    function Get_AdminCardExpiryDate: WideString; safecall;
    procedure Set_AdminCardExpiryDate(const pRetVal: WideString); safecall;
    function Get_FileData: WideString; safecall;
    procedure Set_FileData(const pRetVal: WideString); safecall;
    function Get_AccountType: WideString; safecall;
    procedure Set_AccountType(const pRetVal: WideString); safecall;
    function Get_AdditionalData: WideString; safecall;
    procedure Set_AdditionalData(const pRetVal: WideString); safecall;
    function Get_ReceiptData: WideString; safecall;
    procedure Set_ReceiptData(const pRetVal: WideString); safecall;
    function Get_DeviceSerNumber: WideString; safecall;
    procedure Set_DeviceSerNumber(const pRetVal: WideString); safecall;
    function Get_MessageED: WideString; safecall;
    procedure Set_MessageED(const pRetVal: WideString); safecall;
    function Get_ModelNo: WideString; safecall;
    procedure Set_ModelNo(const pRetVal: WideString); safecall;
    function Get_AmountFee: WideString; safecall;
    procedure Set_AmountFee(const pRetVal: WideString); safecall;
    function Get_TerminalOutID: WideString; safecall;
    procedure Set_TerminalOutID(const pRetVal: WideString); safecall;
    function Get_ResultFile: WideString; safecall;
    procedure Set_ResultFile(const pRetVal: WideString); safecall;
    function Get_ReportFile: WideString; safecall;
    procedure Set_ReportFile(const pRetVal: WideString); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const pRetVal: WideString); safecall;
    function Get_CVV2: WideString; safecall;
    procedure Set_CVV2(const pRetVal: WideString); safecall;
    function Get_TermResponseStatus: Integer; safecall;
    procedure Set_TermResponseStatus(pRetVal: Integer); safecall;
    function Get_TransactionStatus: Integer; safecall;
    procedure Set_TransactionStatus(pRetVal: Integer); safecall;
    function Get_SlipNumber: Integer; safecall;
    procedure Set_SlipNumber(pRetVal: Integer); safecall;
    function SetFieldInt(fieldNum: Integer; value: Integer): WordBool; safecall;
    function SetField(fieldNum: Integer; const value: WideString): WordBool; safecall;
    function GetFieldInt(fieldNum: Integer): Integer; safecall;
    function GetField(fieldNum: Integer): WideString; safecall;
    property CardEntryMode: Integer read Get_CardEntryMode write Set_CardEntryMode;
    property TrxID: Integer read Get_TrxID write Set_TrxID;
    property TerminalTrxID: Integer read Get_TerminalTrxID write Set_TerminalTrxID;
    property OperationCode: Integer read Get_OperationCode write Set_OperationCode;
    property Status: Integer read Get_Status write Set_Status;
    property HostTrxID: Integer read Get_HostTrxID write Set_HostTrxID;
    property CommandMode: Integer read Get_CommandMode write Set_CommandMode;
    property CommandMode2: Integer read Get_CommandMode2 write Set_CommandMode2;
    property CommandResult: Integer read Get_CommandResult write Set_CommandResult;
    property OrigOperation: Integer read Get_OrigOperation write Set_OrigOperation;
    property ProcessingFlag: Integer read Get_ProcessingFlag write Set_ProcessingFlag;
    property AdminCardEntryMode: Integer read Get_AdminCardEntryMode write Set_AdminCardEntryMode;
    property PINCodingMode: Integer read Get_PINCodingMode write Set_PINCodingMode;
    property CardWaitTimeout: Integer read Get_CardWaitTimeout write Set_CardWaitTimeout;
    property RecipientAddress: Integer read Get_RecipientAddress write Set_RecipientAddress;
    property Amount: WideString read Get_Amount write Set_Amount;
    property AdditionalAmount: WideString read Get_AdditionalAmount write Set_AdditionalAmount;
    property CurrencyCode: WideString read Get_CurrencyCode write Set_CurrencyCode;
    property DateTimeHost: WideString read Get_DateTimeHost write Set_DateTimeHost;
    property PAN: WideString read Get_PAN write Set_PAN;
    property CardExpiryDate: WideString read Get_CardExpiryDate write Set_CardExpiryDate;
    property TRACK2: WideString read Get_TRACK2 write Set_TRACK2;
    property AuthorizationCode: WideString read Get_AuthorizationCode write Set_AuthorizationCode;
    property ReferenceNumber: WideString read Get_ReferenceNumber write Set_ReferenceNumber;
    property ResponseCodeHost: WideString read Get_ResponseCodeHost write Set_ResponseCodeHost;
    property PinBlock: WideString read Get_PinBlock write Set_PinBlock;
    property TextResponse: WideString read Get_TextResponse write Set_TextResponse;
    property TerminalDateTime: WideString read Get_TerminalDateTime write Set_TerminalDateTime;
    property TerminalID: WideString read Get_TerminalID write Set_TerminalID;
    property MerchantID: WideString read Get_MerchantID write Set_MerchantID;
    property MAC: WideString read Get_MAC write Set_MAC;
    property CashierRequest: WideString read Get_CashierRequest write Set_CashierRequest;
    property CashierResponse: WideString read Get_CashierResponse write Set_CashierResponse;
    property CommodityCode: WideString read Get_CommodityCode write Set_CommodityCode;
    property PaymentDetails: WideString read Get_PaymentDetails write Set_PaymentDetails;
    property ProviderCode: WideString read Get_ProviderCode write Set_ProviderCode;
    property Acquirer: WideString read Get_Acquirer write Set_Acquirer;
    property WorkKey: WideString read Get_WorkKey write Set_WorkKey;
    property DebitAmount: WideString read Get_DebitAmount write Set_DebitAmount;
    property DebitCount: WideString read Get_DebitCount write Set_DebitCount;
    property CreditAmount: WideString read Get_CreditAmount write Set_CreditAmount;
    property CreditCount: WideString read Get_CreditCount write Set_CreditCount;
    property VoidDebitAmount: WideString read Get_VoidDebitAmount write Set_VoidDebitAmount;
    property VoidDebitCount: WideString read Get_VoidDebitCount write Set_VoidDebitCount;
    property VoidCreditAmount: WideString read Get_VoidCreditAmount write Set_VoidCreditAmount;
    property VoidCreditCount: WideString read Get_VoidCreditCount write Set_VoidCreditCount;
    property PinKey: WideString read Get_PinKey write Set_PinKey;
    property AdminTrack2: WideString read Get_AdminTrack2 write Set_AdminTrack2;
    property AdminPinBlock: WideString read Get_AdminPinBlock write Set_AdminPinBlock;
    property AdminPAN: WideString read Get_AdminPAN write Set_AdminPAN;
    property AdminCardExpiryDate: WideString read Get_AdminCardExpiryDate write Set_AdminCardExpiryDate;
    property FileData: WideString read Get_FileData write Set_FileData;
    property AccountType: WideString read Get_AccountType write Set_AccountType;
    property AdditionalData: WideString read Get_AdditionalData write Set_AdditionalData;
    property ReceiptData: WideString read Get_ReceiptData write Set_ReceiptData;
    property DeviceSerNumber: WideString read Get_DeviceSerNumber write Set_DeviceSerNumber;
    property MessageED: WideString read Get_MessageED write Set_MessageED;
    property ModelNo: WideString read Get_ModelNo write Set_ModelNo;
    property AmountFee: WideString read Get_AmountFee write Set_AmountFee;
    property TerminalOutID: WideString read Get_TerminalOutID write Set_TerminalOutID;
    property ResultFile: WideString read Get_ResultFile write Set_ResultFile;
    property ReportFile: WideString read Get_ReportFile write Set_ReportFile;
    property FileName: WideString read Get_FileName write Set_FileName;
    property CVV2: WideString read Get_CVV2 write Set_CVV2;
    property TermResponseStatus: Integer read Get_TermResponseStatus write Set_TermResponseStatus;
    property TransactionStatus: Integer read Get_TransactionStatus write Set_TransactionStatus;
    property SlipNumber: Integer read Get_SlipNumber write Set_SlipNumber;
  end;

// *********************************************************************//
// DispIntf:  ISAPacketDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0170496-1BD8-4336-9D48-15D35239B09E}
// *********************************************************************//
  ISAPacketDisp = dispinterface
    ['{F0170496-1BD8-4336-9D48-15D35239B09E}']
    property CardEntryMode: Integer dispid 1610743808;
    property TrxID: Integer dispid 1610743810;
    property TerminalTrxID: Integer dispid 1610743812;
    property OperationCode: Integer dispid 1610743814;
    property Status: Integer dispid 1610743816;
    property HostTrxID: Integer dispid 1610743818;
    property CommandMode: Integer dispid 1610743820;
    property CommandMode2: Integer dispid 1610743822;
    property CommandResult: Integer dispid 1610743824;
    property OrigOperation: Integer dispid 1610743826;
    property ProcessingFlag: Integer dispid 1610743828;
    property AdminCardEntryMode: Integer dispid 1610743830;
    property PINCodingMode: Integer dispid 1610743832;
    property CardWaitTimeout: Integer dispid 1610743834;
    property RecipientAddress: Integer dispid 1610743836;
    property Amount: WideString dispid 1610743838;
    property AdditionalAmount: WideString dispid 1610743840;
    property CurrencyCode: WideString dispid 1610743842;
    property DateTimeHost: WideString dispid 1610743844;
    property PAN: WideString dispid 1610743846;
    property CardExpiryDate: WideString dispid 1610743848;
    property TRACK2: WideString dispid 1610743850;
    property AuthorizationCode: WideString dispid 1610743852;
    property ReferenceNumber: WideString dispid 1610743854;
    property ResponseCodeHost: WideString dispid 1610743856;
    property PinBlock: WideString dispid 1610743858;
    property TextResponse: WideString dispid 1610743860;
    property TerminalDateTime: WideString dispid 1610743862;
    property TerminalID: WideString dispid 1610743864;
    property MerchantID: WideString dispid 1610743866;
    property MAC: WideString dispid 1610743868;
    property CashierRequest: WideString dispid 1610743870;
    property CashierResponse: WideString dispid 1610743872;
    property CommodityCode: WideString dispid 1610743874;
    property PaymentDetails: WideString dispid 1610743876;
    property ProviderCode: WideString dispid 1610743878;
    property Acquirer: WideString dispid 1610743880;
    property WorkKey: WideString dispid 1610743882;
    property DebitAmount: WideString dispid 1610743884;
    property DebitCount: WideString dispid 1610743886;
    property CreditAmount: WideString dispid 1610743888;
    property CreditCount: WideString dispid 1610743890;
    property VoidDebitAmount: WideString dispid 1610743892;
    property VoidDebitCount: WideString dispid 1610743894;
    property VoidCreditAmount: WideString dispid 1610743896;
    property VoidCreditCount: WideString dispid 1610743898;
    property PinKey: WideString dispid 1610743900;
    property AdminTrack2: WideString dispid 1610743902;
    property AdminPinBlock: WideString dispid 1610743904;
    property AdminPAN: WideString dispid 1610743906;
    property AdminCardExpiryDate: WideString dispid 1610743908;
    property FileData: WideString dispid 1610743910;
    property AccountType: WideString dispid 1610743912;
    property AdditionalData: WideString dispid 1610743914;
    property ReceiptData: WideString dispid 1610743916;
    property DeviceSerNumber: WideString dispid 1610743918;
    property MessageED: WideString dispid 1610743920;
    property ModelNo: WideString dispid 1610743922;
    property AmountFee: WideString dispid 1610743924;
    property TerminalOutID: WideString dispid 1610743926;
    property ResultFile: WideString dispid 1610743928;
    property ReportFile: WideString dispid 1610743930;
    property FileName: WideString dispid 1610743932;
    property CVV2: WideString dispid 1610743934;
    property TermResponseStatus: Integer dispid 1610743936;
    property TransactionStatus: Integer dispid 1610743938;
    property SlipNumber: Integer dispid 1610743940;
    function SetFieldInt(fieldNum: Integer; value: Integer): WordBool; dispid 1610743942;
    function SetField(fieldNum: Integer; const value: WideString): WordBool; dispid 1610743943;
    function GetFieldInt(fieldNum: Integer): Integer; dispid 1610743944;
    function GetField(fieldNum: Integer): WideString; dispid 1610743945;
  end;

// *********************************************************************//
// Interface: _ConfigParameters
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B4ACBE2D-D081-3984-AA7B-684CB9F29E6F}
// *********************************************************************//
  _ConfigParameters = interface(IDispatch)
    ['{B4ACBE2D-D081-3984-AA7B-684CB9F29E6F}']
  end;

// *********************************************************************//
// DispIntf:  _ConfigParametersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B4ACBE2D-D081-3984-AA7B-684CB9F29E6F}
// *********************************************************************//
  _ConfigParametersDisp = dispinterface
    ['{B4ACBE2D-D081-3984-AA7B-684CB9F29E6F}']
  end;

// *********************************************************************//
// Interface: _DeviceParameters
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {947A3225-B6CE-368A-B8AC-95D765712A4D}
// *********************************************************************//
  _DeviceParameters = interface(IDispatch)
    ['{947A3225-B6CE-368A-B8AC-95D765712A4D}']
  end;

// *********************************************************************//
// DispIntf:  _DeviceParametersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {947A3225-B6CE-368A-B8AC-95D765712A4D}
// *********************************************************************//
  _DeviceParametersDisp = dispinterface
    ['{947A3225-B6CE-368A-B8AC-95D765712A4D}']
  end;

// *********************************************************************//
// Interface: _OutputParameters
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BA4D3D3B-EC1D-39A4-AADF-461B35EAA2E7}
// *********************************************************************//
  _OutputParameters = interface(IDispatch)
    ['{BA4D3D3B-EC1D-39A4-AADF-461B35EAA2E7}']
  end;

// *********************************************************************//
// DispIntf:  _OutputParametersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BA4D3D3B-EC1D-39A4-AADF-461B35EAA2E7}
// *********************************************************************//
  _OutputParametersDisp = dispinterface
    ['{BA4D3D3B-EC1D-39A4-AADF-461B35EAA2E7}']
  end;

// *********************************************************************//
// Interface: _DCLink
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {97EDA552-C24F-354E-8BC1-FC2698A60FB3}
// *********************************************************************//
  _DCLink = interface(IDispatch)
    ['{7EC82459-39CA-467B-9FD2-0ABEDED2F433}']
    function InitResources: Integer; safecall;
    function Exchange(var request: ISAPacket; var response: ISAPacket; msTimeout: Integer): Integer; safecall;
    procedure FreeResources; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDescription: WideString; safecall;
    procedure SetCallback(callback: Integer); safecall;
    function SetChannelTerminalParam(nCOM: Int64; BaudRate: Int64; ByteSize: Int64; Parity: Int64;
                                     StopBits: Int64; FlowCtrl: Int64): Integer; safecall;
    procedure SetShowWindowCallback(callback: Integer); safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDescription: WideString read Get_ErrorDescription;
  end;

// *********************************************************************//
// DispIntf:  _DCLinkDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {97EDA552-C24F-354E-8BC1-FC2698A60FB3}
// *********************************************************************//
  _DCLinkDisp = dispinterface
    ['{97EDA552-C24F-354E-8BC1-FC2698A60FB3}']
  end;

// *********************************************************************//
// Interface: _OnExchangeHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92A6F9C8-E55F-3543-94F7-DDFFC5B8B899}
// *********************************************************************//
  _OnExchangeHandler = interface(IDispatch)
    ['{92A6F9C8-E55F-3543-94F7-DDFFC5B8B899}']
  end;

// *********************************************************************//
// DispIntf:  _OnExchangeHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {92A6F9C8-E55F-3543-94F7-DDFFC5B8B899}
// *********************************************************************//
  _OnExchangeHandlerDisp = dispinterface
    ['{92A6F9C8-E55F-3543-94F7-DDFFC5B8B899}']
  end;

// *********************************************************************//
// Interface: _OnShowWindowHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D8E8BB4-95EA-327F-9FB7-875A1F49551E}
// *********************************************************************//
  _OnShowWindowHandler = interface(IDispatch)
    ['{4D8E8BB4-95EA-327F-9FB7-875A1F49551E}']
  end;

// *********************************************************************//
// DispIntf:  _OnShowWindowHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4D8E8BB4-95EA-327F-9FB7-875A1F49551E}
// *********************************************************************//
  _OnShowWindowHandlerDisp = dispinterface
    ['{4D8E8BB4-95EA-327F-9FB7-875A1F49551E}']
  end;

// *********************************************************************//
// Interface: DualConnectorInterface
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7EC82459-39CA-467B-9FD2-0ABEDED2F433}
// *********************************************************************//
  DualConnectorInterface = interface(IDispatch)
    ['{7EC82459-39CA-467B-9FD2-0ABEDED2F433}']
    function InitResources: Integer; safecall;
    function Exchange(var request: ISAPacket; var response: ISAPacket; msTimeout: Integer): Integer; safecall;
    procedure FreeResources; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDescription: WideString; safecall;
    procedure SetCallback(callback: Integer); safecall;
    function SetChannelTerminalParam(nCOM: Int64; BaudRate: Int64; ByteSize: Int64; Parity: Int64; 
                                     StopBits: Int64; FlowCtrl: Int64): Integer; safecall;
    procedure SetShowWindowCallback(callback: Integer); safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDescription: WideString read Get_ErrorDescription;
  end;

// *********************************************************************//
// DispIntf:  DualConnectorInterfaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7EC82459-39CA-467B-9FD2-0ABEDED2F433}
// *********************************************************************//
  DualConnectorInterfaceDisp = dispinterface
    ['{7EC82459-39CA-467B-9FD2-0ABEDED2F433}']
    function InitResources: Integer; dispid 1610743808;
    function Exchange(var request: ISAPacket; var response: ISAPacket; msTimeout: Integer): Integer; dispid 1610743809;
    procedure FreeResources; dispid 1610743810;
    property ErrorCode: Integer readonly dispid 1610743811;
    property ErrorDescription: WideString readonly dispid 1610743812;
    procedure SetCallback(callback: Integer); dispid 1610743813;
    function SetChannelTerminalParam(nCOM: {??Int64}OleVariant; BaudRate: {??Int64}OleVariant; 
                                     ByteSize: {??Int64}OleVariant; Parity: {??Int64}OleVariant; 
                                     StopBits: {??Int64}OleVariant; FlowCtrl: {??Int64}OleVariant): Integer; dispid 1610743814;
    procedure SetShowWindowCallback(callback: Integer); dispid 1610743815;
  end;

// *********************************************************************//
// DispIntf:  DualConnectorEvents
// Flags:     (4096) Dispatchable
// GUID:      {3FEFBF77-A6B6-48A9-A340-816E3464D2A0}
// *********************************************************************//
  DualConnectorEvents = dispinterface
    ['{3FEFBF77-A6B6-48A9-A340-816E3464D2A0}']
    procedure OnExchange(result: Integer); dispid 1;
    procedure OnShowWindow(const request: ISAPacket; const response: ISAPacket); dispid 2;
  end;

// *********************************************************************//
// Interface: IStringConverter
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F302F9A3-10A5-4E59-AC33-73EA4BFDCF0A}
// *********************************************************************//
  IStringConverter = interface(IDispatch)
    ['{F302F9A3-10A5-4E59-AC33-73EA4BFDCF0A}']
    function Get1251Bytes(const source: WideString; result: PSafeArray; lengthOfResult: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IStringConverterDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F302F9A3-10A5-4E59-AC33-73EA4BFDCF0A}
// *********************************************************************//
  IStringConverterDisp = dispinterface
    ['{F302F9A3-10A5-4E59-AC33-73EA4BFDCF0A}']
    function Get1251Bytes(const source: WideString; result: {??PSafeArray}OleVariant; 
                          lengthOfResult: Integer): Integer; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: _FileTracer
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DAB7F4DD-94CD-3667-A8EA-B0EE194CBAB7}
// *********************************************************************//
  _FileTracer = interface(IDispatch)
    ['{DAB7F4DD-94CD-3667-A8EA-B0EE194CBAB7}']
  end;

// *********************************************************************//
// DispIntf:  _FileTracerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DAB7F4DD-94CD-3667-A8EA-B0EE194CBAB7}
// *********************************************************************//
  _FileTracerDisp = dispinterface
    ['{DAB7F4DD-94CD-3667-A8EA-B0EE194CBAB7}']
  end;

// *********************************************************************//
// Interface: _SARecord
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9D465962-579B-3FFB-BA1B-BD02E6AEC32A}
// *********************************************************************//
  _SARecord = interface(IDispatch)
    ['{9D465962-579B-3FFB-BA1B-BD02E6AEC32A}']
  end;

// *********************************************************************//
// DispIntf:  _SARecordDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {9D465962-579B-3FFB-BA1B-BD02E6AEC32A}
// *********************************************************************//
  _SARecordDisp = dispinterface
    ['{9D465962-579B-3FFB-BA1B-BD02E6AEC32A}']
  end;

// *********************************************************************//
// Interface: _PluginContext
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {87DFB8C2-8E6D-3BC1-A786-3F9ED5F27EC8}
// *********************************************************************//
  _PluginContext = interface(IDispatch)
    ['{87DFB8C2-8E6D-3BC1-A786-3F9ED5F27EC8}']
  end;

// *********************************************************************//
// DispIntf:  _PluginContextDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {87DFB8C2-8E6D-3BC1-A786-3F9ED5F27EC8}
// *********************************************************************//
  _PluginContextDisp = dispinterface
    ['{87DFB8C2-8E6D-3BC1-A786-3F9ED5F27EC8}']
  end;

// *********************************************************************//
// Interface: _TraceSourceHelper
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3492B696-C11B-38EB-8750-D415AE700500}
// *********************************************************************//
  _TraceSourceHelper = interface(IDispatch)
    ['{3492B696-C11B-38EB-8750-D415AE700500}']
  end;

// *********************************************************************//
// DispIntf:  _TraceSourceHelperDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {3492B696-C11B-38EB-8750-D415AE700500}
// *********************************************************************//
  _TraceSourceHelperDisp = dispinterface
    ['{3492B696-C11B-38EB-8750-D415AE700500}']
  end;

// *********************************************************************//
// Interface: _LogHelper
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5BF24FCF-4CFC-3AE6-8423-42529EF8543D}
// *********************************************************************//
  _LogHelper = interface(IDispatch)
    ['{5BF24FCF-4CFC-3AE6-8423-42529EF8543D}']
  end;

// *********************************************************************//
// DispIntf:  _LogHelperDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5BF24FCF-4CFC-3AE6-8423-42529EF8543D}
// *********************************************************************//
  _LogHelperDisp = dispinterface
    ['{5BF24FCF-4CFC-3AE6-8423-42529EF8543D}']
  end;

// *********************************************************************//
// Interface: _PathsHelper
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {88C1315C-718D-3B8C-B805-559F95959565}
// *********************************************************************//
  _PathsHelper = interface(IDispatch)
    ['{88C1315C-718D-3B8C-B805-559F95959565}']
  end;

// *********************************************************************//
// DispIntf:  _PathsHelperDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {88C1315C-718D-3B8C-B805-559F95959565}
// *********************************************************************//
  _PathsHelperDisp = dispinterface
    ['{88C1315C-718D-3B8C-B805-559F95959565}']
  end;

// *********************************************************************//
// Interface: ILogHelper
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28D96E70-233B-3F26-94CE-A62D6F0284DA}
// *********************************************************************//
  ILogHelper = interface(IDispatch)
    ['{28D96E70-233B-3F26-94CE-A62D6F0284DA}']
    procedure Initialise(const path: WideString); safecall;
    procedure ClearLogs; safecall;
    procedure Flush; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILogHelperDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {28D96E70-233B-3F26-94CE-A62D6F0284DA}
// *********************************************************************//
  ILogHelperDisp = dispinterface
    ['{28D96E70-233B-3F26-94CE-A62D6F0284DA}']
    procedure Initialise(const path: WideString); dispid 1610743808;
    procedure ClearLogs; dispid 1610743809;
    procedure Flush; dispid 1610743810;
  end;

// *********************************************************************//
// The Class CoSAPacket provides a Create and CreateRemote method to          
// create instances of the default interface ISAPacket exposed by              
// the CoClass SAPacket. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSAPacket = class
    class function Create: ISAPacket;
    class function CreateRemote(const MachineName: string): ISAPacket;
  end;

// *********************************************************************//
// The Class CoStringConverter provides a Create and CreateRemote method to          
// create instances of the default interface IStringConverter exposed by              
// the CoClass StringConverter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStringConverter = class
    class function Create: IStringConverter;
    class function CreateRemote(const MachineName: string): IStringConverter;
  end;

// *********************************************************************//
// The Class CoConfirmOperationParameters provides a Create and CreateRemote method to          
// create instances of the default interface _ConfirmOperationParameters exposed by              
// the CoClass ConfirmOperationParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConfirmOperationParameters = class
    class function Create: _ConfirmOperationParameters;
    class function CreateRemote(const MachineName: string): _ConfirmOperationParameters;
  end;

// *********************************************************************//
// The Class CoConfirmOperationData provides a Create and CreateRemote method to          
// create instances of the default interface _ConfirmOperationData exposed by              
// the CoClass ConfirmOperationData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConfirmOperationData = class
    class function Create: _ConfirmOperationData;
    class function CreateRemote(const MachineName: string): _ConfirmOperationData;
  end;

// *********************************************************************//
// The Class CoDestructorDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _DestructorDelegate exposed by              
// the CoClass DestructorDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDestructorDelegate = class
    class function Create: _DestructorDelegate;
    class function CreateRemote(const MachineName: string): _DestructorDelegate;
  end;

// *********************************************************************//
// The Class CoDestructor_ provides a Create and CreateRemote method to          
// create instances of the default interface _Destructor exposed by              
// the CoClass Destructor_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDestructor_ = class
    class function Create: _Destructor;
    class function CreateRemote(const MachineName: string): _Destructor;
  end;

// *********************************************************************//
// The Class CoConfigParameters provides a Create and CreateRemote method to          
// create instances of the default interface _ConfigParameters exposed by              
// the CoClass ConfigParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConfigParameters = class
    class function Create: _ConfigParameters;
    class function CreateRemote(const MachineName: string): _ConfigParameters;
  end;

// *********************************************************************//
// The Class CoDeviceParameters provides a Create and CreateRemote method to          
// create instances of the default interface _DeviceParameters exposed by              
// the CoClass DeviceParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDeviceParameters = class
    class function Create: _DeviceParameters;
    class function CreateRemote(const MachineName: string): _DeviceParameters;
  end;

// *********************************************************************//
// The Class CoOutputParameters provides a Create and CreateRemote method to          
// create instances of the default interface _OutputParameters exposed by              
// the CoClass OutputParameters. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOutputParameters = class
    class function Create: _OutputParameters;
    class function CreateRemote(const MachineName: string): _OutputParameters;
  end;

// *********************************************************************//
// The Class CoDCLink provides a Create and CreateRemote method to          
// create instances of the default interface _DCLink exposed by              
// the CoClass DCLink. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDCLink = class
    class function Create: _DCLink;
    class function CreateRemote(const MachineName: string): _DCLink;
  end;

// *********************************************************************//
// The Class CoOnExchangeHandler provides a Create and CreateRemote method to          
// create instances of the default interface _OnExchangeHandler exposed by              
// the CoClass OnExchangeHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOnExchangeHandler = class
    class function Create: _OnExchangeHandler;
    class function CreateRemote(const MachineName: string): _OnExchangeHandler;
  end;

// *********************************************************************//
// The Class CoOnShowWindowHandler provides a Create and CreateRemote method to          
// create instances of the default interface _OnShowWindowHandler exposed by              
// the CoClass OnShowWindowHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOnShowWindowHandler = class
    class function Create: _OnShowWindowHandler;
    class function CreateRemote(const MachineName: string): _OnShowWindowHandler;
  end;

// *********************************************************************//
// The Class CoFileTracer provides a Create and CreateRemote method to          
// create instances of the default interface _FileTracer exposed by              
// the CoClass FileTracer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFileTracer = class
    class function Create: _FileTracer;
    class function CreateRemote(const MachineName: string): _FileTracer;
  end;

// *********************************************************************//
// The Class CoSARecord provides a Create and CreateRemote method to          
// create instances of the default interface _SARecord exposed by              
// the CoClass SARecord. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSARecord = class
    class function Create: _SARecord;
    class function CreateRemote(const MachineName: string): _SARecord;
  end;

// *********************************************************************//
// The Class CoPluginContext provides a Create and CreateRemote method to          
// create instances of the default interface _PluginContext exposed by              
// the CoClass PluginContext. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPluginContext = class
    class function Create: _PluginContext;
    class function CreateRemote(const MachineName: string): _PluginContext;
  end;

// *********************************************************************//
// The Class CoTraceSourceHelper provides a Create and CreateRemote method to          
// create instances of the default interface _TraceSourceHelper exposed by              
// the CoClass TraceSourceHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTraceSourceHelper = class
    class function Create: _TraceSourceHelper;
    class function CreateRemote(const MachineName: string): _TraceSourceHelper;
  end;

// *********************************************************************//
// The Class CoLogHelper provides a Create and CreateRemote method to          
// create instances of the default interface _LogHelper exposed by              
// the CoClass LogHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLogHelper = class
    class function Create: _LogHelper;
    class function CreateRemote(const MachineName: string): _LogHelper;
  end;

// *********************************************************************//
// The Class CoPathsHelper provides a Create and CreateRemote method to          
// create instances of the default interface _PathsHelper exposed by              
// the CoClass PathsHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPathsHelper = class
    class function Create: _PathsHelper;
    class function CreateRemote(const MachineName: string): _PathsHelper;
  end;

implementation

uses ComObj;

class function CoSAPacket.Create: ISAPacket;
begin
  Result := CreateComObject(CLASS_SAPacket) as ISAPacket;
end;

class function CoSAPacket.CreateRemote(const MachineName: string): ISAPacket;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SAPacket) as ISAPacket;
end;

class function CoStringConverter.Create: IStringConverter;
begin
  Result := CreateComObject(CLASS_StringConverter) as IStringConverter;
end;

class function CoStringConverter.CreateRemote(const MachineName: string): IStringConverter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StringConverter) as IStringConverter;
end;

class function CoConfirmOperationParameters.Create: _ConfirmOperationParameters;
begin
  Result := CreateComObject(CLASS_ConfirmOperationParameters) as _ConfirmOperationParameters;
end;

class function CoConfirmOperationParameters.CreateRemote(const MachineName: string): _ConfirmOperationParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConfirmOperationParameters) as _ConfirmOperationParameters;
end;

class function CoConfirmOperationData.Create: _ConfirmOperationData;
begin
  Result := CreateComObject(CLASS_ConfirmOperationData) as _ConfirmOperationData;
end;

class function CoConfirmOperationData.CreateRemote(const MachineName: string): _ConfirmOperationData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConfirmOperationData) as _ConfirmOperationData;
end;

class function CoDestructorDelegate.Create: _DestructorDelegate;
begin
  Result := CreateComObject(CLASS_DestructorDelegate) as _DestructorDelegate;
end;

class function CoDestructorDelegate.CreateRemote(const MachineName: string): _DestructorDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DestructorDelegate) as _DestructorDelegate;
end;

class function CoDestructor_.Create: _Destructor;
begin
  Result := CreateComObject(CLASS_Destructor_) as _Destructor;
end;

class function CoDestructor_.CreateRemote(const MachineName: string): _Destructor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Destructor_) as _Destructor;
end;

class function CoConfigParameters.Create: _ConfigParameters;
begin
  Result := CreateComObject(CLASS_ConfigParameters) as _ConfigParameters;
end;

class function CoConfigParameters.CreateRemote(const MachineName: string): _ConfigParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConfigParameters) as _ConfigParameters;
end;

class function CoDeviceParameters.Create: _DeviceParameters;
begin
  Result := CreateComObject(CLASS_DeviceParameters) as _DeviceParameters;
end;

class function CoDeviceParameters.CreateRemote(const MachineName: string): _DeviceParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DeviceParameters) as _DeviceParameters;
end;

class function CoOutputParameters.Create: _OutputParameters;
begin
  Result := CreateComObject(CLASS_OutputParameters) as _OutputParameters;
end;

class function CoOutputParameters.CreateRemote(const MachineName: string): _OutputParameters;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OutputParameters) as _OutputParameters;
end;

class function CoDCLink.Create: _DCLink;
begin
  Result := CreateComObject(CLASS_DCLink) as _DCLink;
end;

class function CoDCLink.CreateRemote(const MachineName: string): _DCLink;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DCLink) as _DCLink;
end;

class function CoOnExchangeHandler.Create: _OnExchangeHandler;
begin
  Result := CreateComObject(CLASS_OnExchangeHandler) as _OnExchangeHandler;
end;

class function CoOnExchangeHandler.CreateRemote(const MachineName: string): _OnExchangeHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OnExchangeHandler) as _OnExchangeHandler;
end;

class function CoOnShowWindowHandler.Create: _OnShowWindowHandler;
begin
  Result := CreateComObject(CLASS_OnShowWindowHandler) as _OnShowWindowHandler;
end;

class function CoOnShowWindowHandler.CreateRemote(const MachineName: string): _OnShowWindowHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OnShowWindowHandler) as _OnShowWindowHandler;
end;

class function CoFileTracer.Create: _FileTracer;
begin
  Result := CreateComObject(CLASS_FileTracer) as _FileTracer;
end;

class function CoFileTracer.CreateRemote(const MachineName: string): _FileTracer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FileTracer) as _FileTracer;
end;

class function CoSARecord.Create: _SARecord;
begin
  Result := CreateComObject(CLASS_SARecord) as _SARecord;
end;

class function CoSARecord.CreateRemote(const MachineName: string): _SARecord;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SARecord) as _SARecord;
end;

class function CoPluginContext.Create: _PluginContext;
begin
  Result := CreateComObject(CLASS_PluginContext) as _PluginContext;
end;

class function CoPluginContext.CreateRemote(const MachineName: string): _PluginContext;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PluginContext) as _PluginContext;
end;

class function CoTraceSourceHelper.Create: _TraceSourceHelper;
begin
  Result := CreateComObject(CLASS_TraceSourceHelper) as _TraceSourceHelper;
end;

class function CoTraceSourceHelper.CreateRemote(const MachineName: string): _TraceSourceHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TraceSourceHelper) as _TraceSourceHelper;
end;

class function CoLogHelper.Create: _LogHelper;
begin
  Result := CreateComObject(CLASS_LogHelper) as _LogHelper;
end;

class function CoLogHelper.CreateRemote(const MachineName: string): _LogHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LogHelper) as _LogHelper;
end;

class function CoPathsHelper.Create: _PathsHelper;
begin
  Result := CreateComObject(CLASS_PathsHelper) as _PathsHelper;
end;

class function CoPathsHelper.CreateRemote(const MachineName: string): _PathsHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PathsHelper) as _PathsHelper;
end;

end.
