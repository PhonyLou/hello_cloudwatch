#aws s3api create-bucket --bucket qilin-metrics-feeder --region ap-southeast-1 \
#  --create-bucket-configuration LocationConstraint=ap-southeast-1

aws s3 cp $PWD/qilin-metrics-feeder/target/qilin-metrics-feeder.jar s3://qilin-metrics-feeder
