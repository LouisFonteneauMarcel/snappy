blockMesh
surfaceFeatureExtract
decomposePar
mpiexec -np 24 snappyHexMesh -parallel
reconstructParMesh -latestTime
rm -r constant/polyMesh
cp -r 3/polyMesh constant/
splitMeshRegions -cellZones -overwrite