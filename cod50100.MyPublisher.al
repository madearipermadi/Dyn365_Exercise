codeunit 50100 "CYN My Publisher"
{

    [IntegrationEvent(false, false)]
    procedure OnAddressLineChanged(Line: Text[100])
    begin
        
        Message('coba'); 
        Message('Ari');

        test123

    end;

}