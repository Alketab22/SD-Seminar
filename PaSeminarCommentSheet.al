page 50109 "CSD Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';
    ApplicationArea = all;
    UsageCategory = Lists;
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


}