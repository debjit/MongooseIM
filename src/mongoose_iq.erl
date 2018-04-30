%% @doc Functions to work with iq record.
%%
%%==============================================================================
%% Copyright 2015 Erlang Solutions Ltd.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%% http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%==============================================================================
%%
-module(mongoose_iq).
-include("jlib.hrl").
-export([iq_to_sub_el/1,
         empty_result_iq/1]).

iq_to_sub_el(#iq{sub_el = SubEl}) ->
    SubEl.

empty_result_iq(IQ) ->
    IQ#iq{type = result, sub_el = []}.
