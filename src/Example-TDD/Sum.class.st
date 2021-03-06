Class {
	#name : #Sum,
	#superclass : #Object,
	#instVars : [
		'augend',
		'addend'
	],
	#category : #'Example-TDD'
}

{ #category : #'instance creation' }
Sum class >> augend: aMoney addend: anotherMoney [
	^ self new
		augend: aMoney;
		addend: anotherMoney
]

{ #category : #private }
Sum >> addend [
	^ addend
]

{ #category : #private }
Sum >> addend: aMoney [
	addend := aMoney
]

{ #category : #private }
Sum >> augend [
	^ augend
]

{ #category : #private }
Sum >> augend: aMoney [
	augend := aMoney
]

{ #category : #arithmetic }
Sum >> plus: anObject [
	^ Sum augend: self addend: anObject
]

{ #category : #enumerating }
Sum >> reduceAt: aBank to: aCurrency [
	| sum |
	sum := (augend reduceAt: aBank to: aCurrency) amount
		+ (addend reduceAt: aBank to: aCurrency) amount.
	^ Money new setAmount: sum currency: aCurrency
]

{ #category : #arithmetic }
Sum >> times: aMultiplier [
	^ Sum
		augend: (self augend times: aMultiplier)
		addend: (self addend times: aMultiplier)
]
