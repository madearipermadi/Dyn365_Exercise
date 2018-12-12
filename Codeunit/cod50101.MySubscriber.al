codeunit 50101 "CYN MY Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CYN My Publisher", 'OnAddressLineChanged', '', true, true)]
    local procedure CheckAddressLine(line: Text[100])
    begin
        if (STRPOS(line, '+') > 0) then begin
            MESSAGE('Please try 2use a aa plus sign (+) in the address [' + line + ']');
        end;
    end;

}
