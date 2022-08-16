table 50141 "CSD My Seminars"
{
    DataClassification = ToBeClassified;
    Caption = 'My Seminars';

    fields
    {
        field(10; "User ID"; Code[50])
        {
            TableRelation = User;
            Caption = 'User ID';
            DataClassification = ToBeClassified;
        }
        field(20; "Seminar No."; Code[20])
        {
            TableRelation = "CSD Seminar";
            Caption = 'Seminar No.';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "User ID", "Seminar No.")
        {
            Clustered = true;
        }
    }


}