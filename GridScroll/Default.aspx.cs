using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridScroll
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var comments = new List<Comment>(){
        new Comment{CreatedDate=DateTime.Now, UserID="John.Jones", CommentText="This request has been approved"},
        new Comment{CreatedDate=DateTime.Now.AddDays(-1), UserID="John.Jones", CommentText="The value is incorrect"},
        new Comment{CreatedDate=DateTime.Now.AddDays(-2), UserID="Phil.Peters", CommentText="Please confirm the quantity required"},
        new Comment{CreatedDate=DateTime.Now.AddDays(-3), UserID="Merry.Berry", CommentText="The request has been amended"},
        new Comment{CreatedDate=DateTime.Now.AddDays(-4), UserID="Peter.Piper", CommentText="Rejected at level 1"},
        new Comment{CreatedDate=DateTime.Now.AddDays(-5), UserID="Fred.Flinstone", CommentText="Initial Submission"}
    };
            CommentsGrid.DataSource = comments;
            CommentsGrid.DataBind();
        }
    }
}