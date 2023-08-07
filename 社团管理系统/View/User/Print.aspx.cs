//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Drawing;
//using System.Drawing.Printing;
//using System.Web.UI.WebControls;
//using System.Windows.Forms;

//namespace 社团管理系统.View.User
//{
//    public partial class Print : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }
    
//        class PrintTest
//        {
//            //声明
//            /// <summary>【缓存变量】打印文档</summary>
//            private System.Drawing.Printing.PrintDocument printDocument;

//            /// <summary>【缓存变量】打印的内容，</summary>
//            List<string> InfoList = new List<string>();
//            /// <summary>【缓存变量】总页数</summary>
//            int TotalPages = 0;
//            /// <summary>【缓存变量】当前页</summary>
//            int CurrentPage = 0;
//            /// <summary>【缓存变量】每页行数</summary>
//            const int LinesPerPage = 10;

//            PrintTest()
//            {
//                //添加到初始化过程内
//                this.printDocument.PrintPage += new PrintPageEventHandler(this.printDocument_PrintPage);
//            }


//            /// <summary>
//            /// 【函数】准备打印
//            /// </summary>
//            /// <returns></returns>
//            private bool ReadyForPrint()
//            {
//                InfoList.Clear();
//                //从Textbox中读取行，这是使用Textbox的分行功能，实际使用中不可取，可自行替换
//                foreach (string line in this.TextBox1.Lines)
//                {
//                    InfoList.Add(line);
//                }

//                int Count = InfoList.Count;
//                if (Count > 0)
//                {
//                    TotalPages = Count / LinesPerPage;
//                    if (Count % LinesPerPage != 0)
//                    {
//                        TotalPages++;
//                    }
//                    CurrentPage = 1;
//                    return true;
//                }
//                else
//                {
//                    return false;
//                }
//            }

//            private void Print()
//            {
//                if (ReadyForPrint())
//                {
//                    this.printDocument.Print();
//                }
//            }

//            //将打印内容画在每一页上，注意这是所有页一起画，要在画的时候分页
//            private void printDocument_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
//            {
//                if (CurrentPage <= TotalPages)
//                {
//                    Graphics g = e.Graphics;
//                    Font drawFont = new Font("Arial", 12);
//                    SolidBrush drawBrush = new SolidBrush(Color.Black);

//                    for (int i = 0; i < LinesPerPage; i++)
//                    {
//                        int line = (CurrentPage - 1) * LinesPerPage + i;
//                        if (line > InfoList.Count - 1) { break; }

//                        string str = (string)InfoList[line];
//                        int x = 100;
//                        int y = 200 + 50 * i;

//                        g.DrawString(str, drawFont, drawBrush, x, y);
//                    }

//                    CurrentPage++;
//                    if (CurrentPage <= TotalPages)
//                    {
//                        e.HasMorePages = true;
//                    }
//                    else
//                    {
//                        e.HasMorePages = false;
//                    }
//                }
//            }
//            private void PreView()
//            {
//                if (ReadyForPrint())
//                {
//                    PrintPreviewDialog printPreviewDialog = new PrintPreviewDialog();
//                    printPreviewDialog.Document = printDocument;
//                    try
//                    {
//                        printPreviewDialog.ShowDialog();
//                    }
//                    catch (Exception excep)
//                    {
//                        MessageBox.Show(excep.Message, "打印出错", MessageBoxButtons.OK, MessageBoxIcon.Error);
//                    }
//                }
//            }

//            private void SetPrinter()
//            {
//                PrintDialog printDialog = new PrintDialog();
//                printDialog.Document = printDocument;
//                printDialog.ShowDialog();
//            }
//            private void SetPage()
//            {
//                PageSetupDialog pageSetupDialog = new PageSetupDialog();
//                pageSetupDialog.Document = printDocument;
//                pageSetupDialog.ShowDialog();
//            }
//        }
//    }
//}
    
