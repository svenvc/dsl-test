"
I am DslTestModel
"
Class {
	#name : #DslTestModel,
	#superclass : #Object,
	#instVars : [
		'words'
	],
	#category : #DslTest
}

{ #category : #accessing }
DslTestModel >> initialize [
	super initialize.
	words := (String loremIpsum findTokens: ' .,')
]

{ #category : #accessing }
DslTestModel >> randomWord [
	<gtExample>
	^ words  atRandom
]
