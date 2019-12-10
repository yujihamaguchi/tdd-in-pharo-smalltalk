Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #'instance creation' }
Money class >> dollar: anInteger [
	^ Dollar new amount: anInteger
]

{ #category : #'instance creation' }
Money class >> franc: anInteger [
	^ Franc new amount: anInteger
]

{ #category : #comparing }
Money >> = anObject [
	^ self class = anObject class & (amount = anObject amount)
]
