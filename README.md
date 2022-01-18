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
Пример функции Подключения
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
Функция Отключения
____
```Pascal
function Disconnect: boolean;
begin
 dclink.FreeResources;
end;
```

Пример функции Оплаты
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

Пример функции Возврата
____
```Pascal
function Refund(pSumma: Currency; bankDocNum: string): boolean;
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
Пример функции Сверка итогов
____
```Pascal
function CloseDay : boolean;
var
   query, response:ISAPacket;
begin
  Result := false;
  try
    response:=CoSAPacket.Create;
    query:=CoSAPacket.Create;
    Result := true;
    query.OperationCode := 59;
    res := dclink.Exchange(query, response, 180000);
    if res <> 0 then
    begin
     ShowMessage(Format('%d %s, ', [res, dclink.ErrorDescription]));
     Finalize(query);
     Finalize(response);
     exit;
    end;
  except
    Result := false;
  end;
end;
```
