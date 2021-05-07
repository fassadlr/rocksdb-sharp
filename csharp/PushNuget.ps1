rm ".\bin\Release\" -Recurse -Force
dotnet build --configuration Release
dotnet pack --configuration Release --include-source --include-symbols 
dotnet nuget push ".\bin\Release\*.symbols.nupkg" -k "" --source "https://api.nuget.org/v3/index.json"