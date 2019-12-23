Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #'Example-TDD'
}

{ #category : #enumerating }
Bank >> reduce: anExpression to: aCurrency [
	^ anExpression reduceTo: aCurrency
]
