using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TeamMvc.Data.Interfaces;
using TeamMvc.Domain;

namespace TeamMvc.Data
{
	public class TeamRepository : BaseRepository<Team, TeamDM>, ITeamRepository
	{
		public Team FindByTeamId(int teamId)
		{
			return base.FindSingleByProperty(t => t.Id, teamId);
		}
	}
}