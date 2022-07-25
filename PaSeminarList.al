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
                field("No."; xRec."No.")
                {
                    ApplicationArea = all;
                }
                field(Name; xRec.Name)
                {
                    ApplicationArea = all;
                }
                field("Seminar Duration"; xRec."Seminar Duration")
                {
                    ApplicationArea = all;
                }
                field("Seminar Price"; xRec."Seminar Price")
   
                {
                    ApplicationArea = all;
                }
                field("Maximum participants"; xRec."Maximum participants")
                {
                    ApplicationArea = all;
                }
                field("Minimum participants"; xRec."Minimum participants")
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