game = [
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
];code=%!
  game_width=47
  game_height=17
  life="X"
  death=" "
  new_game=[]

  for y in 0...game_height
    current_line = ""
    for x in 0...game_width
      life_count = 0

      vector_offsets = [
        [-1,-1], [0,-1], [1,-1],
        [-1,0], [1, 0],
        [-1, 1], [0, 1], [1, 1]
      ]
      vector_offsets.each do |offset_x, offset_y|
        if (0...game_height).include?(y + offset_y)
          if (0...game_width).include?(x + offset_x)
            life_count += 1 if game[y+offset_y][x+offset_x, 1] == life
          end
        end
      end

      state = death
      if game[y][x,1] == life
        state = death if life_count < 2
        state = death if life_count > 3
        state = life if life_count == 2 || life_count == 3
      else
        state = life if life_count == 3
      end
      current_line += state
    end
    new_game << current_line
  end

  puts "game = ["
  new_game.each_index do |row_index|
    puts '  "' + new_game[row_index] + '",'
  end
  puts "];" + 'code=%' + 33.chr + code
  puts 33.chr;print 'eval code'
!
eval code