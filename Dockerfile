# Use official .NET SDK to build the application
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy the project files
COPY ci_cd_github_action.app/*.csproj ./ci_cd_github_action.app/
RUN dotnet restore ./ci_cd_github_action.app

# Copy the rest of the application source code and build it
COPY . .
RUN dotnet publish ./ci_cd_github_action.app -c Release -o /app/published

# Use a lightweight runtime image
FROM mcr.microsoft.com/dotnet/runtime:8.0 AS runtime
WORKDIR /app

# Copy the built application from the previous stage
COPY --from=build /app/published .

# Set the entry point for the application
ENTRYPOINT ["dotnet", "ci_cd_github_action.app.dll"]
