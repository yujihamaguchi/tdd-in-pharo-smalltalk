Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #comparing }
Money >> = anObject [
	^ self class = anObject class & (amount = anObject amount)
]
