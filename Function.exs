sum=fn 
(a,b)->a+b
end

swap=fn
{a,b}->{b,a}
end

tuple_to_list= fn
{a,b}->[a,b]
end

list_concat=fn
([:a,:b],[:c,:d])->[:a,:b]++[:c,:d]
end

goodmorning_various=fn
(:en,name)->"Good Morning: #{name}"
(:fn,name)->"Hyvää huomenta: #{name}"
(:ge,name)->"Guten Morgen:#{name}"
end

problem1=fn
(0,0,_)->"FizzBuzz"
(0,_,_)->"Fizz"
(_,0,_)->"Buzz"
(_,_,c)->c
end

problem2=fn
n->problem1.(rem(n,3),rem(n,5),n)
end

IO.puts problem1.(1,1,1)
IO.puts problem2.(10)
IO.puts problem2.(11)
IO.puts problem2.(12)
IO.puts problem2.(13)
IO.puts problem2.(14)
IO.puts problem2.(15)
IO.puts problem2.(16)



IO.puts sum.(100,200)
{a,b}=swap.( {100,200} )
list=tuple_to_list.({1,2})
IO.inspect list
IO.inspect list_concat.([:a,:b],[:c,:d])
IO.puts goodmorning_various.(:ge,"Anirudh")
IO.puts a
IO.puts b

