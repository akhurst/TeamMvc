using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TeamMvc.Domain;

namespace TeamMvc.Data.Interfaces
{
	public interface ITeamRepository
	{
		Team FindByTeamId(int teamId);
		Team Create(Team newTeam);
		List<Team> All();
	}
}
