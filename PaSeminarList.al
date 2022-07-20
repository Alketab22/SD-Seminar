page 50104 "CSD Seminar List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "CSD Seminarr";
    Caption = 'Seminar List';
    Editable = false;
    CardPageId = 50106;
    ApplicationArea = all;
    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = all;
                }
                field(Name; Name)
                {
                    ApplicationArea = all;
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = all;
                }
                field("Seminar Price"; "Seminar Price")
                {
                    ApplicationArea = all;
                }
                field("Maximum participants"; "Maximum participants")
                {
                    ApplicationArea = all;
                }
                field("Minimum participants"; "Minimum participants")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(FactBoxes)
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
            group("&Seminar")
            {
                action("Co&mment")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar),
                    "No." = field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }

            }
        }
    }

}