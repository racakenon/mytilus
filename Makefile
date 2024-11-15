build:
	julia --project=. -e "using Mytilus; using Pkg; Pkg.activate(\".\"); Pkg.instantiate(); Mytilus.main()"
