using System.Web.Mvc;
using TeamMvc.Data;
using TeamMvc.Data.Interfaces;
using TeamMvc.Domain;

namespace TeamMvc.Controllers
{
	public class TeamController : Controller
	{
		//
		// GET: /Team/

		private ITeamRepository teamRepository;

		public TeamController()
		{
			teamRepository = new TeamRepository();
		}

		public TeamController(ITeamRepository teamRepository)
		{
			this.teamRepository = teamRepository;
		}

		//
		// GET: /Team/Create

		public ActionResult Create()
		{
			return View();
		}

		//
		// POST: /Team/Create

		[HttpPost]
		public ActionResult Create(Team team)
		{
			try
			{
				teamRepository.Create(team);
				return RedirectToAction("List");
			}
			catch
			{
				return View();
			}
		}

		//
		// GET: /Team/Edit/5

		//
		// GET: /Team/Delete/5

		public ActionResult Delete(int id)
		{
			return View();
		}

		//
		// POST: /Team/Delete/5

		[HttpPost]
		public ActionResult Delete(int id, FormCollection collection)
		{
			try
			{
				// TODO: Add delete logic here

				return RedirectToAction("Index");
			}
			catch
			{
				return View();
			}
		}

		public ActionResult Details(int id)
		{
			Team team = teamRepository.FindByTeamId(id);
			return View(team);
		}

		public ActionResult Edit(int id)
		{
			return View();
		}

		//
		// POST: /Team/Edit/5

		[HttpPost]
		public ActionResult Edit(int id, FormCollection collection)
		{
			try
			{
				// TODO: Add update logic here

				return RedirectToAction("Index");
			}
			catch
			{
				return View();
			}
		}

		public ActionResult Index()
		{
			return View();
		}

		public ActionResult List()
		{
			return View(teamRepository.All());
		}
	}
	}