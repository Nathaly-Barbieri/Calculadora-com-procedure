-- create database TrabalhoDb_nathaly_barbieri;
-- use TrabalhoDb_nathaly_barbieri;

/*

ATENÇÃO:

Eu fiz a criação desse trabalho com as instruções baseadas na tarefa da minha professora.
Mas para você conseguir testar certinho as contas de aliquota do inss e imposto de renda,
o ideal é aumentar o decimal da variavel n1 para 10,2 (no minimo)	.

Além disso, como eu citei no proprio corpo da procedure, a area de circulo não usa número com virgula.
Por isso é importante inputar um número inteiro, nem que seja XX.00.

Algumas contas não precisavam de duas variaveis de input e outras precisavam de mais de uma:

+ As que não precisavam de duas, eu só utilizei o n1;
+ As que precisavam de mais de um, eu defini o que sobrou como variavel local no declare e coloquei um valor fixo, mas você pode mudar sem problemas.

*/

-- ALTERE AS VARIAVEIS ABAIXO COM OS VALORES CORRESPONDENTES A OPÇÃO QUE VOCÊ DESEJA:

CALL sp_calcula(n1, n2, 'opc');

/*

INSTRUÇÕES:

A função sp_calcula funciona assim: (primeiro valor a ser inputado, segundo valor a ser inputado, simbolo da opção escolhida)

Essas são as opções disponíveis:

'+': soma
'-': subtracao
'*': multiplicação 
'/': divisão
'^': potência
'P': Primo
'I': impar/par
'M': múltiplo
'!': Fatorial
'F': Fibonacci
'A': área do círculo
'B': Báskara
'R': Imposto de renda
'L': Alíquota de desconto INSS

Sendo assim, segue um exemplo:

CALL sp_calcula(2, 4, '+');

Você escolheu a opção de soma e pediu pro banco somar o valor 1 (2) com o valor 2 (4).

*/