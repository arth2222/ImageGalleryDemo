using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ImageGalleryDemo
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetImages();
        }

        private void GetImages()
        {
            //get the path where the files are
            string imagesPath = Server.MapPath("~/images");
            var imagesFolder = new DirectoryInfo(imagesPath);

            FileInfo[] files = imagesFolder.GetFiles();//get all the files from the folder
            //we only need the file name to make an url, so we need to add "images/" in front of all the names
            List<string> urls = new List<string>();
            foreach (FileInfo f in files)
                urls.Add("images/" + f.Name);

            Repeater.DataSource = urls;
            Repeater.DataBind();

            DataList1.DataSource = urls;
            DataList1.DataBind();
        }
    }
}