using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TeamMvc.Domain;

namespace TeamMvc.Data.Interfaces
{
	public interface IGameRepository
	{
		Game FindByGameId(int gameId);
		Game Create(Game newGame);
		List<Game> All();
	}
}
