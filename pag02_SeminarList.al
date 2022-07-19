page 50107 "CSD Seminar List"
{
    PageType = List;

    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    Caption = '';
    Editable = false;
    CardPageId = 50106;
    layout
    {
        area(Content)
        {
            group(Repeater)
            {
                field("No."; "No.")
                {

                }
                field(Name; Name)
                {

                }
                field("Seminar Duration"; "Seminar Duration")
                {

                }
                field("Seminar Price"; "Seminar Price")
                {

                }
                field("Maximum participants"; "Maximum participants")
                {

                }
                field("Minimum participants"; "Minimum participants")
                {

                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

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