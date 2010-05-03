using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TeamMvc.Data.Interfaces;
using TeamMvc.Domain;

namespace TeamMvc.Data
{
	public class GameRepository : BaseRepository<Game,GameDM>, IGameRepository
	{
		public Game FindByGameId(int gameId)
		{
			return base.FindSingleByProperty(g => g.Id, gameId);
		}
	}
}