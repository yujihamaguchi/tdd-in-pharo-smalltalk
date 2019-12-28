Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount',
		'currency'
	],
	#category : #'Example-TDD'
}

{ #category : #'instance creation' }
Money class >> dollar: anInteger [
	^ Money new setAmount: anInteger currency: 'USD'
]

{ #category : #'instance creation' }
Money class >> franc: anInteger [
	^ Money new setAmount: anInteger currency: 'CHF'
]

{ #category : #comparing }
Money >> = anObject [
	^ currency = anObject currency & (amount = anObject amount)
]

{ #category : #private }
Money >> amount [
	^ amount
]

{ #category : #private }
Money >> amount: anInteger [
	amount := anInteger
]

{ #category : #private }
Money >> currency [
	^ currency
]

{ #category : #arithmetic }
Money >> plus: aMoney [
	^ Sum augend: self addend: aMoney
]

{ #category : #converting }
Money >> printString [
	^ amount asString , ' ' , currency
]

{ #category : #enumerating }
Money >> reduceAt: aBank to: aCurrency [
	| rate |
	rate := aBank rateFrom: self currency to: aCurrency.
	^ Money new setAmount: (amount / rate) currency: aCurrency 
]

{ #category : #private }
Money >> setAmount: anInteger currency: aString [
	amount := anInteger.
	currency := aString.
	^ self
]

{ #category : #arithmetic }
Money >> times: aMultiplier [
	^ Money new setAmount: amount * aMultiplier currency: currency
]
