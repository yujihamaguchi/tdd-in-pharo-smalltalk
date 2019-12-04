Class {
	#name : #Franc,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Example-TDD'
}

{ #category : #comparing }
Franc >> = anObject [
	^ self class = anObject class & (amount = anObject amount)
]

{ #category : #'private-accessing' }
Franc >> amount [
	^ amount
]

{ #category : #'private-accessing' }
Franc >> amount: anInteger [
	amount := anInteger
]

{ #category : #arithmetic }
Franc >> times: aMultiplier [
	^ self class new amount: amount * aMultiplier
]
