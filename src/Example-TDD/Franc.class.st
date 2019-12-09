Class {
	#name : #Franc,
	#superclass : #Money,
	#category : #'Example-TDD'
}

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
