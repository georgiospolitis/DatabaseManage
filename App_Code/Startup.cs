using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lab7C.Startup))]
namespace Lab7C
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
