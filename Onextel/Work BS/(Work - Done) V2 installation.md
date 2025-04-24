Nitrogen and UI Hub 

before Docker Installation 

story 806 

before docker 
make karne ke pahile 

sudo apt install pkg-config -y  
cd myapp/  
rm -rf _build  
rm rebar.lock  
make  
./bin/nitrogen console


before that cookie name as test



rebar3.config 

rel_sep 

{erl_opts, [no_debug_info]}.

{overrides, [{override, [{erl_opts, [no_debug_info]}]}]}.

{deps, [
  {syn, {git, "https://github.com/ostinelli/syn.git", {tag, "2.1.1"}}},
  % {hanoidb, {git, "https://github.com/krestenkrab/hanoidb.git"}},
  {erlpass, {git, "https://github.com/ferd/erlpass", {tag, "1.0.5"}}},
  {edate,     {git, "https://github.com/dweldon/edate.git",     {branch, "master"}}},
  {recon ,    {git, "https://github.com/ferd/recon.git"    ,       {branch,"master"}}}
    % {esmpp, {git, "https://github.com/1xtel/esmpp.git", {tag, "0.0.13"}}},
    % {jobs, {git, "https://github.com/uwiger/jobs.git", {tag, "0.10.0"}}},
    % {oserl, {git, "https://github.com/iamaleksey/oserl.git", {branch, "master"}}},
    % {pqueue, {git, "git://github.com/okeuday/pqueue.git", {tag, "v2.0.1"}}},
    % {esmpp_lib, {git, "https://github.com/Alex-Zhuk/esmpp_lib", {branch, "master"}}},
    % {lager, {git, "https://github.com/erlang-lager/lager", {tag, "3.8.2"}}},
    % {erlksuid, {git, "https://github.com/exograd/erl-ksuid", {tag, "v1.1.2"}}},
    % {pgpool, {git, "git://github.com/ostinelli/pgpool.git", {tag, "2.1.0"}}}
]}.

{shell, [
  % this file contains config. for printing logs of console
    {config, "config/sys.config"},

  % order should the name of repo in last
    {apps, [mnesia, syn, onexusrmgmt]}
]}.


{erl_opts, [no_debug_info]}.

{overrides, [{override, [{erl_opts, [no_debug_info]}]}]}.

{deps, [
  {syn, {git, "https://github.com/ostinelli/syn.git", {tag, "2.1.1"}}},
  % {hanoidb, {git, "https://github.com/krestenkrab/hanoidb.git"}},
  {erlpass, {git, "https://github.com/ferd/erlpass", {tag, "1.0.7"}}},
  {edate,     {git, "https://github.com/dweldon/edate.git",     {branch, "master"}}},
  {recon ,    {git, "https://github.com/ferd/recon.git"    ,       {branch,"master"}}}
    % {esmpp, {git, "https://github.com/1xtel/esmpp.git", {tag, "0.0.13"}}},
    % {jobs, {git, "https://github.com/uwiger/jobs.git", {tag, "0.10.0"}}},
    % {oserl, {git, "https://github.com/iamaleksey/oserl.git", {branch, "master"}}},
    % {pqueue, {git, "git://github.com/okeuday/pqueue.git", {tag, "v2.0.1"}}},
    % {esmpp_lib, {git, "https://github.com/Alex-Zhuk/esmpp_lib", {branch, "master"}}},
    % {lager, {git, "https://github.com/erlang-lager/lager", {tag, "3.8.2"}}},
    % {erlksuid, {git, "https://github.com/exograd/erl-ksuid", {tag, "v1.1.2"}}},
    % {pgpool, {git, "git://github.com/ostinelli/pgpool.git", {tag, "2.1.0"}}}
]}.

{shell, [
  % this file contains config. for printing logs of console
    {config, "config/sys.config"},

  % order should the name of repo in last
    {apps, [mnesia, syn, onexusrmgmt]}
]}.





# Improvements : 

cd new terminal 
password 

yes
yes

rebar3 reinstall 

disable the OTP 

can we automate it UI part using playwright 

Sant : "build once and use it again"

tar to untar 
UI HUB tar  --> src myapp to link 
rebar3 compile 
line 81 build 

git rebar3 download able version 
jayant check if you want or not 

smsc move it to docker 
api in docker 

change auth at 8181 

we can check the other on the end part 

baibu 

Fixed module :
myapp 
erlang 
rebar3 
yaws : fixed version 
checkout to specific 
fork and clone at jquery 






