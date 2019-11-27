# dotnet-jupyter-notebook

Jupyter Notebook Dockerfile with .NET Kernel

This docker image is based on jupyter/minimal-notebook and adds dotnet try to have a C# and F# kernel. You're able to create Notebooks with .NET code parts.

[Announcement from Microsoft DevBlog (including examples)](https://devblogs.microsoft.com/dotnet/net-core-with-juypter-notebooks-is-here-preview-1/)

## How to build and run

To build: `docker build -t dotnet-notebook .`
To run: `docker run -p 8888:8888 dotnet-notebook`

When running the notebook you'll get an url in the output. Use this url to browse to the jupyter lab and start fiddling with the notebooks.

## Not done yet

- Mountable volume for Notebooks

# Presentation on .NET Community Meetup

## Based on:

- [Try.NET](https://dotnet.microsoft.com/platform/try-dotnet)

### Examples:

- [.NET Browser Tutorial](https://dotnet.microsoft.com/learn/dotnet/in-browser-tutorial/1)
- [.NET Documentation](https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/hello-world?tutorial-step=1)
- [NodaTime](https://nodatime.org/2.4.x/userguide/recipes)
- [ML Net](https://devblogs.microsoft.com/cesardelatorre/using-ml-net-in-jupyter-notebooks/)

## Jupyter Notebook

http://127.0.0.1:8888/?token=060fa922c5a57a25ab713ea6a9c30e914c665dbdc21fac98
