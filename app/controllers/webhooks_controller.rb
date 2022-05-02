class WebhooksController < ApplicationController
    def logs
      
    end
    
    def receive
      if request.headers['Content-Type'] == 'application/json'
        data = JSON.parse(request.body.read)
      else
        # application/x-www-form-urlencoded
        data = params.as_json
      end
  
      Webhook::Received.save(data: data, integration: params[:gh_inbound])
      pp data
      render nothing: true
    end
end
