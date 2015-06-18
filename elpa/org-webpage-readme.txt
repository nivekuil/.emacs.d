org-webpage is a static site generator based on org mode.

1. Sources:   https://github.com/tumashu/org-webpage
2. Documents: http://tumashu.github.io/org-webpage

org-webpage is a fork of Kelvin H's org-page (https://github.com/kelvinh/org-page),
and provides similar features as org-page, the main differents is as follow:

1. org-page focus on personal blog while org-webpage is main used to
   generate small project website.
2. org-page use many customizable variables to configure org-page
   while org-website use an `org-publish-project-alist' style
   alist to adjust org-website's behaver.

   Managing multi-site configs in an emacs session with org-website is more
   simple than with org-page.
3. org-website can deal with "increment" or "inherit" themes.

   A "increment" theme is a mod theme which only include changed template,
   css and other files, the files same with base theme doesn't include.

   org-webpage autosearch the same files from base theme when use "increment"
   theme.
4. org-website include a tiny emacs web server, which can be used to test publish.
