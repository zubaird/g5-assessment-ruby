# gSchool mid-term Ruby assessment

You work for a book company that publishes poems.  You just inherited a treasure trove of poems in the public domain.
Your job is to provide some stats about the poems.

Each poem file looks like this:

```
In Possum Land
Henry Lawson

In Possum Land the nights are fair,
the streams are fresh and clear;
no dust is in the moonlit air;
no traffic jars the ear.

With Possums gambolling overhead,
'neath western stars so grand,
Ah! would that we could make our bed
tonight in Possum Land
```

The files contain:

* A title
* An author
* A blank line
* The poem
* Each verse is separated by a blank line

## Part 1

Write code that can:

* Go through every file in the `data` directory (see http://www.ruby-doc.org/core-2.1.2/Dir.html#method-c-glob)
* Read each file
* Parse the title, author and verses
* Generate a hash like so:

```
{
  "Henry Lawson" => {
    "In Possum Land" => {
      verses: 2,
      lines: 8,
    },
    "I'll Tell You What You Wanderers" => {
      verses: 1,
      lines: 8,
    },
  },
  "Robert Lee Frost" => {
    "The Lockless Door" => {
      verses: 5,
      lines: 20, 
    }
  }
}
```

The number of lines should reflect the number of non-blank lines.

# Setup

* Fork
* Clone
* Implement specs and code
