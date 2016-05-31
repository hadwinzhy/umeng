module Umeng
  module JsonBody
    def android_params(opts={})
      {
        payload: {
          display_type: 'notification',
          body: {
            custom: opts[:key_value]
          }
        }
      }
    end

    def ios_params(opts={})
      {
        payload: {
          aps: {
            alert: opts[:key_value]["content"]
          }
        }.merge(opts[:key_value])
      }
    end
  end
end
