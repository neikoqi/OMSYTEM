using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
   public class MOD_Mass
    {

        private int mo_id;
        private string mo_name;
        private string mo_type;
        private string mo_place;
        private string mo_notice;
        private string mo_information;
        
        private string mo_more;
        private string mo_members;
        private string mo_hits;
        private DateTime Create_time;
        private DateTime Update_time;

        public string Mo_name { get => mo_name; set => mo_name = value; }
        public int Mo_id { get => mo_id; set => mo_id = value; }
        public string Mo_type { get => mo_type; set => mo_type = value; }
        public string Mo_place { get => mo_place; set => mo_place = value; }
        public string Mo_notice { get => mo_notice; set => mo_notice = value; }
        public string Mo_information { get => mo_information; set => mo_information = value; }
        public string Mo_more { get => mo_more; set => mo_more = value; }
        public string Mo_members { get => mo_members; set => mo_members = value; }
        public string Mo_hits { get => mo_hits; set => mo_hits = value; }
        public DateTime Create_time1 { get => Create_time; set => Create_time = value; }
        public DateTime Update_time1 { get => Update_time; set => Update_time = value; }
    }
}
