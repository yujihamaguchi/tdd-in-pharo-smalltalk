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
	| five product |
	five := Dollar new amount: 5.
	product := five times: 2.
	self assert: product amount equals: 10.
	product := five times: 3.
	self assert: product amount equals: 15
]
