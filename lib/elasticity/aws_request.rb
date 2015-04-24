module Elasticity

  class AwsRequest

    def initialize(aws_session)
      @aws_session = aws_session
    end

    def url
      "#{@aws_session.protocol}://elasticmapreduce.#{@aws_session.region}.amazonaws.com"
    end

    def headers
      {
        :content_type => 'application/x-www-form-urlencoded; charset=utf-8'
      }
    end

  end

end