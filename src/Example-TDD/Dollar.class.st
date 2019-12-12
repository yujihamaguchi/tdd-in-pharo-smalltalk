Class {
	#name : #Dollar,
	#superclass : #Money,
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
	^ Money dollar: amount * aMultiplier
]
