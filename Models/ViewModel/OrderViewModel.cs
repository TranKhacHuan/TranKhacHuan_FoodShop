using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.ViewModel
{
    public class OrderViewModel
    {
        public long ID { get; set; }

        public DateTime? CreatedDate { get; set; }
      
        [StringLength(50)]
        public string ShipName { get; set; }

        [StringLength(50)]
        public string ShipMobile { get; set; }

        [StringLength(50)]
        public string ShipAddress { get; set; }

        [StringLength(50)]
        public string ShipEmail { get; set; }

        [StringLength(250)]
        public string ProductName { get; set; }

        public int? Quantity { get; set; }

        public decimal? Price { get; set; }

        public string Image { get; set; }


    }
}

