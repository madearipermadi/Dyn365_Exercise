report 50100 "Reward List Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'RewardListReport.rdl';
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