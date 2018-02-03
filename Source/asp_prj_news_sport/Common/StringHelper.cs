using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;

namespace CommonPublic
{
    public static class StringHelper
    {
        public static string ToUnsignString(string input)
        {
            input = input.Trim();
            input = input.ToLower();
            for (int i = 0x20; i < 0x30; i++)
            {
                input = input.Replace(((char)i).ToString(), " ");
            }
            input = input.Replace(".", "-");
            input = input.Replace(" ", "-");
            input = input.Replace(",", "-");
            input = input.Replace(";", "-");
            input = input.Replace(":", "-");
            input = input.Replace("  ", "-");
            Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
            string str = input.Normalize(NormalizationForm.FormD);
            string str2 = regex.Replace(str, string.Empty).Replace('đ', 'd').Replace('Đ', 'D');
            while (str2.IndexOf("?") >= 0)
            {
                str2 = str2.Remove(str2.IndexOf("?"), 1);
            }
            while (str2.Contains("--"))
            {
                str2 = str2.Replace("--", "-").ToLower();
            }
            return str2;
        }

        public static string ToUnUnicode(string input)
        {
            input = input.Trim();
            for (int i = 0x20; i < 0x30; i++)
            {
                input = input.Replace(((char)i).ToString(), " ");
            }
            input = input.Replace(".", " ");
            input = input.Replace(" ", " ");
            input = input.Replace(",", " ");
            input = input.Replace(";", " ");
            input = input.Replace(":", " ");
            Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
            string str = input.Normalize(NormalizationForm.FormD);
            string str2 = regex.Replace(str, string.Empty).Replace('đ', 'd').Replace('Đ', 'D');
            while (str2.IndexOf("?") >= 0)
            {
                str2 = str2.Remove(str2.IndexOf("?"), 1);
            }
            while (str2.Contains("--"))
            {
                str2 = str2.Replace("--", " ").ToLower();
            }
            return str2;
        }

        public static string SubTitlePost(string input)
        {
            if (input.Length > 60)
            {
                //lấy vị trí xuất hiện khoảng trắng dau tien từ vị trí 50
                int pos = input.IndexOf(" ", 50);
                string sub = input.Substring(0, pos) + "...";
                return sub;
            }
            else
            {
                return input;
            }
        }

        public static string SubDescriptionPost(string input)
        {
            if (input.Length > 100)
            {
                //lấy vị trí xuất hiện khoảng trắng dau tien từ vị trí 100
                int pos = input.IndexOf(" ", 100);
                string sub = input.Substring(0, pos) + "...";
                return sub;
            }
            else
            {
                return input;
            }
        }

        public static string SaveImage(HttpPostedFileBase file, string savePath)
        {
            if (file != null)
            {
                if (file.ContentLength > 0)
                {
                    if (Path.GetExtension(file.FileName).ToLower() == ".jpg"
                        || Path.GetExtension(file.FileName).ToLower() == ".png"
                        || Path.GetExtension(file.FileName).ToLower() == ".gif"
                        || Path.GetExtension(file.FileName).ToLower() == ".jpeg"
                        )
                    {
                        var path = Path.Combine(HttpContext.Current.Server.MapPath(savePath), file.FileName);
                        file.SaveAs(path);
                    }
                }
                return file.FileName;
            }
            else
                return "";
        }

    }
}
