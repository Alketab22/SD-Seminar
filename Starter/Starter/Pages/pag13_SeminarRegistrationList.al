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
    ApplicationArea = all;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; xRec."No.")
                {
                    ApplicationArea = all;
                }
                field("Starting Date"; xRec."Starting Date")
                {
                    ApplicationArea = all;
                }
                field("Seminar No."; xRec."Seminar No.")
                {
                    ApplicationArea = all;
                }
                field("Seminar Name"; xRec."Seminar Name")
                {
                    ApplicationArea = all;
                }
                field(Status; xRec.Status)
                {
                    ApplicationArea = all;
                }

                field("Duration"; xRec."Duration")
                {
                    ApplicationArea = all;
                }
                field("Maximum Participants"; xRec."Maximum Participants")
                {
                    ApplicationArea = all;
                }
                field("Room Resource No."; xRec."Room Resource No.")
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
                    /*
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50106;
                    RunPageLink = "No."=Field("No.");
                    RunPageView = where("Table Name"=Const("Seminar Registration"));
                    */
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 50121;
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
            }
        }
    }
}

