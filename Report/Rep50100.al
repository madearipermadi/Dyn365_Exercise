report 50100 "CYN Reward List Report"
{
    Caption = 'Reward List Report';
    DefaultLayout = RDLC;
    RDLCLayout = 'RDL\RewardListReport.rdl';
    UsageCategory = Administration;
    ApplicationArea = All;

    dataset
    {
        dataitem(DataItemName; "CYN Reward")
        {
            column(Reward_ID; "Reward ID")
            {

            }

            column(Description; "Description")
            {


            }
        }
    }
}