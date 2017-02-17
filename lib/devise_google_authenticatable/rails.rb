module DeviseGoogleAuthenticator
  class Engine < ::Rails::Engine # :nodoc:
    if defined? ActiveSupport::Reloader
      ActiveSupport::Reloader.to_prepare do
        DeviseGoogleAuthenticator::Patches.apply
      end
    else
      ActionDispatch::Reloader.to_prepare do
        DeviseGoogleAuthenticator::Patches.apply
      end
    end


    # ActionDispatch::Callbacks.to_prepare do
    #   DeviseGoogleAuthenticator::Patches.apply
    # end

  end
end
