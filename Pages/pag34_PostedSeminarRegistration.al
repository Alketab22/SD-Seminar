page 50134 "CSD Posted Seminar Reg."
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3
    //     - Created new page

    Caption = 'Seminar Registration';
    Editable = false;
    PageType = Document;
    SourceTable = 50118;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                }
                field("Starting Date"; Rec."Starting Date")
                {
                }
                field("Seminar No."; Rec."Seminar No.")
                {
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                }
                field("Instructor Resource No."; Rec."Instructor Resource No.")
                {
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                }
                field("Posting Date"; Rec."Posting Date")
                {
                }
                field("Document Date"; Rec."Document Date")
                {
                }
                field("Status"; Rec."Status")
                {
                }
                field("Duration"; Rec."Duration")
                {
                }
                field("Minimum Participants"; Rec."Minimum Participants")
                {
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                }
            }
            part(SeminarRegistrationLines; 50135)
            {
                SubPageLink = "Document No." = Field("No. Series");
            }
            group("Seminar Room")
            {
                field("Room Resource No."; Rec."Room Resource No.")
                {
                }
                field("Room Name"; Rec."Room Name")
                {
                }
                field("Room Address"; Rec."Room Address")
                {
                }
                field("Room Address 2"; Rec."Room Address 2")
                {
                }
                field("Room Post Code"; Rec."Room Post Code")
                {
                }
                field("Room City"; Rec."Room City")
                {
                }
                field("Room Country/Reg. Code"; Rec."Room Country/Reg. Code")
                {
                }
                field("Room County"; Rec."Room County")
                {
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                }
            }
        }
        area(factboxes)
        {
            part("50117"; 50117)
            {
                SubPageLink = "No." = Field("Seminar No.");
            }
            part("9084"; 9084)
            {
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = Field("Bill-to Customer No.");
            }
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
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = page 50108;
                    RunPageLink = "No." = Field("No.");
                    RunPageView = where("Document Type" = const("Posted Seminar Registration"));

                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 50138;
                    RunPageLink = "Document No." = Field("No.");
                }
            }
        }
    }
}
