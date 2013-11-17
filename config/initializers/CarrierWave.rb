CarrierWave.configure do |config|
  
  if Rails.env.production?
    # if when starting it's in the Heroku env, configure all this. when it's production (live what's on server), do all this S3 stuff

      config.fog_credentials = {
        :provider               => 'AWS',                        # required
        :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],                        # required
        :aws_secret_access_key  => ENV['AWS_SECRET_KEY']                       # required

      }
      # BASICALLY the bucket
      config.fog_directory  = ENV['AWS_BUCKET']                    # required
      config.storage = :fog

  else
    # only reason why we're using the S3 is becuase HEroku doesn't let you... 
    # in our devlopment env, we can use the stuff stored in our local database
      config.storage = :file
  end
end