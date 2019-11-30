Class {
	#name : #Dollar,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #accessing }
Dollar >> amount [
	^ amount
]

{ #category : #accessing }
Dollar >> amount: anInteger [
	amount := anInteger
]

{ #category : #arithmetic }
Dollar >> times: aMultiplier [
	amount := amount * aMultiplier
]