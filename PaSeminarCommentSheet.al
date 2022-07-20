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
                field(Date; Date)
                {
                    ApplicationArea = all;
                }
                field(Code; Code)
                {
                    Visible = false;
                    ApplicationArea = all;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = all;
                }
            }
        }

    }


}