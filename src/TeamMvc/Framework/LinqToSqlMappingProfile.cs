using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;
using TeamMvc.Data;
using TeamMvc.Domain;

namespace TeamMvc.Framework
{
	public class LinqToSqlMappingProfile : Profile
	{
		protected override string ProfileName
		{
			get
			{
				return "LinqToSqlMappingProfile";
			}
		}

		protected override void Configure()
		{
			Mapper.CreateMap<Game, GameDM>();
			Mapper.CreateMap<Team, TeamDM>();
			Mapper.CreateMap<Player, PlayerDM>();

			Mapper.CreateMap<GameDM, Game>();
			Mapper.CreateMap<TeamDM, Team>();
			Mapper.CreateMap<PlayerDM, Player>();
		}
	}
}