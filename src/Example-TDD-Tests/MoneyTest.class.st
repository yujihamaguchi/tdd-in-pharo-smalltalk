Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Example-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testEquality [
	self assert: (Dollar new amount: 5) equals: (Dollar new amount: 5).
	self deny: (Dollar new amount: 5) equals: (Dollar new amount: 6)
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Dollar new amount: 5.
	self assert: (five times: 2) equals: (Dollar new amount: 10).
	self assert: (five times: 3) equals: (Dollar new amount: 15)
]
