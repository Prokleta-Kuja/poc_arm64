FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS runtime
WORKDIR /app
COPY out ./

# EXPOSE 50505

# ENV ASPNETCORE_URLS=http://*:50505 \
#     LOCALE=en-US \
#     TZ=America/Chicago

ENTRYPOINT ["dotnet", "poc_arm64.dll"]