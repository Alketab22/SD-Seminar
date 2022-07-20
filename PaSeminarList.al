page 50104 "CSD Seminar List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "CSD Seminarr";
    Caption = 'Seminar List';
    Editable = false;
    CardPageId = 50105;
    layout
    {
        area(Content)
        {
            repeater(group)
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