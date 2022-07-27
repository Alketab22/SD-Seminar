page 50121 "CSD Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';

    UsageCategory = Lists;
    AutoSplitKey = true;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; xRec.Date)
                {
                    ApplicationArea = all;
                }
                field(Code; xRec.Code)
                {
                    Visible = false;
                    ApplicationArea = all;
                }
                field(Comment; xRec.Comment)
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