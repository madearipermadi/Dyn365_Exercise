page 50102 "CYN Reward List"
{
    Caption = 'Reward List';
    PageType = List;
    SourceTable = "CYN Reward";
    CardPageId = "CYN Reward Card";
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Reward ID"; "Reward ID")
                {
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Reward List Report")
            {
                ApplicationArea = All;


                trigger OnAction();
                begin
                    Report.Run(Report::"CYN Reward List Report");
                end;
            }
        }
    }
}