module Elasticity

  class AwsRequestV4

    def initialize(aws_session, ruby_service_hash)
      @aws_session = aws_session
      @ruby_service_hash = ruby_service_hash
    end

    def url
      "#{@aws_session.protocol}://elasticmapreduce.#{@aws_session.region}.amazonaws.com"
    end

  end

end