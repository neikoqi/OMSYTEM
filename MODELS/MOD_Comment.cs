using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
    public class MOD_Comment
    {

        private int id;
        private string name;
        private DateTime date;
        private string more;

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
 
        public string More { get => more; set => more = value; }
      
        public DateTime Date { get => date; set => date = value; }
    }
}
