Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Example-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Dollar new amount: 5.
	five times: 2.
	self assert: five amount equals: 10
]
