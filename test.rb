#exec "cp -n quine.rb output.rb;ruby output.rb | tee temp.rb;mv temp.rb output.rb"
exec "cp quine.rb output.rb;ruby output.rb | tee temp.rb;mv temp.rb output.rb;diff quine.rb output.rb;"