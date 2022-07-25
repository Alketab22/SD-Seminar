page 50119 "CSD Seminar Comment List"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment List';
    Editable = false;
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