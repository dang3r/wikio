# Wikio

----

Wikio is a library for extracting information about wikipedia.

----

## Install

```
gem install wikio
```

## API

```
require 'wikio'
=> true
Wikio.get_wiki_url('canada')
=> "https://en.wikipedia.org/wiki/Canada"
Wikio.get_first_link(Wikio.get_wiki_url('canada'))
=> "https://en.wikipedia.org/wiki/North_America"
```

## Example

Wikio includes the `wikireducer` script that determines how many steps
it takes to get from one article to the other using the first link on
a page.

```
$ wikireducer --dst=Knowledge Cat Dog
Searching for https://en.wikipedia.org/wiki/Knowledge
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Dog
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Cat
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Fur
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Canis
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Hair
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Genus
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Protein_filament
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Taxonomy_(biology)
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Ancient_Greek_language
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Biology
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Greek_language
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Natural_science
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Modern_Greek
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Science
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Colloquialism
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Latin_language
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Vernacular
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Classical_language
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Language
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Language
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Communication
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Communication
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Meaning_(semiotics)
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Meaning_(semiotics)
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Semiotics
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Semiotics
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Research
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Research
https://en.wikipedia.org/wiki/Cat -> https://en.wikipedia.org/wiki/Knowledge in 14 steps
https://en.wikipedia.org/wiki/Dog -> https://en.wikipedia.org/wiki/Knowledge in 14 steps
```
