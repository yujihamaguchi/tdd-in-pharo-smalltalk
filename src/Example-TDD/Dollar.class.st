Class {
	#name : #Dollar,
	#superclass : #Money,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #'private-accessing' }
Dollar >> amount [
	^ amount
]

{ #category : #'private-accessing' }
Dollar >> amount: anInteger [
	amount := anInteger
]

{ #category : #arithmetic }
Dollar >> times: aMultiplier [
	^ self class new amount: amount * aMultiplier
]
