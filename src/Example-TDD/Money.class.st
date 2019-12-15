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

{ #category : #'private-accessing' }
Money >> amount [
	^ amount
]

{ #category : #'private-accessing' }
Money >> amount: anInteger [
	amount := anInteger
]

{ #category : #'private-accessing' }
Money >> currency [
	^ currency
]

{ #category : #converting }
Money >> printString [
	^ amount asString , ' ' , currency
]

{ #category : #initialization }
Money >> setAmount: anInteger currency: aString [
	amount := anInteger.
	currency := aString.
	^ self
]

{ #category : #arithmetic }
Money >> times: aMultiplier [
	^ Money new setAmount: amount * aMultiplier currency: currency
]
