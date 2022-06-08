using Microsoft.Owin;
using Microsoft.AspNet.Identity;
using Owin;
using System;
using System.Threading.Tasks;

[assembly: OwinStartup(typeof(asp_project_demo.Startup))]

namespace asp_project_demo
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new Microsoft.Owin.Security.Cookies.CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath=new PathString("/login.aspx")
            }) ;
        }
    }
}
