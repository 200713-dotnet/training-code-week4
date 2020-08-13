FROM mcr.microsoft.com/dotnet/core/sdk as publish
WORKDIR /app
# from the path on th physical machine to the image environment
COPY . .
RUN dotnet publish -c Release -o out DevopsCI.Client/DevopsCI.Client.csproj

FROM mcr.microsoft.com/dotnet/core/aspnet
WORKDIR /dist
COPY --from=publish /app/out /dist
CMD [ "dotnet", "DevopsCI.Client.dll" ]
