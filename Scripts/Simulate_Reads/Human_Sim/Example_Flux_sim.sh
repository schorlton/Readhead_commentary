for i in {1..10}

do
mkdir $i
cp MAYO_TCX.par $i'/'
cd $i
flux-simulator -p MAYO_TCX.par -l -s -x
pigz *
cd ..
done
