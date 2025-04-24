---
share_link: https://share.note.sx/focd9lm5#7Urgbw8Hm8dlivH4CiOj+eS58DA8oqnFhnCZB3FL8As
share_updated: 2025-01-17T11:45:54+05:30
---
#erlang 
>[!faq] Good Shit 
>The best way to get help is to first try Google; if Google can’t help, send mail
to the Erlang mailing list.3 You can also try #erlounge or #erlang at irc.freenode.net
for a faster response.

# Why Erlang?

Introduction 
- Module must start with a small letter 
- Technically module name is `atom`
- module declaration is a export declaration 
- in java as there is new, in here we have spawn 
- function which are not in the module will be considered as private 

Benefits of Concurrency 
- Performance :  Erlang programs written twenty years ago for a sequential machine now just run faster when we run them on modern multi cores
- Scalability : Here if small independent process right to scale them it is easy, Erlang virtual machine automatically distributes the execution of the process
- Fault Tolerance : Independence and hardware redundancy, both the process independence and failure detection are built in Erlang VM 
- Clarity : easy to write the sequential code to parallel code. 

>[!info] Turn on
>Concurrent program : that is written in concurrent programming language 
>
>Concurrent programming language : Language that has explicit language constructs(built in for concurrency ) for writing concurrent programs. There constructs behave the same way on all OS 
>
>Parallel Computer : that has several processing units 

Erlang process is a little virtual machine that can evaluate single erlang function shoulnt be confused to the os process 

**Act of identifying process is modeling concurrency**
just like act of identifying objects in the Object oriented programming 

>[!info] Turn on
>Sequential : for writing sequential program and have no linguist constructs 
>Concurrent : for writing concurrent program and have special constructs 

Erlang concurrency works the same way on all operating systems

```erlang
Erlang/OTP 25 [erts-13.2.2.5] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit:ns] 

Eshell V13.2.2.5 (abort with ^G)
```
- OTP: Open Telecom Platform 
- erts : erlang runtime system -> process scheduling and garbage collections 
- source : it was compiled from the source code 
- smp : symmetric multi processing -> to run program concurrently 
- ds : distrubuted system 
	- The numbers represent configuration details of the distributed system (for example, the number of schedulers or other internal settings). In this case, `8:8:10` are specific parameters for the runtime.
- async : Indicates the number of asynchronous threads being used for performing I/O operations outside the main scheduler threads. 
	- Here, only 1 asynchronous thread is configured.
- jit:ns : execution speed of code by compiling it to machine code at runtime.


= Operator 
```erlang 
X = 123.

X *2.

X = 999.
%error expception error
```
we cant rebind the varaibles in erlang 
here = is not a assignment operator it is a ==pattern matching operator== 


### Variable and atoms 
```erlang 
X = 2 
% this is a variable 

a 
%this is a atom
```
variable always starts with a Uppercase letter 
Erlang has single assignment variables 
symbolic constants are called as atoms 

> [!Danger]
>  First, X is not a variable, not in the sense that you’re used to in languages such as Java and C.
>  Second, = is not an assignment operator; 
>  it’s a pattern matching operator.

Bound Variable : That is bind to a certain value 
Unbound Variable : that has no value assigned 

##### Variable Scope : 
- Erlang does **not** have global or private variables shared between clauses in the same function. Each clause has its own separate scope.
- Once a function clause finishes execution, the variables defined within that clause go out of scope.

### **Modules** : 
Processes evaluate functions that are defined in modules. Modules are files with the extension .erl and must be compiled before they can be run.

```erlang
-module(test).

-export([helloWorld/0]).

helloWorld()->

io:format("Hello World~n").
```
here test is the module or the filename
export we write the function inside 

Compile in erl shell : 
```shell
erl 
c(test). 
test:helloWorld.
```

Compile outside the erl shell : 
```erlang
$ erlc hello.erl
$ erl -noshell -s hello start -s init stop
```
- `erlc` evokes the Erlang compiler from the command line.
- The compiler compiles the code in` hello.erl` and produces an object code file called **hello.beam**
- ` $erl -noshell` ... command loads the module hello
- evaluates the function `hello:start()`. After this, it evaluates the expression init:stop(), which terminates the Erlang session.
- -s : start 


>[!info] Keep in ur mind 
>### Why the Difference?
>- The **interactive shell** is designed to display results for debugging and exploration. It evaluates and prints return values by default.
>- The **`-noshell` mode** is designed for running scripts or automating tasks, where unnecessary outputs (like return values) might clutter the result.


Process 

basic unit of concurrency is called as a **process**
> Process is a **lightweight virtual machine** that can communicate with other
   processes only by sending and receiving messages.
    

# The Client and Server Project 



# Sequential Programming 

Staring and stopping Erlang shell 
```erlang 
$ erl 
```

to quit the program 
```erlang
q().
% this is for controlled shutdown
ok
```
Ctrl + C ( also does work )
this may lead to some of the data corruption

