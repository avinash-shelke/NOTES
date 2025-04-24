#erlang 
## Logic and Recursion 

```erlang
-module(drop).

-export([drop/2]).


drop(Planet,Distance) when Distance>=0 ->
Result = case Planet of
earth -> math:sqrt(2*1.23*Distance);
moon -> math:sqrt(2*9.8*Distance);
sun -> math:sqrt(2*14*Distance)
end.
```


```erlang
-module(drop).

-export([drop/2]).


drop(Planet,Distance) when Distance>=0 ->
Result = case Planet of
earth -> math:sqrt(2*1.23*Distance);
moon -> math:sqrt(2*9.8*Distance);
sun -> math:sqrt(2*14*Distance);
_ -> io:format("there is this issue in here")
end,
io:format("Hello World"),

Result.
```

>[!danger]
>When you use `end,` then in this case you have to store in the variable `Result`
>i.e if you want to show the results or else it wont share the 
>also when you use `_` keep in mind about the `; ` you use

### Case : 
```erlang
case "Expression" of
	Pattern1 Where guards -> 
		Expression1;
	Pattern2 where guards -> 
	...

end.
```

# Recursion:

```erlang

-module(tricky).
-export([fact/1]).

fact(N) when N > 1 ->
	io:format("the number is ~w. ~n", [N]),
	Result = N * fact(N - 1),
	io:format("~w Yeild ~w. ~n", [N, Result]),
	Result;

fact(N) when N =< 1 ->
	io:format("Calling from 1.~n"),
	io:format("1 yields 1.~n"),
	1.
```

How actually this was suppose to work ?

```erlang
fact(5)
|
|---> Print: "the number is 5."
|---> Call: fact(4)
          |
          |---> Print: "the number is 4."
          |---> Call: fact(3)
                    |
                    |---> Print: "the number is 3."
                    |---> Call: fact(2)
                              |
                              |---> Print: "the number is 2."
                              |---> Call: fact(1)
                                        |
                                        |---> Print: "Calling from 1."
                                        |---> Print: "1 yields 1."
                                        |---> Return: 1
                              |
                              |<--- Multiply: 2 * 1 = 2
                              |---> Print: "2 Yeild 2."
                              |---> Return: 2
                    |
                    |<--- Multiply: 3 * 2 = 6
                    |---> Print: "3 Yeild 6."
                    |---> Return: 6
          |
          |<--- Multiply: 4 * 6 = 24
          |---> Print: "4 Yeild 24."
          |---> Return: 24
|
|<--- Multiply: 5 * 24 = 120
|---> Print: "5 Yeild 120."
|---> Return: 120

```


## Tail Recursion 

This allows the compiler (or interpreter) to optimize the recursion by reusing the current function's stack frame instead of creating a new one.

Non Tail Recursive : 
```erlang
fact(5):
  5 * fact(4):
      4 * fact(3):
          3 * fact(2):
              2 * fact(1):
                  1

```

Tail Recursive : 
```erlang
fact(5, 1):
  fact(4, 5):
      fact(3, 20):
          fact(2, 60):
              fact(1, 120):
                  120
```


## Why tail recursion is better ?
here's why,

### Why No Stack Growth in Tail Recursion?

#### In Non-Tail Recursion:

- Each recursive call waits for the result of the next call.
- The stack must maintain the "context" of each function call, including:
    - Local variables (`N`).
    - The operation to be performed after the call (`N * ...`).
- The stack grows as the recursion depth increases.

#### In Tail Recursion:

- The result of the current recursive step is passed **immediately** as a parameter to the next call.
- The system doesn't need to keep track of previous calls or pending operations.
- This allows the **current stack frame to be overwritten** with the next call, avoiding stack growth.

Erlang's runtime system recognizes **tail-recursive functions** and applies an optimization called **Tail Call Optimization (TCO)**. This optimization ensures that:

1. The same stack frame is reused for the recursive calls.
2. The memory overhead remains constant, regardless of recursion depth



# String  

```erlang 
io:format("This is one of the output! ~w").
```

to use " in erlang use /"
to use / in erlang use //

### to concatenate the string 

"erl" + "ang"
string:concat("Erl","ang")

N = "Erlang".


## Input and Output in Erlang 

`io:read/1` 
this lets user give the input of atom , tuple, number 

```erlang
-module(ask).
-export([term/0]).
term() ->
	Input = io:read("What {planemo, distance} ? >>"),
	Term = element(2,Input),
	drop:fall_velocity(Term).
```

The `element/2` function in Erlang is used to access a specific element of a tuple.

```erlang
Erlang = {1,2,3}.
{1,2,3}

element(3,Erlang).
% this should give 3
```

>[!faq] Took long to understand 
>io:read() gives out the {ok,the_input_you_gave}.

Another important thing to note is 
==  is the equals operator and /= is the not equals operator 

if you are using more than one function 
use **==;==**
to differentiate between the two functions 

, also acts like and 

> [!danger] `;` in Erlang Guards
>  **`,`**: Acts as a logical **AND**; all conditions in the guard must evaluate to `true`.
>  **`;`**: Acts as a logical **OR**; if any one clause separated by `;` evaluates to `true`, the guard succeeds.


# Playing with process

Process identifier i.e pid 

```erlang
self()
```

the representation is triple 
set of three integer that give the unique identifier for the process 

if you want to address a process by pid/3 you can it  ==Doubt== what is the use of pid 

```
Printed process ids < A.B.C > are composed of 6:

A, the node number (0 is the local node, an arbitrary number for a remote node)
B, the first 15 bits of the process number (an index into the process table) 7
C, bits 16-18 of the process number (the same process number as B) 7
```

### Sending the message in ERL

```erlang
self() ! test1
```

this is how you send the message 
! is called the bang operator ( ! this always returns a message )

flush()
that what if you want to see in the mailbox 

##### Proper way to read the mailbox 
gives you a chance to do something with the message 

receive Y -> Y end.

but if already you have done 

```erlang
1> self() ! test1.
test1
2> receive X -> X end.
test1
3> self() ! test1.
test1
4> receive X -> X end.
test1
```

if you do 

```erlang 
5> self() ! test2.
test2
6> receive X -> X end.
```

### Spawning the function 

Process at the heart are functions only 
whereis(<registered_name>)

### Process talking 