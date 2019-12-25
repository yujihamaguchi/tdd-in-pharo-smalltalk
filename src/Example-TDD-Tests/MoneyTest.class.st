Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Example-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testCurrency [
	self assert: (Money dollar: 1) currency equals: 'USD'.
	self assert: (Money franc: 1) currency equals: 'CHF'
]

{ #category : #tests }
MoneyTest >> testEquality [
	self assert: (Money dollar: 5) equals: (Money dollar: 5).
	self deny: (Money dollar: 5) equals: (Money dollar: 6).
	self deny: (Money dollar: 5) equals: (Money franc: 5)
]

{ #category : #tests }
MoneyTest >> testIdentityRate [
	self assert: (Bank new rateFrom: 'USD' to: 'USD') equals: 1
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Money dollar: 5.
	self assert: (five times: 2) equals: (Money dollar: 10).
	self assert: (five times: 3) equals: (Money dollar: 15)
]

{ #category : #tests }
MoneyTest >> testPlusReturnsSum [
	| five sum |
	five := Money dollar: 5.
	sum := five plus: five.
	self assert: sum augend equals: five.
	self assert: sum addend equals: five
]

{ #category : #tests }
MoneyTest >> testReduceMoney [
	| bank result |
	bank := Bank new.
	result := bank reduce: (Money dollar: 1) to: 'USD'.
	self assert: result equals: (Money dollar: 1)
]

{ #category : #tests }
MoneyTest >> testReduceMoneyDifferectCurrency [
	| bank rate result |
	bank := Bank new.
	rate := Rate from: 'CHF' to: 'USD' rate: 2.
	bank addRate: rate.
	result := bank reduce: (Money franc: 2) to: 'USD'.
	self assert: result equals: (Money dollar: 1)
]

{ #category : #tests }
MoneyTest >> testReduceSum [
	| sum bank result |
	sum := Sum augend: (Money dollar: 3) addend: (Money dollar: 4).
	bank := Bank new.
	result := bank reduce: sum to: 'USD'.
	self assert: result equals: (Money dollar: 7)
]

{ #category : #tests }
MoneyTest >> testSimpleAddtion [
	| five sum bank reduced |
	bank := Bank new.
	five := Money dollar: 5.
	sum := five plus: five.
	reduced := bank reduce: sum to: 'USD'.
	self assert: reduced equals: (Money dollar: 10)
]
