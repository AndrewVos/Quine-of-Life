"Quine of Life by Andrew Vos (andrewvos.com)";game=[
  "                                               ",
  "                                               ",
  "                   XXX   XXX                   ",
  "                                               ",
  "                 X    X X    X                 ",
  "                 X    X X    X                 ",
  "                 X    X X    X                 ",
  "                   XXX   XXX                   ",
  "                                               ",
  "                   XXX   XXX                   ",
  "                 X    X X    X                 ",
  "                 X    X X    X                 ",
  "                 X    X X    X                 ",
  "                                               ",
  "                   XXX   XXX                   ",
  "                                               ",
  "                                               ",
];code=%!gw=47;gh=17;L="X";d=" ";new_game=[];0.upto(
gh-1){|y|current_line = "";
    0.upto(gw-1) { |x|
      life_count = 0

      vector_offsets = [
        [-1,-1], [0,-1], [1,-1],
        [-1,0], [1, 0],
        [-1, 1], [0, 1], [1, 1]
      ]
      vector_offsets.each do |offset_x, offset_y|
        if (0...gh).include?(y + offset_y)
          if (0...gw).include?(x + offset_x)
            life_count += 1 if game[y+offset_y][x+offset_x, 1] == L
          end
        end
      end

      state = d
      if game[y][x,1] == L
        state = d if life_count < 2
        state = d if life_count > 3
        state = L if life_count == 2 || life_count == 3
      else
        state = L if life_count == 3
      end
      current_line += state
    }
    new_game << current_line
  }
  print %{"Quine of Life by Andrew Vos (andrewvos.com)";}
  puts "game=["
  new_game.each_index do |row_index|
    puts '  "' + new_game[row_index] + '",'
  end
  puts "];" + 'code=%' + 33.chr + code
  puts 33.chr;print 'eval code'
!
eval code