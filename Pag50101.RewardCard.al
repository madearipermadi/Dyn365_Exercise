page 50101 "CYN Reward Card"
{
    // The page will be of type "Card" and it will be displayed in the characteristic manner.
    PageType = Card;
    Caption = 'Reward Card';

    // The source table shows data from the "Reward" table.
    SourceTable = "CYN Reward";

    // The layout describes the visual parts on the page.
    layout
    {
        area(content)
        {
            group(Reward)
            {
                field("Reward Id"; "Reward ID")
                {
                    // ApplicationArea sets the application area that 
                    // applies to the page field and action controls. 
                    // Setting the property to All means that the control 
                    // will always appear in the user interface.
                    ApplicationArea = All;
                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}