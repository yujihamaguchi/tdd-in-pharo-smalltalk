Class {
	#name : #Bank,
	#superclass : #Object,
	#instVars : [
		'rates'
	],
	#category : #'Example-TDD'
}

{ #category : #adding }
Bank >> addRate: aRate [
	rates isNil ifTrue: [ rates := Dictionary new. ].
	rates at: (Pair from: aRate from to: aRate to) put: aRate rate
]

{ #category : #calculating }
Bank >> rateFrom: aCurrency to: anotherCurrency [
	^ aCurrency = anotherCurrency
		ifTrue: [ 1 ]
		ifFalse: [ rates at: (Pair from: aCurrency to: anotherCurrency) ]
]

{ #category : #enumerating }
Bank >> reduce: anExpression to: aCurrency [
	^ anExpression reduceAt: self to: aCurrency
]
