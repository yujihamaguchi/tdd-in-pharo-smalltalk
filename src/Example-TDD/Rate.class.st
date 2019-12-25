Class {
	#name : #Rate,
	#superclass : #Object,
	#instVars : [
		'from',
		'to',
		'rate'
	],
	#category : #'Example-TDD'
}

{ #category : #'instance creation' }
Rate class >> from: aCurrency to: anotherCurrency rate: aFloat [
	^ self basicNew setFrom: aCurrency to: anotherCurrency rate: aFloat
]

{ #category : #accessing }
Rate >> from [ 
	^ from
]

{ #category : #accessing }
Rate >> rate [
	^ rate 
]

{ #category : #initialization }
Rate >> setFrom: fromCurrency to: toCurrency rate: aFloat [
	from := fromCurrency .
	to := toCurrency .
	rate := aFloat .
	^ self
]

{ #category : #accessing }
Rate >> to [ 
	^ to
]
