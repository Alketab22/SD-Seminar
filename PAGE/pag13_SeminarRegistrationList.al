page 50113 "CSD Seminar Registration List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Seminar Registration List';
    CardPageID = "CSD Seminar Registration";
    Editable = false;
    PageType = List;
    SourceTable = "CSD Seminar Reg. Header";
    UsageCategory = lists;
    // ApplicationArea = all;

    layout
    {
        area(content)
        {
            repeater("Group")
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = all;
                }
                field("Seminar No."; Rec."Seminar No.")
                {
                    ApplicationArea = all;
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                    ApplicationArea = all;
                }
                field("Status"; Rec."Status")
                {
                    ApplicationArea = all;
                }

                field("Duration"; Rec."Duration")
                {
                    ApplicationArea = all;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = all;
                }
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(factboxes)
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
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {


                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50106;
                    RunPageLink = "No." = field("No.");
                    RunPageView = where("Table Name" = const("Seminar Registration Header"));

                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50124;
                    RunPageLink = "Document No." = Field("No.");
                }
                action("&Post")
                {
                    Caption = '&Post';
                    Image = PostDocument;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    ShortcutKey = F9;
                    RunObject = codeunit "CSD Seminar-Post (Yes/No)";
                }
            }
        }
    }
}

