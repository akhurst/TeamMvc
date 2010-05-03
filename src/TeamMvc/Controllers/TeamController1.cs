using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TeamMvc.Data;
using TeamMvc.Data.Interfaces;
using TeamMvc.Domain;

namespace TeamMvc.Controllers
{
	public class TeamController1 : Controller
	{
		private ITeamRepository teamRepository;

		public TeamController()
		{
			teamRepository = new TeamRepository();
		}

		public TeamController(ITeamRepository teamRepository)
		{
			this.teamRepository = teamRepository;
		}

		public ActionResult View(int id)
		{
			Team team = teamRepository.FindByTeamId(id);
			return View(team);
		}
	}
}