page 50110 "CSD Seminar Comment List"
{
    PageType = List;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment List';
    Editable = false;

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

                }
                field(Comment; Comment)
                {

                }
            }

        }

    }


}