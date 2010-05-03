using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;

namespace TeamMvc.Data
{
	public class BaseRepository<TDomain, TData>
		where TDomain : class
		where TData : class
	{
		private TeamDataContext dataContext;

		protected virtual TeamDataContext DataContext
		{
			get
			{
				if(dataContext == null)
					dataContext = new TeamDataContext();

				return dataContext;
			}
		}

		public virtual TDomain Create(TDomain newDomain)
		{
			if(newDomain!=null)
			{
				var newDm = Mapper.Map<TDomain, TData>(newDomain);
				DataContext.GetTable<TData>().InsertOnSubmit(newDm);
				DataContext.SubmitChanges();
				return Mapper.Map<TData, TDomain>(newDm);
			}

			return null;
		}

		public virtual List<TDomain> All()
		{
			IEnumerable<TData> dms = from dm in DataContext.GetTable<TData>()
												         select dm;
			var domains = Mapper.Map<IEnumerable<TData>, IEnumerable<TDomain>>(dms);
			return domains.ToList();
		}

		protected virtual TDomain FindSingleByProperty(Func<TData, object> property, object value)
		{
			TData dm = DataContext.GetTable<TData>().SingleOrDefault(
				delegate(TData d)
					{
						object result = property.Invoke(d);
						return result != null ? result.Equals(value) : result == value;
					});
//			c => property.Invoke(c) == value);
			TDomain domain = Mapper.Map<TData, TDomain>(dm);

			return domain;
		}
	}
}