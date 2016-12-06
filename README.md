# RFPL table parser

rfpl_parser.rb is a Russian Premier League [RFPL](http://rfpl.org) standings table parser, based on Ruby.

### How to run

```ruby
irb(main):014:0> RfplParser.get_data
=> [
{:name=>"Спартак", :games=>"17", :wins=>"13", :draws=>"1", :losts=>"3", :balls_scored=>"26", :balls_missed=>"13", :points=>"40"}, 
{:name=>"Зенит", :games=>"17", :wins=>"10", :draws=>"5", :losts=>"2", :balls_scored=>"33", :balls_missed=>"13", :points=>"35"}, 
{:name=>"ПФК ЦСКА", :games=>"17", :wins=>"9", :draws=>"5", :losts=>"3", :balls_scored=>"21", :balls_missed=>"11", :points=>"32"}, 
{:name=>"Терек", :games=>"17", :wins=>"8", :draws=>"4", :losts=>"5", :balls_scored=>"21", :balls_missed=>"21", :points=>"28"}, 
{:name=>"Краснодар", :games=>"17", :wins=>"7", :draws=>"7", :losts=>"3", :balls_scored=>"24", :balls_missed=>"14", :points=>"28"}, 
{:name=>"Амкар", :games=>"17", :wins=>"7", :draws=>"6", :losts=>"4", :balls_scored=>"16", :balls_missed=>"12", :points=>"27"}, 
{:name=>"Ростов", :games=>"17", :wins=>"7", :draws=>"4", :losts=>"6", :balls_scored=>"19", :balls_missed=>"12", :points=>"25"}, 
{:name=>"Уфа", :games=>"17", :wins=>"7", :draws=>"4", :losts=>"6", :balls_scored=>"12", :balls_missed=>"13", :points=>"25"}, 
{:name=>"Рубин", :games=>"17", :wins=>"6", :draws=>"5", :losts=>"6", :balls_scored=>"20", :balls_missed=>"19", :points=>"23"}, 
{:name=>"Локомотив", :games=>"17", :wins=>"5", :draws=>"8", :losts=>"4", :balls_scored=>"21", :balls_missed=>"13", :points=>"23"}, 
{:name=>"Анжи", :games=>"17", :wins=>"5", :draws=>"5", :losts=>"7", :balls_scored=>"13", :balls_missed=>"18", :points=>"20"}, 
{:name=>"Крылья Советов", :games=>"17", :wins=>"3", :draws=>"6", :losts=>"8", :balls_scored=>"17", :balls_missed=>"20", :points=>"15"}, 
{:name=>"Урал", :games=>"17", :wins=>"3", :draws=>"5", :losts=>"9", :balls_scored=>"11", :balls_missed=>"25", :points=>"14"}, 
{:name=>"Оренбург", :games=>"17", :wins=>"2", :draws=>"6", :losts=>"9", :balls_scored=>"11", :balls_missed=>"21", :points=>"12"}, 
{:name=>"Арсенал", :games=>"17", :wins=>"2", :draws=>"6", :losts=>"9", :balls_scored=>"6", :balls_missed=>"23", :points=>"12"}, 
{:name=>"Томь", :games=>"17", :wins=>"2", :draws=>"3", :losts=>"12", :balls_scored=>"8", :balls_missed=>"31", :points=>"9"}
]
```