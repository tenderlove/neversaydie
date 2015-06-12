$:.unshift 'lib/'
require 'neversaydie'
require 'pry-rescue'

Pry.rescue do
  args = []
  0.upto 23 do |i|
    args << i
    NeverSayDie.segv *args
    # Now, type "args" and hit enter.
    # Pretty easy, huh?

    # Bonus: See if you can figure out exactly what input causes the segfault.
  end
end
