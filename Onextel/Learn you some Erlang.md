#erlang 

The Hitchhiker's guide to concurrency 

1. spawning new processes 
2. sending messages 
3. receiving messages 

Process is nothing in fact a function
Which actually means is ==a process runs a function and once its done it disappears====
A Process has a hidden state 

```erlang
1> F = fun() -> 2 + 2 end.
#Fun<erl_eval.20.67289768>
2> spawn(F).
<0.44.0>
```
the result of spawn is a process identifier also called as pid 
if you want to get the result either you can do io:format 

==timer:sleep/1==

>[!faq]
> erl +S +1
> how does the smp work ?
> how does the smp work 


flush is like for the reciving of the messages to the mail box 
spawn(package name , function name , [])