```erlang
halt().
```

> Note : you cant have the **syntactic forms in erlang module** cannot be used in the erland shell 

U can also do Ctrl + G.
user switch -> 
q (press q)

## Erlang Shell 
```
Command Description
^A Beginning of line
^D Deletes current character
^E End of line
^F or right arrowForward character
^B or left arrowBackward character
^P or up arrowPrevious line
^N or down arrowNext line
^T Transposes last two characters
Tab  Tries to expand current module or function name
```

### Arithmetic Operation 
Erlang follows BODMAS rule while the execution 

> Note : Erlang uses arbitrary size integers 

```erlang
16#cafe * 32#sugar.
1577682511434
```
Base Notation in Erlang `Base#Notation`

so in here as you can see , below breaking Down `16#cafe`
- **Base**: `16` (hexadecimal).
- **Number**: `cafe` (a valid hexadecimal number).

Convert `16#cafe` to decimal:
`cafe = (c * 16^3) + (a * 16^2) + (f * 16^1) + (e * 16^0)      
`= (12 * 4096) + (10 * 256) + (15 * 16) + (14)      
`= 49152 + 2560 + 240 + 14     
 `= 51966 (decimal).`


### Pattern Matching Operator 
LHS = RHS this really means this 

### Why single Assignment Improves our Program ?
- It is just reference to a value 
- A bound variable is represented by a pointer to an area of storage that contains a value 
- it helps in debugging if there is some issue in the value then all we have to do is to stop the issue is to locate it and correct it 
> How does erlang handle memory issue in here ? as not state is mutable then it may cause memory overflow right ? 

### Floating Point Numbers 
- if you want floating point as the answer while division 5/3
- if you want to get integer 5 div 3  OR 5 rem 3 
- Erlang uses 64-bit IEEE 754-1985 floats, so programs using floats will have the same kind of rounding or precision problems associated with floats that you would get in a language like C


### Atoms 
- Used to represents constant values 
- Atoms are global and achieved without macro or include 
- 'Variable' this are considered as atoms 
- here 'a' is equivalent as a 

### Tuples 
- group a fixed number of items into a single entity
- P = {1,11,23}
- P = {point,1,2} we use atom to represent what is the tuple meant for (ease of understanding)
- Tuple are created automatically when we declare them and are destroyed when they are no longer used 
- Garbage collector in erlang does all of the unused memory 

**Extracting Values of Tuple**
to extract the values from a tuple we use Pattern Matching Operator 
```erlang
1> Point = {point, 10, 45}.
{point, 10, 45}.

2> {point, X, Y} = Point.
{point,10,45}

3> X.
10

4> Y.
45
```
As you can see, the tuples on both sides of the equal sign must have the same
number of elements, and the corresponding elements on both sides must
bind to the same value.

```erlang
30> Op = {Pussy,{another,tuple,in,here},Ussy,Yash}.
{{part,69,69},
 {another,tuple,in,here},
 69,
 {person,he,is,a,boy}}

31> {_,{_,_,Where,_},_,_} = Op.      
{{part,69,69},
 {another,tuple,in,here},
 69,
 {person,he,is,a,boy}}
 
32> Where.
in
```

> The symbol _ is called an anonymous variable.

### List
- Lists are used to store arbitrary numbers of things.
- What is the difference between in tuple and list 
	- List has a change able size
- First element of the list is called as Head 
- Apart from the head of the list rest other is the tail 
- the | can divide the list into two parts 
	- First and the Last ( can name it whatever way you want)

```erlang
Items = [apple, banana, cherry].
[First | Rest] = Items.
% First = apple, Rest = [banana, cherry]
```


 - There are two types of list 
 - Proper List 
 ```erlang
 List = [1 | [2 | [3 | []]]]. % Equivalent to [1, 2, 3]
```
in the proper list  we have '|' and the Tail is also a list 
this is equivalent to 
```erlang
List = [1,2,3].
```

```erlang
Head: 1 -> Tail: [2 | [3 | []]]
         Head: 2 -> Tail: [3 | []]
                  Head: 3 -> Tail: []
```

```erlang
[1] -> [2] -> [3] -> []
```

**Recursive Nature of the Proper List**
```erlang
3> [H1 | L1] = List.
[1,2,3]
4> [H2 | L2] = L1.
[2,3]
5> [H3 | L3] = L2.
[3]
6> L3.
[]
```


- I**mproper List** 
```erlang 
ImproperList = [1 | 2].
```
in the improper list we don't have the tail as the list.
	

### Modifying a Proper List 
```erlang
Things = [there,is | List3].
[there,is,[1,2],4,5,6]
```

### String 
- Strictly speaking, there are no strings Erlang 
- String can be written here as a list of integer or as a binary 
	- then each integer acts as a binary number 
- String is just a list of Integers 

```erlang
Name = "SOHAM"
Name = [83, 111, 104, 97, 109].
"SOHAM"
```

>[!danger]
>only io statements have the return as ok 

