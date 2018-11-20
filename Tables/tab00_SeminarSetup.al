table 50100 "CSD Seminar Setup"
{
    DataClassification = SystemMetadata;

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(20; "Seminar Nos."; Code[20])
        {
            Caption = 'Seminar Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(30; "Seminar Registration Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(40; "Posted Seminar Reg. Nos."; Code[20])
        {
            Caption = 'Posted Seminar Registration Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }


    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}