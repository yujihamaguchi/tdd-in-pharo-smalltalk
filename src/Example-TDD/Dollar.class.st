Class {
	#name : #Dollar,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #comparing }
Dollar >> = anObject [
	^ amount = anObject amount
]

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
	^ Dollar new amount: amount * aMultiplier
]
