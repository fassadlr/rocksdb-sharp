rm ".\bin\Release\" -Recurse -Force
dotnet build --configuration Release
dotnet pack --configuration Release --include-source --include-symbols 
dotnet nuget push ".\bin\Release\*.symbols.nupkg" -k "oy2h6m5c22shkewqqadqlzuhhouc5wgezn6zhi3uniu4zy" --source "https://api.nuget.org/v3/index.json"