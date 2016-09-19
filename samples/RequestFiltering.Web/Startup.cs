﻿using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using RequestFiltering.FileExtensions;
using System.Collections.Generic;

namespace RequestFiltering.Web
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc();
        }

        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole(LogLevel.Debug);

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            var options = new RequestFilteringOptions()
                .AddFileExtensionRequestFilter(new FileExtensionsOptions
                {
                    FileExtensionsCollection = new List<FileExtensionsElement>
                    {
                        new FileExtensionsElement() { FileExtension = ".jpg", Allowed = true },
                        new FileExtensionsElement() { FileExtension = ".psd", Allowed = false }
                    }
                });

            app.UseRequestFiltering(options);

            app.UseStaticFiles();

            app.UseMvc();
        }
    }
}
