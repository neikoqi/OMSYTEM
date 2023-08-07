using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
   public class MOD_Forum
    {

        private int id;

        public int Id { get => id; set => id = value; }
        public string Title { get => title; set => title = value; }
        public MOD_Menu Menu { get => menu; set => menu = value; }
        public string More { get => more; set => more = value; }
        public int State { get => state; set => state = value; }
        public DateTime Adddate { get => adddate; set => adddate = value; }

        private string title;
        private MODELS.MOD_Menu menu;

        private string more;
        private int state;
        private DateTime adddate;
    }
}
