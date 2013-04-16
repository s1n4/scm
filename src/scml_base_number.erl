%%% The MIT License
%%%
%%% Copyright (C) 2013 by Joseph Wayne Norton <norton@alum.mit.edu>
%%%
%%% Permission is hereby granted, free of charge, to any person obtaining a copy
%%% of this software and associated documentation files (the "Software"), to deal
%%% in the Software without restriction, including without limitation the rights
%%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%%% copies of the Software, and to permit persons to whom the Software is
%%% furnished to do so, subject to the following conditions:
%%%
%%% The above copyright notice and this permission notice shall be included in
%%% all copies or substantial portions of the Software.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
%%% THE SOFTWARE.

-module(scml_base_number).

-include("scmi.hrl").

%% SCML Exports
-export(['$scml_exports'/0]).

%% API
-export(['number?'/1
         , 'complex?'/1
         , 'real?'/1
         , 'rational?'/1
         , 'integer?'/1
         , 'exact?'/1
         , 'inexact?'/1
         , 'exact-integer?'/1
         , 'zero?'/1
         , 'positive?'/1
         , 'negative?'/1
         , 'odd?'/1
         , 'even?'/1
         , '+'/1
         , '*'/1
         , '-'/1
         , '/'/1
         , 'abs'/1
         , 'floor/'/2
         , 'floor-quotient'/2
         , 'floor-remainder'/2
         , 'truncate/'/2
         , 'truncate-quotient'/2
         , 'truncate-remainder'/2
         , 'quotient'/2
         , 'remainder'/2
         , 'modulo'/2
         , 'gcd'/1
         , 'lcm'/1
         , 'numerator'/1
         , 'denominator'/1
         , 'floor'/1
         , 'ceiling'/1
         , 'truncate'/1
         , 'round'/1
         , 'rationalize'/2
         , 'square'/1
         , 'exact-integer-sqrt'/1
         , 'expt'/2
         , 'inexact'/1
         , 'exact'/1
         , 'number->string'/1
         , 'number->string'/2
         , 'string->number'/1
         , 'string->number'/2
        ]).

%%%===================================================================
%%% Types/Specs/Records
%%%===================================================================

%%%===================================================================
%%% SCML Exports
%%%===================================================================

