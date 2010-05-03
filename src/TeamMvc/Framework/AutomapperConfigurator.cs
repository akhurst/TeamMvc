using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;

namespace TeamMvc.Framework
{
	public static class AutomapperConfigurator
	{
		private static bool beenConfigured;

		public static void Configure()
		{
			if (!beenConfigured)
			{
				Mapper.AddProfile<LinqToSqlMappingProfile>();
				beenConfigured = true;
			}
		}
	}
}