using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TeamMvc.Data.Interfaces;
using TeamMvc.Domain;

namespace TeamMvc.Data
{
	public class PlayerRepository : BaseRepository<Player, PlayerDM>, IPlayerRepository
	{
		public Player FindByPlayerId(int playerId)
		{
			return base.FindSingleByProperty(p => p.Id, playerId);
		}
	}
}