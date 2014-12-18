require 'pp'

poemdir = "#{Dir.pwd}/data"

poem_files = Dir.glob("#{poemdir}/*")

# poem_files.each do |poem|
#   read_poem = File.open(poem, "r")
#   puts "#{read_poem.read}\n\n"
# end

poem_stats = {}
# authors = {}

poem_files.each do |poem|
  File.open(poem, "r") do |file|
    @line_count = 0
    @verses = 0
    file.readlines.each_with_index do |line, index|
      # puts line unless line == ""


      @line_count += 1 if line != "\n"
      @verses += 1 if line == "\n"


      # puts index
    end
    poem_name = IO.readlines(file)[0]
    author_name = IO.readlines(file)[1]


    poem_stats =
    {author_name => {
      poem_name => {
        "lines:" => @line_count,
        "verses:" => @verses
    }}}
    # puts poem_name
    # puts author_name
    # puts @line_count - 2

    pp poem_stats
  end
end





# => Get Verses by going through each line in file and counting them
# => Push to Poem Name hash within poem_stats hash


# => Get Lines by going through each line in file
# => Push to Poem Name hash within poem_stats hash





# Hash-Poem Authors,
# Hash- Poem Names,
#   Hash - Poem Verses & Lines


# add Author to Key, poem_stats = {}
# =>  poem_stats[line 2] =
# => POEM NAMES     { line 1 =>
# => VERSES ARE         (count of blank lines + 1 if 0, from lines 4 to End),
# => LINES ARE          (count of lines from 4 to End, excluding blank lines)   }


#
# {
#   "Henry Lawson" => {
#     "In Possum Land" => {
#       verses: 2,
#       lines: 8,
#     },
#     "I'll Tell You What You Wanderers" => {
#       verses: 1,
#       lines: 8,
#     },
#   },
#   "Robert Lee Frost" => {
#     "The Lockless Door" => {
#       verses: 5,
#       lines: 20,
#     }
#   }
# }
