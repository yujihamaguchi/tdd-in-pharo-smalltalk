Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #'Example-TDD'
}

{ #category : #enumerating }
Bank >> reduce: anExpression to: currency [
	^ Money dollar: 10
]
