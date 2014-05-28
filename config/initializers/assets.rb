# doc: once homepage.css was taken out of the precompiler,
# I needed to explicitly add this document.

Rails.application.config.assets.precompile += %w( homepage.css )
