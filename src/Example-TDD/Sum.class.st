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

{ #category : #enumerating }
Sum >> reduceTo: aCurrency [
	| sum |
	sum := augend amount + addend amount.
	^ Money new setAmount: sum currency: aCurrency
]
