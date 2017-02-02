########## Download data #########
# for i in {1..6}
# do
#    curl -O "https://nyu-cds.github.io/courses/data/areas$i.txt"
# done

# Concatenate, Filter and Sort Data
echo "check concat output ..."
cat areas*.txt | sort -n | uniq 

# Run prediction script
echo ""
echo "running python script ..."
cat areas*.txt | sort -n | uniq | python rich_pred.py > predicted_diversities.txt
echo "done!"


