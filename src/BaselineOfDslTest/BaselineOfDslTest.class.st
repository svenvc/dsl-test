Class {
	#name : #BaselineOfDslTest,
	#superclass : #BaselineOf,
	#category : #BaselineOfDslTest
}

{ #category : #loading }
BaselineOfDslTest class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'dsl-test' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfDslTest >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'DslTest'
		]
]
