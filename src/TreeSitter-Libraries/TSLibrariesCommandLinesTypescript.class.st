Class {
	#name : 'TSLibrariesCommandLinesTypescript',
	#superclass : 'TSLibrariesCommandLines',
	#category : 'TreeSitter-Libraries',
	#package : 'TreeSitter-Libraries'
}

{ #category : 'as yet unclassified' }
TSLibrariesCommandLinesTypescript >> cmdLinuxTreeSitterTypescript [

	^ self cmdMacAndLinuxTreeSitterTypescript
]

{ #category : 'as yet unclassified' }
TSLibrariesCommandLinesTypescript >> cmdMacAndLinuxTreeSitterTypescript [
	| path command |
	
	path := TSLibraries new originalLibrariesDirectory , '/tree-sitter-typescript'.
	
	command := 'cd ' , path.
	command := command, '&& make'. 
	
	^ command
	
 
]

{ #category : 'as yet unclassified' }
TSLibrariesCommandLinesTypescript >> cmdMacTreeSitterTypescript [

	^ self cmdMacAndLinuxTreeSitterTypescript
]

{ #category : 'as yet unclassified' }
TSLibrariesCommandLinesTypescript >> cmdWindowsTreeSitterTypescript [

	| path command |
	path := TSLibraries new originalLibrariesDirectory
	        , '/tree-sitter-typescript/typescript'.

	command := 'cd ' , path.
	command := command
	           ,
	           '&& gcc -shared -o libtree-sitter-typescript.dll src/parser.c src/scanner.c'.

	^ command
]
