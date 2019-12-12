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
	^ Dollar new setAmount: anInteger currency: 'USD'
]

{ #category : #'instance creation' }
Money class >> franc: anInteger [
	^ Franc new setAmount: anInteger currency: 'CHF'
]

{ #category : #comparing }
Money >> = anObject [
	^ self class = anObject class & (amount = anObject amount)
]

{ #category : #acccessing }
Money >> currency [
	^ currency
]

{ #category : #initialization }
Money >> setAmount: anInteger currency: aString [
	amount := anInteger.
	currency := aString.
	^ self
]
