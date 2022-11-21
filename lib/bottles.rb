# rubocop:disable all

class Bottles
  def verse(verse_number)
    case verse_number
    when 0
      "No more bottles of beer on the wall, " +
        "no more bottles of beer.\n" +
        "Go to the store and buy some more, " +
        "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
        "1 bottle of beer.\n" +
        "Take it down and pass it around, " +
        "no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, " +
        "2 bottles of beer.\n" +
        "Take one down and pass it around, " +
        "1 bottle of beer on the wall.\n"
    when 3..99
      "#{verse_number} bottles of beer on the wall, " +
        "#{verse_number} bottles of beer.\n" +
        "Take one down and pass it around, " +
        "#{verse_number - 1} bottles of beer on the wall.\n"
    else
      "no verse"
    end
  end

  def verses(verse_number_1, verse_number_2)
    verses = ""
    verse_number_1.downto(verse_number_2).each do |verse_number|
      verses += verse(verse_number)
      verses += "\n" if verse_number != verse_number_2
    end

    verses
  end

  def song
    verses(99, 0)
  end
end
