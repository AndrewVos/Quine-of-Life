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
];code=%!gw=47;gh=17;L="X";d=" ";ng=[];0.upto(gh-1){
|y|cl="";0.upto(gw-1){|x|lc=0;//;vo=[[-1,-1],[0,-1],
[1,-1],[-1,0],[1,0],[-1,1],[0,1],[1,1]];vo.each{|ox,
oy|;if(0..gh-1).include?(y+oy);if(0..gw-1).include?(
x+ox);if(game[y+oy][x+ox,1]==L);lc+=1;end;end;end;};
st=d;if(game[y][x,1]==L);st=case(lc);when(0..2),(4..
8)then(d);when(2..3)then(L);end;else;if(lc==3);st=L;
end;end;cl+=st};ng<<cl;};av=%|34$81$117$105$110$101$
32$111$102$32$76$105$102$101$32$98$121$32$65$110$100
$114$101$119$32$86$111$115$32$40$97$110$100$114$101$
119$118$111$115$46$99$111$109$41$34$59|

print(av.split("$").map{|i| i.to_i}.pack("C*"))
  puts "game=["
  ng.each_index do |row_index|
    puts '  "' + ng[row_index] + '",'
  end
  puts "];" + 'code=%' + 33.chr + code
  puts 33.chr;print 'eval code'
!
eval code