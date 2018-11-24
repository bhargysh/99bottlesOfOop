class Bottles
  def song
    verses(99, 0)
  end

  def verses(start_num, stop_num)
    start_num.downto(stop_num).map { |verse_number| verse(verse_number) }.join("\n")
  end

  def verse(verse_number)
    if verse_number == 0
      zero_left
    elsif verse_number == 1
      one_left
    else
      skeleton_verse(verse_number)
    end
  end

  def skeleton_verse(verse_number)
    one_less = verse_number - 1
    <<-VERSE
#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.
Take one down and pass it around, #{one_less} #{plurality(verse_number)} of beer on the wall.
    VERSE
  end

  def plurality(verse_number)
    if verse_number - 1 == 1
      "bottle"
    else
      "bottles"
    end
  end

  def one_left
    <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
  end

  def zero_left
    <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
  end
end
