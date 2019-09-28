# frozen_string_literal: true

module Lockable
  extend ActiveSupport::Concern

  included do
    scope :locked, -> { where.not(locked_at: nil) }
  end

  def lock!
    update locked_at: Time.zone.now
  end

  def locked?
    locked_at.present?
  end
end
