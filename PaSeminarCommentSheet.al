page 50109 "CSD Seminar Comment Sheet"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {

                }
                field(Code; Code)
                {
                    Visible = false;
                }
                field(Comment; Comment)
                {

                }
            }
        }

    }


}