pageextension 50101 "CYN Customer Card" extends "Customer Card"
{
    layout
    {
        Modify(Address)
        {
            trigger OnBeforeValidate();
            var
                Publisher: Codeunit "CYN My Publisher";
            begin
                Publisher.OnAddressLineChanged(Address);
            end;
        }
    }


}