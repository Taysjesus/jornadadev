#define PI 3.14159

FUNCTION Main()

// Variáveis para área do círculo

local nRaio := 0
local nArea := 0 

// Variáveis para Hipotenusa

local nCatetoA := 0
local nCatetoB := 0
local nHipotenusa := 0

//Variáveis para IMC

local nPeso := 0
local nAltura := 0
local nImc := 0

// Área do Circulo

ACCEPT "Digite o raio do círculo: " TO nRaio

nRaio := Val (nRaio)
nArea := PI * (nRaio ** 2)

?"==========================="
?"Área: ", str(nArea, 10,2)
?"==========================="

// Hipotenusa

ACCEPT "Digite o valor do cateto A: " TO nCatetoA
nCatetoA := Val (nCatetoA)

ACCEPT "Digite o valor do cateto B: " TO nCatetoB
nCatetoB := Val (nCatetoB)

nHipotenusa := Sqrt((nCatetoA ** 2) + (nCatetoB ** 2))

?"======================================"
?"Hipotenusa: ", Str(nHipotenusa, 10,2)
?"======================================"

// IMC

ACCEPT " Digite seu peso: " TO nPeso
nPeso := Val(nPeso)

ACCEPT " Digite sua altura: " TO nAltura
nAltura := Val(nAltura)

nImc := nPeso / (nAltura **2)

?"==============================="
?"IMC: " , Str (nImc, 10 ,2)
?"================================"

RETURN NIL 