Money.locale_backend = :currency

MoneyRails.configure do |config|
  config.default_currency = :eur  # or :gbp, :usd, etc.
  # [...]
end
