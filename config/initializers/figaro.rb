# frozen_string_literal: true

Figaro.require_keys

Figaro.require_keys if Rails.env.production?
