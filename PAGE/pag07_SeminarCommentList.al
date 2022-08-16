page 50107 "CSD Seminar Comment List"
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
                field(Date; Rec.Date)
                {
                    ApplicationArea = all;
                }
                field(Code; Rec.Code)
                {
                    ApplicationArea = all;
                }
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = all;
                }
            }

        }

    }


}