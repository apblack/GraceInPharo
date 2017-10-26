baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec
			baseline: 'SmaCC' 
			with: [ spec repository: 'https://github.com/apblack/SmaCC.git' ].
		spec package: 'Grace-Parser' with: [ spec requires: 'SmaCC' ].
		spec package: 'GraceTests' with: [ spec requires: 'Grace-Parser' ] 
	]