![Show off](https://user-images.githubusercontent.com/107455395/197194986-9a91d51d-13c0-45e6-aa25-fcdb4711e670.JPG)

# DocumentsStoredApplication
Application responsible for CRUD operations on stored documents.


# General Information
 In order to succesfully open this project User must have .NET 6 package installed as this release does not contain it due to GitHub 100 mb limit.
 Database MUST consists of two tables "clients" and "operations".
 
 clients table is required to have three columns "client_id" , "operation_date" , "DocumentName"
 operations is required to have five columns "ProductName" , "Ammount" , "NetPrice" , "GrossPrice , "client_id"

(Sample of required tables is located in tables.sql inside Tables folder)
 
Current project consists of 4 features (CRUD) mentioned above and ability to add desired Client.
NetTotal and GrossTotal auto updates within any new user insertion.

# Interaction guide
 In order to launch Application user should exctract downloaded files into desired folder and then open WinFormsDataManage.exe located in Application folder.

 Application User must first enter Connection string in order to access tables of given DataBase and then proceed with pressing OK Button.
 Connectionstring is saved in Settings folder which is located in main directory User wont be prompted to enter connection string again.
 
 In order to get desired table data User must interact with LoadData submenu and then provide client id.
 Then window will close down and all records belonging to that client id  will appear.

 User can Add row to selected table by pressing ADD ROW Button after which he is prompted to enter desired information.
 User wont be able to proceed without filling out a form completely.
  
 User can delete row of given table by clicking anywhere onto desired row and then pressing DELETE ROW button.
 Data is deleted pernamently.
 
 User can change values of the table and they will be auto saved afterwards

 User can create his own Client by interacting with Add Client submenu item.

