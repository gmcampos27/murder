%% Interpretador Backward Chaining
:-op(800,fx,if). :-op(700,xfx,then). :-op(300,xfy,or).
:-op(200,xfy,and).

resolver(P) :-
  fato(P).
resolver(P) :-
  if Cond then P,
  resolver(Cond).
resolver(P1 and P2) :-
  resolver(P1),
  resolver(P2).
resolver(P1 or P2) :-
  resolver(P1)
  ;
  resolver(P2).

%%resolver(mome_assassino):-
%% BC
if fortuna_lucas or lucas_deve or surpreendeu_lucas
   then interesse_lucas.
if interesse_lucas or vinganca_lucas
   then motivo_lucas.
if quinta_lucas or alibi_n_confiavel_lucas
   then sem_alibi_lucas.
if terca_lucas and alibi_confiavel_lucas
   then alibi_lucas.
if arma_de_lucas and motivo_lucas and sem_alibi_lucas
   then lucas.
if fortuna_paulo or paulo_deve or surpreendeu_paulo
   then interesse_paulo.
if interesse_paulo or vinganca_paulo
   then motivo_paulo.
if quinta_paulo or alibi_n_confiavel_paulo
   then sem_alibi_paulo.
if terca_lucas and alibi_confiavel_paulo
   then alibi_paulo.
if arma_de_paulo and motivo_paulo and sem_alibi_paulo
   then paulo.
if fortuna_alan or alan_deve or surpreendeu_alan
   then interesse_alan.
if interesse_alan or vinganca_alan
   then motivo_alan.
if quinta_alan or alibi_n_confiavel_alan
   then sem_alibi_alan.
if terca_alan and alibi_confiavel_alan
   then alibi_alan.
if arma_de_alan and motivo_alan and sem_alibi_alan
   then alan.
if fortuna_ber or deve_ber or surpreendeu_ber
   then interesse_ber.
if interesse_ber or vinganca_ber
   then motivo_ber.
if quinta_ber or alibi_n_confiavel_ber
   then sem_alibi_ber.
if terca_ber and alibi_confiavel_ber
   then alibi_ber.
if arma_de_ber and motivo_ber and sem_alibi_ber
   then bernardo.
if fortuna_luis or deve_luis or surpreendeu_luis
   then interesse_luis.
if interesse_luis or vinganca_luis
   then motivo_luis.
if quinta_luis or alibi_n_confiavel_luis
   then sem_alibi_luis.
if terca_luis and alibi_confiavel_luis
   then alibi_luis.
if arma_de_lucas and motivo_lucas and sem_alibi_lucas
   then luis.

%% Evidencias_Lucas
fato(vinganca_lucas).
fato(terca_lucas).
fato(arma_de_lucas).
% Evidencias_Paulo
fato(alibi_confiavel_paulo).
fato(vinganca).
% Evidencias_Alan
fato(quinta_alan).
fato(arma_de_alan).
fato(surpreendeu_alan).
%Evidencias_Bernardo
fato(fortuna_ber).
% Evidencias_Luis
fato(luis_deve).
fato(arma_de_luis).

% alibi_n_confiavel_NOME: significa q NOME é o alibi dado por alguem q n é confiavel

% alibi_confiavel_NOME: significa q NOME é o álibi dado por alguem confiavel
