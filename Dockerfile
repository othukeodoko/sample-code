FROM mcr.microsoft.com/dotnet/sdk:7.0 as build-env

WORKDIR /src

COPY *.csproj ./

RUN dotnet restore

COPY . .

RUN dotnet publish myWebApp.csproj -c Release -o /publish

FROM mcr.microsoft.com/dotnet/aspnet:7.0 as runtime

WORKDIR /publish

COPY --from=build-env /publish .

ENV ASPNETCORE_URLS=http://+:5000

EXPOSE 5000

ENTRYPOINT ["dotnet", "myWebApp.dll"]
