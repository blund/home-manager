{
  programs.chromium = {
    enable = true;

    defaultSearch = {
      enabled = true;
      name = "Kagi";
      keyword = "k";
      searchURL = "https://kagi.com/search?q={searchTerms}";
      suggestURL = "https://kagi.com/complete/search?q={searchTerms}";
      iconURL = "https://kagi.com/favicon.ico";
    };
  };

  nmt.script = ''
    assertFileExists="home-files/.config/chromium/Policies/Managed/search.json"
    assertFileContent="home-files/.config/chromium/Policies/Managed/search.json"  ${./expected-search.json}
  '';
}
