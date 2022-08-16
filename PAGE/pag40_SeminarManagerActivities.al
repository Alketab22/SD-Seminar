page 50140 "CSD Seminar Manager Activities"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Cue";
    Caption = 'Seminar Manager Activities';
    Editable = false;

    layout
    {
        area(Content)
        {
            cuegroup("Registrations")
            {
                Caption = 'Registrations';
                field(Planned; Rec.Planned)
                {
                    ApplicationArea = All;
                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = all;
                }
                actions
                {
                    action("New")
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }

                }
            }
            cuegroup("For Posting")
            {
                field(Closed; Rec.Closed)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnOpenPage()

    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Reset();
        end;
    end;
}