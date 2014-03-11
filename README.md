# The Page Monitor Kata

This is a kata where the goal is to build a ruby gem that monitors a web page for changes. Whenever the content changes, the gem notifies the user by email.

Have a look [over there](http://codingdojo.org/cgi-bin/wiki.pl?WhatIsCodingDojo) for more information on dojos and katas. See the kata specifications below.

# Feature #1
- Given we are just getting started
- When I compare two pieces of text
- Then I know whether or not they are the same

<note>
A simple function that takes in two strings and returns true or false will do.
</note>

# Feature #2
    
- Given we are just getting started
- When the user calls the command line app passing in a URL in option
- Then the app fetches the web page at the URL and saves it to disk

<note>
You can require `open-uri` and use the global function `open` to fetch the URL.
</note>

# Feature #3

- Given the app has already saved a previous state for the specified URL
- When the user calls the app again with the same URL
- Then the app fetches the web page and compares the current content with the content saved to disk

<note>
Return true if the content is the same, or false if it changed.
</note>

# Feature #4

- Given writers make typos
- When a typo is corrected on the page
- Then the app should not flag a change

<note>
You could also make sure you don't flag a change when only the authenticity token of a form changed.
</note>

# Feature #5

- Given the content of the `head` tag is not interesting to me
- When only the content of the `head` tag changes
- Then the app should not flag a change

<note>
You could support a list of uninteresting tags (e.g. `input`, `button`, `form`)
</note>

# Feature #6
    
- Given the app knows how to detect changes
- When the contents of a web page has changed
- Then I should receive an email detailing the changes

# Feature #7

- Given the app is ready to ship
- When I install the gem
- Then I am able to use it by running the executable on the path

# License

[BY-NC-SA 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/deed.en_US)