-spec '$scml_exports'() -> [{scm_symbol(), scmi_nip()}].
'$scml_exports'() ->
    [{'number?', #nipn{val=fun 'number?'/1}}
     , {'complex?', #nipn{val=fun 'complex?'/1}}
     , {'real?', #nipn{val=fun 'real?'/1}}
     , {'rational?', #nipn{val=fun 'rational?'/1}}
     , {'integer?', #nipn{val=fun 'integer?'/1}}
     , {'exact?', #nipn{val=fun 'exact?'/1}}
     , {'inexact?', #nipn{val=fun 'inexact?'/1}}
     , {'exact-integer?', #nipn{val=fun 'exact-integer?'/1}}
     , {'=', #nipv{val=fun '='/1}}
     , {'<', #nipv{val=fun '<'/1}}
     , {'>', #nipv{val=fun '>'/1}}
     , {'<=', #nipv{val=fun '<='/1}}
     , {'>=', #nipv{val=fun '>='/1}}
     , {'zero?', #nipn{val=fun 'zero?'/1}}
     , {'positive?', #nipn{val=fun 'positive?'/1}}
     , {'negative?', #nipn{val=fun 'negative?'/1}}
     , {'odd?', #nipn{val=fun 'odd?'/1}}
     , {'even?', #nipn{val=fun 'even?'/1}}
     , {'max', #nipv{val=fun 'max'/1}}
     , {'min', #nipv{val=fun 'min'/1}}
     , {'+', #nipv{val=fun '+'/1}}
     , {'*', #nipv{val=fun '*'/1}}
     , {'-', #nipv{val=fun '-'/1}}
     , {'/', #nipv{val=fun '/'/1}}
     , {'abs', #nipn{val=fun 'abs'/1}}
     , {'floor/', #nipn{val=fun 'floor/'/2}}
     , {'floor-quotient', #nipn{val=fun 'floor-quotient'/2}}
     , {'floor-remainder', #nipn{val=fun 'floor-remainder'/2}}
     , {'truncate/', #nipn{val=fun 'truncate/'/2}}
     , {'truncate-quotient', #nipn{val=fun 'truncate-quotient'/2}}
     , {'truncate-remainder', #nipn{val=fun 'truncate-remainder'/2}}
     , {'quotient', #nipn{val=fun 'quotient'/2}}
     , {'remainder', #nipn{val=fun 'remainder'/2}}
     , {'modulo', #nipn{val=fun 'modulo'/2}}
     , {'gcd', #nipv{val=fun 'gcd'/1}}
     , {'lcm', #nipv{val=fun 'lcm'/1}}
     , {'numerator', #nipn{val=fun 'numerator'/1}}
     , {'denominator', #nipn{val=fun 'denominator'/1}}
     , {'floor', #nipn{val=fun 'floor'/1}}
     , {'ceiling', #nipn{val=fun 'ceiling'/1}}
     , {'truncate', #nipn{val=fun 'truncate'/1}}
     , {'round', #nipn{val=fun 'round'/1}}
     , {'rationalize', #nipn{val=fun 'rationalize'/2}}
     , {'square', #nipn{val=fun 'square'/1}}
     , {'exact-integer-sqrt', #nipn{val=fun 'exact-integer-sqrt'/1}}
     , {'expt', #nipn{val=fun 'expt'/2}}
     , {'inexact', #nipn{val=fun 'inexact'/1}}
     , {'exact', #nipn{val=fun 'exact'/1}}
     , {'number->string', #nipn{val=[fun 'number->string'/1, fun 'number->string'/2]}}
     , {'string->number', #nipn{val=[fun 'string->number'/1, fun 'string->number'/2]}}
    ].

%%%===================================================================
%%% API
%%%===================================================================

-spec 'number?'(scm_obj()) -> scm_boolean().
'number?'(Obj) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Obj]).

-spec 'complex?'(scm_obj()) -> scm_boolean().
'complex?'(Obj) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Obj]).

-spec 'real?'(scm_obj()) -> scm_boolean().
'real?'(Obj) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Obj]).

-spec 'rational?'(scm_obj()) -> scm_boolean().
'rational?'(Obj) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Obj]).

-spec 'integer?'(scm_obj()) -> scm_boolean().
'integer?'(Obj) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Obj]).

-spec 'exact?'(scm_z()) -> scm_boolean().
'exact?'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec 'inexact?'(scm_z()) -> scm_boolean().
'inexact?'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec 'exact-integer?'(scm_z()) -> scm_boolean().
'exact-integer?'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec '='([scm_z(),...]) -> scm_boolean().
'='(Zs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Zs]).

-spec '<'([scm_x(),...]) -> scm_boolean().
'<'(Xs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Xs]).

-spec '>'([scm_x(),...]) -> scm_boolean().
'>'(Xs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Xs]).

-spec '<='([scm_x(),...]) -> scm_boolean().
'<='(Xs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Xs]).

-spec '>='([scm_x(),...]) -> scm_boolean().
'>='(Xs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Xs]).

-spec 'zero?'(scm_z()) -> scm_boolean().
'zero?'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec 'positive?'(scm_x()) -> scm_boolean().
'positive?'(X) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X]).

-spec 'negative?'(scm_x()) -> scm_boolean().
'negative?'(X) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X]).

-spec 'odd?'(scm_n()) -> scm_boolean().
'odd?'(N) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N]).

-spec 'even?'(scm_n()) -> scm_boolean().
'even?'(N) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N]).

-spec 'max'([scm_x(),...]) -> scm_boolean().
'max'(Xs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Xs]).

-spec 'min'([scm_x(),...]) -> scm_boolean().
'min'(Xs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Xs]).

-spec '+'([scm_z()]) -> scm_boolean().
'+'(Zs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Zs]).

-spec '*'([scm_z()]) -> scm_boolean().
'*'(Zs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Zs]).

-spec '-'([scm_z(),...]) -> scm_boolean().
'-'(Zs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Zs]).

-spec '/'([scm_z(),...]) -> scm_boolean().
'/'(Zs) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Zs]).

-spec 'abs'(scm_x()) -> scm_x().
'abs'(X) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X]).

-spec 'floor/'(scm_n(), scm_n()) -> [scm_n(),...].
'floor/'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'floor-quotient'(scm_n(), scm_n()) -> scm_n().
'floor-quotient'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'floor-remainder'(scm_n(), scm_n()) -> scm_n().
'floor-remainder'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'truncate/'(scm_n(), scm_n()) -> [scm_n(),...].
'truncate/'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'truncate-quotient'(scm_n(), scm_n()) -> scm_n().
'truncate-quotient'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'truncate-remainder'(scm_n(), scm_n()) -> scm_n().
'truncate-remainder'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'quotient'(scm_n(), scm_n()) -> scm_n().
'quotient'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'remainder'(scm_n(), scm_n()) -> scm_n().
'remainder'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'modulo'(scm_n(), scm_n()) -> scm_n().
'modulo'(N1, N2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [N1, N2]).

-spec 'gcd'([scm_n()]) -> scm_n().
'gcd'(Ns) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Ns]).

-spec 'lcm'([scm_n()]) -> scm_n().
'lcm'(Ns) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Ns]).

-spec 'numerator'(scm_q()) -> scm_n().
'numerator'(Q) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Q]).

-spec 'denominator'(scm_q()) -> scm_n_pos().
'denominator'(Q) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Q]).

-spec 'floor'(scm_x()) -> scm_n().
'floor'(X) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X]).

-spec 'ceiling'(scm_x()) -> scm_n().
'ceiling'(X) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X]).

-spec 'truncate'(scm_x()) -> scm_n().
'truncate'(X) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X]).

-spec 'round'(scm_x()) -> scm_n().
'round'(X) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X]).

-spec 'rationalize'(scm_x(), scm_y()) -> scm_q().
'rationalize'(X, Y) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [X, Y]).

-spec 'square'(scm_z()) -> scm_z().
'square'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec 'exact-integer-sqrt'(scm_k()) -> [scm_k(),...].
'exact-integer-sqrt'(K) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [K]).

-spec 'expt'(scm_z(), scm_z()) -> scm_z().
'expt'(Z1, Z2) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z1, Z2]).

-spec 'inexact'(scm_z()) -> scm_z().
'inexact'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec 'exact'(scm_z()) -> scm_z().
'exact'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec 'number->string'(scm_z()) -> scm_string().
'number->string'(Z) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z]).

-spec 'number->string'(scm_z(), Radix::2|8|10|16) -> scm_string().
'number->string'(Z, Radix) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [Z, Radix]).

-spec 'string->number'(scm_string()) -> scm_z().
'string->number'(S) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [S]).

-spec 'string->number'(scm_string(), Radix::2|8|10|16) -> scm_z().
'string->number'(S, Radix) ->
    %% @TODO
    erlang:error({roadmap,'v0.5.0'}, [S, Radix]).

%%%===================================================================
%%% internal helpers
%%%===================================================================