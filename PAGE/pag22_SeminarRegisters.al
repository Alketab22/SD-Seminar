page 50122 "CSD Seminar Registers"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar Register";
    Caption = 'Seminar Registers';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                    Caption = 'No.';
                }
                field("Creation Date"; Rec."Creation Date")
                {
                    ApplicationArea = all;
                    Caption = 'Creation Date';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = all;
                    Caption = 'User ID';
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = all;
                    Caption = 'Soure code';
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ApplicationArea = all;
                    Caption = 'Journal Batch Name';
                }
            }
        }


        area(Factboxes)
        {
            systempart("Links"; Links)
            {
                ApplicationArea = all;
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = all;
            }

        }
    }

    actions
    {
        area(Navigation)
        {
            action("Seminar Ledgers")
            {
                ApplicationArea = All;
                Image = WarrantyLedger;
                RunObject = codeunit "CSD Seminar Reg.-Show Ledger";

                trigger OnAction();
                begin

                end;
            }
        }
    }
}