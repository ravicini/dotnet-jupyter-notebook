# dotnet-jupyter-notebook
Jupyter Notebook Dockerfile with .NET Kernel

This docker image is based on jupyter/minimal-notebook and adds dotnet try to have a C# and F# kernel. You're able to create Notebooks with .NET code parts.

[Announcement from Microsoft DevBlog (including examples)](https://devblogs.microsoft.com/dotnet/net-core-with-juypter-notebooks-is-here-preview-1/)

## How to build and run

To build: `docker build -t dotnet-notebook .`
To run: `docker run -p 8888:8888 dotnet-notbook`

When running the notebook you'll get an url in the output. Use this url to browse to the jupyter lab and start fiddling with the notebooks.

## Not done yet
- Mountable volume for Notebooks