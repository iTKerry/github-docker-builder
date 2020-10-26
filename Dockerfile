FROM mcr.microsoft.com/dotnet/sdk:5.0 as base
WORKDIR /app
COPY . ./

RUN dotnet restore GithubDockerBuilder.csproj
RUN dotnet publish GithubDockerBuilder.csproj -c Release --no-restore -o /app/out

ENTRYPOINT [ "dotnet", "GithubDockerBuilder.dll" ]