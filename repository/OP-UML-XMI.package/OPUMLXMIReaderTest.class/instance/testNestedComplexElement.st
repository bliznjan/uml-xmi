tests
testNestedComplexElement
	| result |
	result := reader
		readItem: self nestedComplexElement
		property: (self property: 'ownedAttribute' in: OPUMLClass new).
	self assert: result umlClassName equals: #Property.
	self assert: result upperValue value equals: '*'.
	"	self assert: result lowerValue value equals: 0."
	self assert: result lowerValue value equals: nil