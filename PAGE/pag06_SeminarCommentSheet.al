page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';
    ApplicationArea = all;
    UsageCategory = Lists;
    AutoSplitKey = true;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Rec.Date)
                {
                    ApplicationArea = all;
                }
                field(Code; Rec.Code)
                {
                    Visible = false;
                    ApplicationArea = all;
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = all;
                }
            }
        }

    }
    trigger OnNewRecord(BelowxRec: Boolean)

    begin
        Rec.SetupNewLine();
    end;

}