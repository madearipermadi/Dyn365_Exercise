page 50114 "CYN AirplaneModel Entity"
{
    PageType = API;
    Caption = 'airplaneModels';
    APIVersion = 'beta';
    EntityName = 'airplaneModel';
    EntitySetName = 'airplaneModels';
    SourceTable = "CYN Air Plane Model";
    DelayedInsert = true;
    ODataKeyFields = Id;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Id)
                {
                    Caption = 'Id';
                    ApplicationArea = All;
                }
                field(icaoCode; "ICA Code")
                {
                    Caption = 'icaoCode';
                    ApplicationArea = All;
                }
                field(description; Description)
                {
                    Caption = 'description';
                    ApplicationArea = All;
                }

            }
        }
    }
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        Insert(true);

        Modify(true);
        exit(false);
    end;

    trigger OnModifyRecord(): Boolean
    var
        AirplaneModel: Record "CYN Air Plane Model";
    begin
        AirplaneModel.SETRANGE(Id, Id);
        AirplaneModel.FINDFIRST;

        IF "ICA Code" <> AirplaneModel."ICA Code" THEN BEGIN
            AirplaneModel.TRANSFERFIELDS(Rec, FALSE);
            AirplaneModel.RENAME("ICA Code");
            TRANSFERFIELDS(AirplaneModel);
        END;
    end;
}