using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
    public class MOD_Actives
    {
        private int id;
        private string name;
        private string AC_type;      
        private DateTime AC_timeBegin;
        private DateTime AC_timeOver;
        private string AC_place;
        private string AC_numbers;
        private DateTime AC_timePublish;
        private DateTime AC_timeApplicationOver;
        private string more;

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string AC_type1 { get => AC_type; set => AC_type = value; }
        public DateTime AC_timeBegin1 { get => AC_timeBegin; set => AC_timeBegin = value; }
        public DateTime AC_timeOver1 { get => AC_timeOver; set => AC_timeOver = value; }
        public string AC_place1 { get => AC_place; set => AC_place = value; }
        public string AC_numbers1 { get => AC_numbers; set => AC_numbers = value; }
        public DateTime AC_timePublish1 { get => AC_timePublish; set => AC_timePublish = value; }
        public DateTime AC_timeApplicationOver1 { get => AC_timeApplicationOver; set => AC_timeApplicationOver = value; }
        public string More { get => more; set => more = value; }
    }
}
