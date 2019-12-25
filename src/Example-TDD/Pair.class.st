Class {
	#name : #Pair,
	#superclass : #Object,
	#instVars : [
		'from',
		'to'
	],
	#category : #'Example-TDD'
}

{ #category : #'instance creation' }
Pair class >> from: fromObject to: toObject [
	^ self basicNew setFrom: fromObject to: toObject
]

{ #category : #comparing }
Pair >> = anotherObject [
	^ self from = anotherObject from & (self to = anotherObject to)
]

{ #category : #private }
Pair >> from [ 
	^ from
]

{ #category : #comparing }
Pair >> hash [ 
	^ 0
]

{ #category : #private }
Pair >> setFrom: fromObject to: toObject [
	from := fromObject .
	to := toObject .
	^ self
]

{ #category : #private }
Pair >> to [ 
	^ to
]
