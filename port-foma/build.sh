# Building FST
foma -l foma-script
hfst-txt2fst < port.txt > port.fst

# Graphviz stuff
hfst-fst2txt port.fst | python3 att2dot.py > port.dot
dot -Tpdf port.dot -o port.pdf
