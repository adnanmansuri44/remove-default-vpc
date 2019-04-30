aws cloudtrail describe-trails --region eu-west-1 --output text |
head -n 1 |
awk '{print $11}' |
while read line;
do aws cloudtrail update-trail --name $line --is-organization-trail --region eu-west-1;
done;
