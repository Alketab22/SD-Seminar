page 50141 "CSD My Seminar"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD My Seminars";
    Caption = 'My Seminar';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Seminar No."; Rec."Seminar No.")
                {
                    ApplicationArea = All;
                    Caption = 'Seminar No.';
                }
                field(Name; Seminar.Name)
                {
                    ApplicationArea = all;
                    Caption = 'Seminar Name';
                }
                field(Duration; Seminar."Seminar Duration")
                {
                    ApplicationArea = all;
                    Caption = 'Seminar Duration';
                }
                field(Price; Seminar."Seminar Price")
                {
                    ApplicationArea = all;
                    Caption = 'Seminar Price';
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Open)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    OpenSeminarCard();
                end;
            }
        }
    }
    var
        Seminar: Record "CSD Seminar";

    trigger OnOpenPage()

    begin
        Rec.SetRange("User ID", UserId);
    end;

    trigger OnAfterGetRecord()

    begin
        if Seminar.Get(Rec."Seminar No.") then;
    end;

    trigger OnNewRecord(BelowxRec: Boolean);

    begin
        Clear(Seminar);
    end;

    local procedure OpenSeminarCard();

    begin
        if Seminar."No." <> '' then
            Page.Run(Page::"CSD Seminar Card", Seminar);
    end;
}