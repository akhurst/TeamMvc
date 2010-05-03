using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TeamMvc.Domain
{
	public class Player
	{
		[ScaffoldColumn(false)]
		public int Id { get; set; }
		public Team Team { get; set; }
		[Required]
		public string Name { get; set; }
		public string Position { get; set; }
	}
}