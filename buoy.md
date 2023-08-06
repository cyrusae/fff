**summarytools**: "Tools to Quickly and Neatly Summarize Data"
- [x] test native `dfSummary` function for existence of features I want 
- *Update:* well, `summarytools` can't handle this messy of data full stop, that'd cover it then 
- vanilla `summary()` works 
- [ ] look at their GitHub to find out how they did it 

(I think I would like to reimplement things on my own for parsimony's sake, if that ends up being okay. Like partly *because* they're this close to perfect, I think it means that I'd end up using the entire library and then some and if they're not optimizing for speed I have to? If this leads to C++/Fortran/Rust then I got to do that on the clock, that's honestly fine.) 

- **Look up packages for zip code handling** (or other location data, want to be able to recognize the ZIP fields and with any luck I don't have to freehand that entirely)
- **Add lubridate** for complex date handling
- **Look into forcats** for basically the same reason 

how am I blanking on how to extract a row as opposed to a column this badly lmao fucking being on a trans-atlantic flight making me forget the concept of grammar

**What do I want?**

> Out: unique values (raw count)
> Feature: include NAs? 

I think default behavior that's desirable *for me* is to report NAs as their own thing and then drop. 

> Out: unique values (if key-shaped)
> Parameter: how many values to print? 
> Parameter: how much detail (e.g. occurrence each)?

**TODO:** Find resources to automate identification of factors. Also see how R itself identifies factors on load. 

One of the most vexing things *for me personally* are columns that are one thing but appear to be another thing (e.g., numeric columns with character placeholders for missing values). 

***Tool needed to address this:*** Establish what "incongruence" in the data looks like and include the ability to wipe it and redo 

What's a word for "person who cleans things" or similar that starts with l? (I guess if I can't think of anything I can call it `lye` due to relatively high interactivity/low ML quotient compared to the others.)

> LAUNDERER. ALEXANDER. YOU FORGOT LAUNDRY EXISTED BUT REMEMBERED LYE SOAP. WHY ARE YOU LIKE THIS, ALEXANDER.

> `lavendrye`...

**Pieces of the puzzle**
- `lexicographer`, focuses on first-pass information about the CSV you have given it 
- `lye`, optional cleanup step based on `lexicographer` findings (e.g. remove other people's definitions of NAs and recalculate)
- `locksmith`, active attempt to determine viable keys (wants input of multiple tables as opposed to breaking that up from lexicographer?)

Default findings output should be a table that can save itself as a glued list(/possibly something more sophisticated as a Markdown report if automating it ends up useful to me, e.g. step-by-step knitted explanation of what `lye` washing to do).

In my dreams/if I need a stim/etc. being able to semi-automate `lye` attempts would be lovely.

The difference between `lexicographer` and `locksmith` right off the bat is how they interact with NAs, I think it's justifiable to say `lexicographer` is what I work on right this second though.

For `lye` need to start figuring out how to act on classes of things within a vector. Which is probably going to be horrible (how to check if something is *desirably* coercible to a certain state...?) and may be what punts me to a lower-level language, we'll see. Want to be able to describe the problem better first at least. 

**TODO:** Explain *this* separate from the entire pipeline to one or more rubber ducks for the purpose of making it not an exercise in not being worth reusing, actually.

So **some conclusions**:
- I am not actually comfortable enough with package design to use packages for things that I need to pick up and set down repeatedly yet as opposed to using them for a second draft, which I realize is like exactly the opposite of the intended behavior/advice but if it works then that's better than thus far
- I need to treat introspector more seriously (this was kind of foreseen but also touch and go because I didn't realize finishing it would be non-optional probably) 
- Clean up existing GitHub repos so that it's easier for people to see my bullshit here 

-

Resources: https://stackoverflow.com/questions/13638377/test-for-numeric-elements-in-a-character-string

FEATURES YOU DO NOT NEED YET ALEXANDER:
- Unpacking comma-separated lists/other things within a vector

QUESTIONS I HAVE
- How to use list comprehension to my advantage here.