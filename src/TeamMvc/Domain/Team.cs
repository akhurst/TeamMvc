using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TeamMvc.Domain
{
	public class Team
	{
		[ScaffoldColumn(false)]
		public int Id { get; set; }

		[Required]
		public string Name { get; set; }

		public string Hometown { get; set; }

		public List<Game> HomeGames { get; set; }
		public List<Game> AwayGames { get; set; }
		public List<Player> Players { get; set; }
		public List<Game> Games
		{
			get
			{
				List<Game> allGames = new List<Game>(HomeGames);
				allGames.AddRange(AwayGames);
				allGames.Sort((g1, g2) => (g1.Date > g2.Date) ? 1 : 0);
				return allGames;
			}
		}
	}
}