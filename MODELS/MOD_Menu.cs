using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
   public class MOD_Menu
    {

        /// <summary>
        /// 
        /// </summary>
        private int id;

      
        public string Title { get => title; set => title = value; }
        public int State { get => state; set => state = value; }
        public int Id { get => id; set => id = value; }

        private string title;

        private int state;


    }
}

