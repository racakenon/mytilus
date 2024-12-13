build:
	julia --project=. -e "using Pkg; Pkg.activate(\".\"); Pkg.instantiate();"
	julia --project=. -e "using Mytilus; Mytilus.main()"
