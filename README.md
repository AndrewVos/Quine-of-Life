Quine of Life
=============

[Conway's Game of Life](http://en.wikipedia.org/wiki/Conway's_Game_of_Life) in [Quine](http://en.wikipedia.org/wiki/Quine_(computing)) format.

Every time you execute the script, the game of life will be iterated.

Video
-----

A video can be found [here](http://vimeo.com/15295218)

Code
----

### First Run

```ruby
	"Quine of Life by Andrew Vos (andrewvos.com)";game=[
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                      X X X                      ",
	"                      X   X                      ",
	"                      X   X                      ",
	"                      X   X                      ",
	"                      X X X                      ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	];code=%!gw=49;gh=17;l="X";d=" ";ng=[];0.upto(gh-1){
	|y|cl="";0.upto(gw-1){|x|lc=0;//;vo=[[-1,-1],[0,-1],
	[1,-1],[-1,0],[1,0],[-1,1],[0,1],[1,1]];vo.each{|ox,
	oy|;if(0..gh-1).include?(y+oy);if(0..gw-1).include?(
	x+ox);if(game[y+oy][x+ox,1]==l);lc+=1;end;end;end;};
	st=d;if(game[y][x,1]==l);st=case(lc);when(0..1),(4..
	8)then(d);when(2..3)then(l);end;else;if(lc==3);st=l;
	end;end;cl+=st};ng<<cl;};av=%|34$81$117$105$110$101$
	32$111$102$32$76$105$102$101$32$98$121$32$65$110$100
	$114$101$119$32$86$111$115$32$40$97$110$100$114$101$
	119$118$111$115$46$99$111$109$41$34$59|;";-)";print(
	av.split("$").map{|i|i.to_i}.pack("C*"));puts"game=[
	";ng.each_index{|ri|puts('"'+ng[ri]+'",')};x=33.chr;
	print(""+"];"+'code=%'+x+code+x);puts(";eval(code)"+
	";"+34.chr+"Finished"+34.chr)!;eval(code);"Finished"
```

### Second Run

```ruby
	"Quine of Life by Andrew Vos (andrewvos.com)";game=[
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                       X X                       ",
	"                     XX   XX                     ",
	"                     XXX XXX                     ",
	"                     XX   XX                     ",
	"                       X X                       ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	];code=%!gw=49;gh=17;l="X";d=" ";ng=[];0.upto(gh-1){
	|y|cl="";0.upto(gw-1){|x|lc=0;//;vo=[[-1,-1],[0,-1],
	[1,-1],[-1,0],[1,0],[-1,1],[0,1],[1,1]];vo.each{|ox,
	oy|;if(0..gh-1).include?(y+oy);if(0..gw-1).include?(
	x+ox);if(game[y+oy][x+ox,1]==l);lc+=1;end;end;end;};
	st=d;if(game[y][x,1]==l);st=case(lc);when(0..1),(4..
	8)then(d);when(2..3)then(l);end;else;if(lc==3);st=l;
	end;end;cl+=st};ng<<cl;};av=%|34$81$117$105$110$101$
	32$111$102$32$76$105$102$101$32$98$121$32$65$110$100
	$114$101$119$32$86$111$115$32$40$97$110$100$114$101$
	119$118$111$115$46$99$111$109$41$34$59|;";-)";print(
	av.split("$").map{|i|i.to_i}.pack("C*"));puts"game=[
	";ng.each_index{|ri|puts('"'+ng[ri]+'",')};x=33.chr;
	print(""+"];"+'code=%'+x+code+x);puts(";eval(code)"+
	";"+34.chr+"Finished"+34.chr)!;eval(code);"Finished"
```

### Third Run

```ruby
	"Quine of Life by Andrew Vos (andrewvos.com)";game=[
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                      X   X                      ",
	"                     X     X                     ",
	"                    X  X X  X                    ",
	"                     X     X                     ",
	"                      X   X                      ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	];code=%!gw=49;gh=17;l="X";d=" ";ng=[];0.upto(gh-1){
	|y|cl="";0.upto(gw-1){|x|lc=0;//;vo=[[-1,-1],[0,-1],
	[1,-1],[-1,0],[1,0],[-1,1],[0,1],[1,1]];vo.each{|ox,
	oy|;if(0..gh-1).include?(y+oy);if(0..gw-1).include?(
	x+ox);if(game[y+oy][x+ox,1]==l);lc+=1;end;end;end;};
	st=d;if(game[y][x,1]==l);st=case(lc);when(0..1),(4..
	8)then(d);when(2..3)then(l);end;else;if(lc==3);st=l;
	end;end;cl+=st};ng<<cl;};av=%|34$81$117$105$110$101$
	32$111$102$32$76$105$102$101$32$98$121$32$65$110$100
	$114$101$119$32$86$111$115$32$40$97$110$100$114$101$
	119$118$111$115$46$99$111$109$41$34$59|;";-)";print(
	av.split("$").map{|i|i.to_i}.pack("C*"));puts"game=[
	";ng.each_index{|ri|puts('"'+ng[ri]+'",')};x=33.chr;
	print(""+"];"+'code=%'+x+code+x);puts(";eval(code)"+
	";"+34.chr+"Finished"+34.chr)!;eval(code);"Finished"
```

### Fourth Run

```ruby
	"Quine of Life by Andrew Vos (andrewvos.com)";game=[
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                     XX   XX                     ",
	"                    XXX   XXX                    ",
	"                     XX   XX                     ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	"                                                 ",
	];code=%!gw=49;gh=17;l="X";d=" ";ng=[];0.upto(gh-1){
	|y|cl="";0.upto(gw-1){|x|lc=0;//;vo=[[-1,-1],[0,-1],
	[1,-1],[-1,0],[1,0],[-1,1],[0,1],[1,1]];vo.each{|ox,
	oy|;if(0..gh-1).include?(y+oy);if(0..gw-1).include?(
	x+ox);if(game[y+oy][x+ox,1]==l);lc+=1;end;end;end;};
	st=d;if(game[y][x,1]==l);st=case(lc);when(0..1),(4..
	8)then(d);when(2..3)then(l);end;else;if(lc==3);st=l;
	end;end;cl+=st};ng<<cl;};av=%|34$81$117$105$110$101$
	32$111$102$32$76$105$102$101$32$98$121$32$65$110$100
	$114$101$119$32$86$111$115$32$40$97$110$100$114$101$
	119$118$111$115$46$99$111$109$41$34$59|;";-)";print(
	av.split("$").map{|i|i.to_i}.pack("C*"));puts"game=[
	";ng.each_index{|ri|puts('"'+ng[ri]+'",')};x=33.chr;
	print(""+"];"+'code=%'+x+code+x);puts(";eval(code)"+
	";"+34.chr+"Finished"+34.chr)!;eval(code);"Finished"
```
