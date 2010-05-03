using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TeamMvc.Domain
{
	public class Game
	{
		[ScaffoldColumn(false)]
		public int Id { get; set; }

		[Required]
		public Team HomeTeam { get; set; }
		public Team AwayTeam { get; set; }

		[Required]
		public DateTime Date { get; set; }
	}
}