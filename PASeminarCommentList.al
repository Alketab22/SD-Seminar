page 50110 "CSD Seminar Comment List"
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
                field(Date; Date)
                {
                    ApplicationArea = all;
                }
                field(Code; Code)
                {
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