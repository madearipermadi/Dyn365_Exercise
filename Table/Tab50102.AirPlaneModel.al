table 50102 "CYN Air Plane Model"
{
    Caption = 'Air Plane Model';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "ICA Code"; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(20; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(30; "Popularity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(40; "Id"; Guid)
        {
            DataClassification = ToBeClassified;
        }

        field(60; "Airlines"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        
        field(40; "Kode Mesin"; Text)
        {

        }
        
         field(90; "Umur Pesawat"; Decimal)
        {

        }

        field(50; "Kode Penerbangan"; Text)
        {

        }
        
        field(100; "Harga"; Decimal)
        {

        }
    }

    keys
    {
        key(PK; "ICA Code")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin
        Id := CreateGuid();
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
