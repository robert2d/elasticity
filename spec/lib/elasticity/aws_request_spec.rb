describe Elasticity::AwsRequest do

  before do
    Timecop.freeze(Time.at(1302461096))
  end

  after do
    Timecop.return
  end

  let(:aws_session) do
    Elasticity::AwsSession.new('TEST_ACCESS', 'TEST_SECRET', :region => 'TEST_REGION')
  end

  subject do
    Elasticity::AwsRequest.new(aws_session)
  end

  its(:url) { should == 'https://elasticmapreduce.TEST_REGION.amazonaws.com' }
  its(:headers) { should == {
    :content_type => 'application/x-www-form-urlencoded; charset=utf-8'
  }}

end