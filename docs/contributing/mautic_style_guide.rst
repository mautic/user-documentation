Mautic Style Guide
##################

The Mautic Style guide recommends best practices that aims to bring about a consistent style, voice, and tone across the documentation. 

Vale
#####
Vale is a natural language linter that supports plain text, markup (Markdown, reStructuredText, AsciiDoc, and HTML), and source code comments. Vale doesn't attempt to offer a one-size-fits-all collection of rules—instead, it strives to make customization as easy as possible.

How to Install Vale
###################
Before pushing, run Vale and address suggestions and errors as applicable. you will see the errors highlighted as you are typing, and under the ‘Problem’ tab.

#. Install vale
#. vale

You can also run Vale on a file individually using the command vale <filename> if you prefer to see this in the terminal - for example: vale docs/campaigns/campaign_builder.rst.

Note 
*****

When you are making PRs, please ensure you are reviewing the Vale linter output, and you are checking your RST markup.

Tips on Using Vale
##################

* You **must** fix errors Red), for example Companies - Companies.

* you **should** fix warnings (yellow),and you could fix suggestions (blue) [but sometimes they are not relevant - for example here it’s suggesting to change Do Not Contact to Don’t Contact but we need to use the full form as it’s a feature of Mautic].


RST Basic Markup
################
A reStructuredText document is written in plain text. Without the need for complex formatting, one can be composed simply, just like one would any plain text document. 

Sections
########
We Use sections to break up long pages and to help Sphinx generate tables of contents.


first level
############

second level
************

third level
===========

Bold and Italics
******************
There are a few special characters used to format text. '

The special character `*`` is used to defined bold and italic text.
One * is used to define Italics while two ** are used to define bold.

Here is an example below:
````
*Italics*  and
**Bold**
`````




 






