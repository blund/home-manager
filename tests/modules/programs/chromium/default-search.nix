{ pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    defaultSearch = {
      enabled = true;
      name = "Kagi";
      searchURL = "https://kagi.com/search?q={searchTerms}";
      suggestURL = "https://kagi.com/complete/search?q={searchTerms}";
      iconURL = "https://kagi.com/favicon.ico";
    };
  };

  nmt.script = ''
    searchFile="home-files/.config/chromium/Policies/Managed/search.json"
    assertFileExists "$searchFile"
    assertFileContent "$searchFile" ${./expected-search.json}
  '';
}
