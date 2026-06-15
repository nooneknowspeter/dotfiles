{ pkgs, ... }:
{
  programs.newsboat = {
    enable = true;
    autoFetchArticles = {
      enable = true;
      onCalendar = "daily";
    };
    autoReload = true;
    autoVacuum = {
      enable = true;
      onCalendar = "yearly";
    };
    urls = [
      {
        title = "cpp stories";
        url = "https://cppstories.com/index.xml";
      }

      {
        title = "zig news";
        url = "https://ziglang.org/news/index.xml";
      }

      {
        title = "zig show";
        url = "https://zig.show/episodes/index.xml";
      }

      {
        title = "fxstreet analysis";
        url = "https://www.fxstreet.com/rss";
      }
    ];
  };
}
