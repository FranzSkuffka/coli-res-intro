# echo EXERCISE 2
# cat ./de_patents.tsv | gawk 'BEGIN { FS = "\t" } {print $1 " " $3}'
# echo EXERCISE 3
# cat ./de_patents.tsv | gawk 'BEGIN { FS = "\t" } {print $5 " " $4 " " $3 " " $2 " " $1 }'
# echo EXERCISE 4
# cat ./de_patents.tsv | gawk 'BEGIN { FS = "\t" } ((NR-1)%3)==0 {print "LINE " NR " " $0 }'
# echo EXERCISE 5
# cat ./de_patents.tsv | gawk 'BEGIN { FS = "\t" } tolower($4) ~ /siemens/ {print $4 }'
# echo EXERCISE 5
# cat ./de_patents.tsv | gawk '$1=$1' FS="\t" OFS="|||"
# echo EXERCISE 5
# cat ./de_patents.tsv | gawk 'BEGIN { FS = "\t" } {print $5}' | tr ',' '\n' | tr ' DR' '' | sort | uniq -c | sort
