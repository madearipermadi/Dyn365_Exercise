tableextension 50100 "CYN Item Table Extension" extends "Item"
{
    fields
    {
        field(50100; "Control Sample Quantity"; Decimal)
        {
            Editable = false;
        }

        field(50200; "Qty. at POS"; Decimal)
        {
            Editable = false;
        }
    }

    var
        myInt: Integer;
}

table 50100 Reward
{
    fields
    {
        // The "Reward ID" field represents the unique identifier 
        // of the reward and can contain up to 30 Code characters. 
        field(1; "Reward ID"; Code[30])
        {
        }

        // The "Description" field can contain a string 
        // with up to 250 characters.
        field(2; Description; Text[250])
        {
            // This property specified that 
            // this field cannot be left empty.
            NotBlank = true;
        }

        // The "Discount Percentage" field is a Decimal numeric value
        // that represents the discount that will 
        // be applied for this reward.
        field(3; "Discount Percentage"; Decimal)
        {
            // The "MinValue" property sets the minimum value for the "Discount Percentage" 
            // field.
            MinValue = 0;

            // The "MaxValue" property sets the maximum value for the "Discount Percentage"
            // field.
            MaxValue = 100;

            // The "DecimalPlaces" property is set to 2 to display discount values with  
            // exactly 2 decimals.
            DecimalPlaces = 2;
        }
    }

    keys
    {
        // The field "Reward ID" is used as the primary key of this table.
        key(PK; "Reward ID")
        {
            // Create a clustered index from this key.
            Clustered = true;
        }
    }
}
