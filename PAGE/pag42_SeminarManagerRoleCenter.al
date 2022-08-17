page 50142 "CSD Seminar Manager RoleCenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;
    // SourceTable = TableName;
    Caption = 'Seminar Manager RoleCenter';

    layout
    {
        area(RoleCenter)
        {
            group(Column1)
            {
                part("Activities"; "CSD Seminar Manager Activities")
                {
                    ApplicationArea = all;
                    Caption = 'Activities';
                }
                part("My Seminars"; "CSD My Seminar")
                {
                    ApplicationArea = all;
                    Caption = 'My Seminar';
                }
            }
            group(Column2)
            {
                Visible = true;
                part("MyCustomers"; "My Customers")
                {
                    ApplicationArea = all;
                    Caption = 'My Customers';
                }
                systempart("MyNotes"; MyNotes)
                {
                    ApplicationArea = all;
                    Caption = 'My Notes';
                }
                part("ReportInbox"; "Report Inbox Part")
                {
                    ApplicationArea = all;
                    Caption = 'Report Inbox Part';
                }
            }
        }
    }

    actions
    {
        area(Embedding)
        {
            action(SeminarRegistrations)
            {
                Caption = 'Seminar Registrations';
                Image = List;
                RunObject = page "CSD Posted Seminar Reg. List";
                ToolTip = 'Create Seminar Registrations';
                ApplicationArea = all;
            }
            action(Seminars)
            {
                Caption = 'Seminars';
                Image = List;
                RunObject = page "CSD Seminar List";
                ToolTip = 'View all seminars';
                ApplicationArea = all;
            }
            action(Instructors)
            {
                Caption = 'Instructors';
                RunObject = page "Resource List";
                RunPageView = where(Type = const(Person));
                ToolTip = 'View all resources registers as persons';
                ApplicationArea = all;
            }
            action(Room)
            {
                Caption = 'Rooms';
                RunObject = page "Resource List";
                RunPageView = where(Type = const(Machine));
                ToolTip = 'View all resources registers as machines';
                ApplicationArea = all;
            }
            action("Sales Invoices")
            {
                Caption = 'Sales Invoices';
                ApplicationArea = Basic, Suite;
                Image = Invoice;
                RunObject = page "Sales Invoice List";
                ToolTip = 'Register your sales to customers';

            }
            action("Sales Credit Memos")
            {
                Caption = 'Sales Credit Memos';
                RunObject = page "Sales Credit Memos";
                ToolTip = 'Revert the financial transactions involved when your customers want to cancel a purchase';
                ApplicationArea = all;
            }
            action(Customers)
            {
                Caption = 'Customers';
                Image = Customer;
                RunObject = page "Customer List";
                ToolTip = 'View or edit detailed information for the customers that you trade with';
                ApplicationArea = all;
            }
        }
        area(Sections)
        {
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                ToolTip = 'View history for sales, shipments and inventory';

                action("Posted Seminar Registration")
                {
                    Caption = 'Posted Seminar Registration';
                    Image = Timesheet;
                    RunObject = page "CSD Posted Seminar Reg. List";
                    ToolTip = 'Open the list of posted registrations';
                    ApplicationArea = all;
                }
                action("Posted Sales Invoices")
                {
                    Caption = 'Posted Sales Invoices';
                    Image = PostedOrder;
                    RunObject = page "Posted Sales Invoices";
                    ToolTip = 'Open the list of posted sales invoices';
                    ApplicationArea = all;
                }
                action("Posted Sales Credit Memos")
                {
                    Caption = 'Posted Sales Credit Memos';
                    Image = PostedOrder;
                    RunObject = page "Posted Sales Credit Memos";
                    ToolTip = 'Open the list of posted sales credit memos';
                    ApplicationArea = all;
                }
                action(Registers)
                {
                    Caption = 'Seminar Registers';
                    Image = PostedShipment;
                    RunObject = page "CSD Seminar Registers";
                    ToolTip = 'Open the list of seminar registers';
                    ApplicationArea = all;
                }
            }

        }
        area(Creation)
        {
            action(NewSeminarRegistration)
            {
                Caption = 'Seminar Registration';
                Image = NewTimesheet;
                RunObject = page "CSD Seminar Registration";
                RunPageMode = Create;
                ApplicationArea = all;
            }
            action(NewSalesInvoice)
            {
                Caption = 'Sales Invoice';
                Image = NewSalesInvoice;
                RunObject = page "Sales Invoice";
                RunPageMode = Create;
                ApplicationArea = all;
            }
        }
        area(Processing)
        {
            action(CreateInvoices)
            {
                Caption = 'Create Invoices';
                Image = CreateJobSalesInvoice;
                RunObject = report "CSD Create Seminar Invoices";
                ApplicationArea = all;
            }
            action(Navigate)
            {
                Caption = 'Navigate';
                Image = Navigate;
                RunObject = page Navigate;
                RunPageMode = Edit;
                ApplicationArea = all;
            }
        }
    }


}