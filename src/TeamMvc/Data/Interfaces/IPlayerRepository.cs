using System.Collections.Generic;
using TeamMvc.Domain;

namespace TeamMvc.Data.Interfaces
{
	public interface IPlayerRepository
	{
		Player FindByPlayerId(int playerId);
		Player Create(Player newPlayer);
		List<Player> All();
	}
}
