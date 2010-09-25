p "hello"
game_size = 17
game = [
  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
  [" "," "," "," ","█","█","█"," "," "," ","█","█","█"," "," "," "," "],
  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
  [" "," ","█"," "," "," "," ","█"," ","█"," "," "," "," ","█"," "," "],
  [" "," ","█"," "," "," "," ","█"," ","█"," "," "," "," ","█"," "," "],
  [" "," ","█"," "," "," "," ","█"," ","█"," "," "," "," ","█"," "," "],
  [" "," "," "," ","█","█","█"," "," "," ","█","█","█"," "," "," "," "],  
  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
  [" "," "," "," ","█","█","█"," "," "," ","█","█","█"," "," "," "," "],  
  [" "," ","█"," "," "," "," ","█"," ","█"," "," "," "," ","█"," "," "],
  [" "," ","█"," "," "," "," ","█"," ","█"," "," "," "," ","█"," "," "],
  [" "," ","█"," "," "," "," ","█"," ","█"," "," "," "," ","█"," "," "],
  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
  [" "," "," "," ","█","█","█"," "," "," ","█","█","█"," "," "," "," "],
  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "],
  [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "]  
]
life = "█"
death = " "
new_game = []
0.upto(game_size-1) { new_game << [] }

for x in 0...game_size
  for y in 0...game_size
    life_count = 0

    vector_offsets = [
      [-1,-1], [0,-1], [1,-1],
      [-1,0], [1, 0],
      [-1, 1], [0, 1], [1, 1]
    ]
    vector_offsets.each do |offset_x, offset_y|
      range = 0..(game_size-1)
      if range.include?(y + offset_y)
        if range.include?(x + offset_x)
          life_count += 1 if game[y+offset_y][x+offset_x] == life
        end
      end
    end

    new_game[y][x] = death
    if game[y][x] == life
      new_game[y][x] = death if life_count < 2
      new_game[y][x] = death if life_count > 3
      new_game[y][x] = life if life_count == 2 || life_count == 3
    else
      new_game[y][x] = life if life_count == 3
    end
  end
end
game.each do |row|
  puts row.join
end
puts
new_game.each do |row|
  puts row.join
end
