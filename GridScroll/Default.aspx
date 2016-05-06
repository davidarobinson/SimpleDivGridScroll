<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridScroll.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <style>
        .comments-container {
            display: inline;
            width: 750px;
            left: 170px;
            position: relative;
        }

        .comments-header-container {
            height: 20px;
            width: 600px;
            margin: 0 !important;
            padding: 0;
        }

        .comments-header {
            font-family: Arial;
            font-size: 10pt;
            width: 700px;
            color: white;
            border-collapse: collapse;
            height: 100%;
        }

        .comments-grid-container {
            height: 75px;
            width: 717px;
            overflow-y: scroll;
            overflow-x: hidden;
        }

        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class="comments-container ">
            <div class="comments-header-container">
                <table rules="all" border="1" id="tblHeader"
                    class="comments-header">
                    <tr>
                        <td style="width: 150px; text-align: center; color: black">Date</td>
                        <td style="width: 150px; text-align: center; color: black">User</td>
                        <td style="width: 400px; text-align: center; color: black">Comment</td>
                    </tr>
                </table>
            </div>
            <div class="comments-grid-container ui-widget-content">
                <asp:GridView ID="CommentsGrid" runat="server" AutoGenerateColumns="False" ClientIDMode="Static"
                    EmptyDataText="There are no comments to display." RowStyle-VerticalAlign="Top"
                    HeaderStyle-CssClass="hidden" GridLines="None">
                    <AlternatingRowStyle BackColor="#EEEEEE" />
                    <Columns>
                        <asp:BoundField ItemStyle-Width="150px" DataField="CreatedDate">
                            <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField ItemStyle-Width="150px" DataField="UserId">
                            <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField ItemStyle-Width="400px" DataField="CommentText">
                            <ItemStyle Width="400px"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js" type="text/javascript"></script> 
     <script type="text/javascript">
         $(".comments-grid-container").resizable({
             maxHeight: 300,
             maxWidth: 717,
             minHeight: 75,
             minWidth: 717
         });

    </script>
</body>
</html>
