# exercise 1
def string_shuffle(s)
  s.split('').shuffle.join
end

# exercise 2
class String
  def shuffle
    self.split('').shuffle.join
  end
end

# exercise 3
person1 = {first:"mom",last:"yes,really"}
person2 = {first:"dad",last:"go to your room"}
person3 = {first:"kid",last:"UGGH I HATE YOU"}
params = { mother:person1, father:person2, child:person3 }

# exercise 4
{ "a" => 100, "b" => 200}.merge({ "b" => 300 })
# produces: { "a"=>100, "b"=>300 }
