Подключение к проекту
____
```Pascal
uses DualConnector_TLB
```
```Pascal
public
  TerminalID:String;
  dclink : _DCLink;
  res:Integer;
```
Пример функции подключения
____
```Pascal
function Connect: boolean;
var
query, response:ISAPacket;
begin
 Result := false;
 dclink:=CoDCLink.Create;
 response:=CoSAPacket.Create;
 query:=CoSAPacket.Create;
 query.OperationCode := 26;
 res := dclink.InitResources;
 if res <> 0 then begin
     ShowMessage(Format('%d %s, ', [res, dclink.ErrorDescription]));
     Finalize(query);
     Finalize(response);
     exit;
 end
  else begin
    res := dclink.Exchange(query, response, 180000);
    if res <> 0 then begin
      ShowMessage(Format('%d %s, ', [res, dclink.ErrorDescription]));
     Finalize(query);
     Finalize(response);
     exit;
    end;
  end;
 Result := true;
 TerminalID:= response.TerminalID;
 Finalize(query);
 Finalize(response);
end;
```
Функция отключения
____
```Pascal
function Disconnect: boolean;
begin
 dclink.FreeResources;
end;
```

Пример функции оплаты
____
```Pascal
function Pay(pSumma: Currency; bankDocNum: string)
  : boolean;
var
  query, response:ISAPacket;
begin
   Result := false;
     try
          response:=CoSAPacket.Create;
          query:=CoSAPacket.Create;
          query.Amount:=CurrToStr(pSumma * 100);
          query.CurrencyCode := '643';
          query.OperationCode := 1;
          query.TerminalId := TerminalId;
          res := dclink.Exchange(query, response, 180000);
            if (res <> 0) or (response.Status<>1) then begin
              ShowMessage(Format('%d %s, ', [res, dclink.ErrorDescription]));
              Finalize(query);
              Finalize(response);
              exit;
            end;
          bankDocNum := response.ReferenceNumber;
          Result := true;
        except
         Finalize(query);
         Finalize(response);
       end;
     Finalize(query);
     Finalize(response);
end;
```

Пример функции возврата
____
```Pascal
function TINPASPOS.Refund(pSumma: Currency; bankDocNum: string): boolean;
var
query, response:ISAPacket;
begin
Result:=false;
  try
    response:=CoSAPacket.Create;
    query:=CoSAPacket.Create;
    query.Amount:=CurrToStr(pSumma * 100);
    query.CurrencyCode := '643';
    query.OperationCode := 29;
    query.TerminalId := TerminalId;
    query.ReferenceNumber:=bankDocNum;
    res := dclink.Exchange(query, response, 180000);
      if (res <> 0) or (response.Status<>1) then begin
              ShowMessage(Format('%d %s, ', [res, dclink.ErrorDescription]));
              Finalize(query);
              Finalize(response);
              exit;
            end;
     Result:=true;
  except
    Finalize(query);
    Finalize(response);
  end;
   Finalize(query);
   Finalize(response);
end;
```
