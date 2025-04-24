#erlang 
[[Programming Erlang - Joe Armstrong ]]
[[Getting Started in Erlang - Simon Laurent]]
[[Memory Allocation in Erlang]]
[[Tic - Tac - Toe in Erlang]]
[[Learn you some Erlang]]


Functional programming (no lops , varaible are immuatable )

Fault Tolerance : it has process , every process has its own memory 
dont interfere with each other 

OTP library : 
- Supervision process 
- concurrency 
OTP messages ( VIP messages )

Highest uptime 

sequentially <<< paralleled 

two databases : in erlang amnesia 
now the data is in postgres
NItrogen framework : used for the UI 

Aura V2.0 
Voice:  free switch 


JOE ARMSTRONG : PROGRAMMING ERLANG 
BEAM (compile version)
- class 

Number of core : to do the scalability 
.erl files -> .bean file after compiling 
it has its own shell 

27.0.1 version 
24 stable version 


> 3+4, 5+6.

there are not limitation in here 
you dont have to define the datatypes 
Atom is a constant value 
any alphabets what ever i write in small case is called as atom 

```erlang 
3  + 4, 5 + 6.
```

- in Erlang, there is pattern matching 
- to match the cases we have atom 

```erlang

aef123213
'aeadflkjjkl2341'

```

Variable 
```erlang
A = 1.
```
1 is not assigned to A, it is a pattern matching and it is immutable , it is bound 
else it is a compare operator 
Anything can be bound to a variable 

Dynamically allocates the memory 

```erlang
a.

b.

'A'. 
```


no string as a datatype 
there is list 

List :
list you can add any data types in there

```erlang 
"abc".
```

```
[68,69,67]

"CDE"
```

Tuple 
fixed value 
```erlang
{1,4,afdsafd,true,falga}
```

```
f(A). 
```
u cannot use it in coding 

Binary 

```erlang
<<"4">>
```
store in bit so we  can byfugate it 

every function will give a output : return the value OK 
error is a atom 
in erlang it does the last operation as the 
use ; for function overloading 
signature wise 

# 2nd Lecture 

we do have the erlang: 
read the function and what all these functions do ? 
erlang erts.
erlang terms  convert from one data type to other 

exception crashes the process 
v15.2 


erlang:round() 
> we have to go through every function 

erlang.org/docs/23 

math.ceil() 
go through the modules 

v(4).
to get the output of the line 4th 

calling functions() 
erlang/org/docs/24 

the data conversion u should know 
() is the one that is calculated 

.0809098089 
this is a syntax error 

we can use the exponent notation in here 
we use camelCase for varaible 
then we use the this_is_function for the erlang functions 

b() we can use it for the bound varaibles 
f() to forget the bound vararibles 

every function can be kept into a variable 
Binding the RHS to the LHS 
fun() -> end. 
end is the of this 

> how does the #Fun<> is created ??

~p is used for the printing out the input 
~d percent default integers 
~s to the other 

in math it just needs the interger or the float itself 
arity is the number of arguments 

test: 
returns the function 
module:function() --> you can do this 

you can also import the 
using import dont use the 
check the 

Documenting Modules we can do through the docs.file 
is erlang platform independent 

pattern matching goes from top to bottom 

_ Distance for to avoid warning 
anonymous vararible 
these are changed by ; 


andalso 
oralso 

false andalso 1/0 
so here we first check the first one then the other end of false 

orelse in here also the first should be checked 
recursion 
and communication with humans 
lists 


## 3rd KT session 

before end we should not have . , 
case over if 
you can use ~p- over ~w as the ~w will give the List of integer 
~ts mostly used to unicode character 
export

## 4th KT session 

string arlang 
len and length difference 
we use to do string mostly 
: ==find the ones that are not easy to understand==
string:strip() : removes of the space in hhere
string:to_integer("123234vfed"). -> look for this too 

$the_number_that_you_want)to_find for the vallue of)
![[Screenshot from 2024-12-20 17-09-09.png]]
proplists   
 
List function 
prop list function 

know about compact function in here 
while using foreach have the anonymous function 

==foreach returns function 
map returns function in the list format 
filter gives out as the boolean 
filtermap gives out as true boolean  (mapfold is also there)
foldl and foldr : iteration **imp** 
all (AND) returns true if all set come as true
any (OR)==

cannot break in between in here 
so all of them will iterate 

trick : exception to break the statement 

keyreplace 
keyfind 


Q ) try to implement the pascal triangle 
Q ) implementation of each loop
Q ) Logic usage ( questions ) 
for each to iterate and to some operation 


Documentation: 
term() this can be anything any 
also for higher order function (Simon Laurent)
list comprehension : anynomous fucntion calls, (X*% 

map 
record 

# Go through this question 
https://leetcode.com/problems/minimum-operations-to-exceed-threshold-value-i/submissions/1483973094/




) 
