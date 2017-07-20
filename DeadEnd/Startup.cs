using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DeadEnd.Startup))]
namespace DeadEnd
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
