# The Page Monitor Kata

This is a kata where the goal is to build a ruby gem that monitors a web page for changes. Whenever the content changes, the gem notifies the user by email.

Have a look [over there](http://codingdojo.org/cgi-bin/wiki.pl?WhatIsCodingDojo) for more information on dojos and katas. See the kata specifications below.

<!--

Have ready:

- a rails app to test stuff
- a mailer using Mail and a group gmail account for credentials
- a gem skeleton

-->

# Feature #1
    
- Given we are just getting started
- When the user calls the command line app passing in a URL in option
- Then the app fetches the web page at the URL and saves it to disk

# Feature #2

- Given the app has already saved a previous state for the specified URL
- When the user calls the app again with the same URL
- Then the app fetches the web page and diffs the current content with the content saved to disk

# Feature #3

- Given writers make typos
- When a typo is corrected on the page
- Then the app should not flag a change

<note>
You could also make sure you don't flag a change when the nonce of a form changed.
</note>

# Feature #4

- Given the content of the `head` tag is not interesting to me
- When the content of the `head` tag changes
- Then the app should not flag a change

# Feature #5
    
- Given the app knows how to detect changes
- When the contents of a web page has changed
- Then I should receive an email detailing the changes

# Feature #6

- Given the app is ready to ship
- When I install the gem
- Then I am able to use it by running the executable on the path

# License

[BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_US)
