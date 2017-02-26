using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Sample_IS.Startup))]
namespace Sample_IS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
