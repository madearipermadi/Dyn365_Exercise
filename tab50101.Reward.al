table 50101 "CYN Reward"
{
    Caption = 'Reward';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Reward ID"; code[30])
        {
        }

        field(2; "Description"; Text[250])
        {
            NotBlank = false;
        }

        field(3; "Discount Percentage"; Decimal)
        {
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;

        }

        field(4; "Minimum Purchase"; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 2;
        }

        field(5; "Last Modified Date"; Date)
        {
            Editable = false;
        }

        field(6; "Modifed By"; Code[50])
        {

        }
    }

    keys
    {
        key(PK; "Reward ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin
        SetLastDateModifiedDate();
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    local procedure SetLastDateModifiedDate();
    begin
        Rec."Last Modified Date" := Today();
    end;


}