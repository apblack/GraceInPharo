baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'SmaCC' 
			with: [ spec repository: 'github://apblack/SmaCC:working' ].
		spec
			baseline: 'FileDialog'
			with: [ spec repository: 'github://peteruhnak/file-dialog/repository' ].
		spec package: 'Grace-Scope'.
		spec package: 'Grace-Names' with: [ spec requires: {'Grace-Parser' . 'Grace-Scope'} ].
		spec package: 'Grace-Parser' with: [ spec requires: {'SmaCC' . 'Grace-Scope'} ].
		spec package: 'Grace-HValidator' with: [ spec requires: {'SmaCC' } ].
		spec package: 'Grace-IDE' with: [ 
			spec requires: {'FileDialog' . 'Grace-Compiler'} ].
		spec package: 'Grace-Compiler' with: [ 
			spec requires: {'Grace-Parser' . 'Grace-Names'} ].
		spec package: 'GraceTests' with: [ 
			spec requires: {'Grace-Parser' . 'Grace-Names' . 'Grace-HValidator'} ].
		spec package: 'Grace-Types' with: [ 
			spec requires: {'Grace-Parser' . 'Grace-Names' . 'Grace-Scope'} ]. 
		spec package: 'GraceTypeTests' with: [ 
			spec requires: {'Grace-Tests' . 'Grace-Types' } ]. 
	]