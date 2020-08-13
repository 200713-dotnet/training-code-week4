FROM mcr.microsoft.com/dotnet/core/sdk
WORKDIR /app
# from the path on th physical machine to the image environment
COPY . .
CMD [ "dotnet", "run", "-p", "DevopsCI.Client/DevopsCI.Client.csproj" ]
