CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\s\.\-\+]/

CarrierWave.configure do |config|
  config.root = Pathname.new(Rails.root.parent.to_s.concat("/RailsNote_upload"))
end