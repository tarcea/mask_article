In this challenge, your task is to write the following methods:

1.mask_article which appends strike tags around certain words in a text.
The method takes 2 arguments: A string and an array of words.
It then replaces all the instances of words in the text with the modified version.

2.A helper method strike, given one string, appends strike off HTML tags around it.
The strike off HTML tag is <strike></strike>.

For example:
> strike("Meow!") # => "<strike>Meow!</strike>"
> strike("Foolan Barik") # => "<strike>Foolan Barik</strike>"
> mask_article("Hello World! This is crap!", ["crap"])
"Hello World! This is <strike>crap</strike>!"
