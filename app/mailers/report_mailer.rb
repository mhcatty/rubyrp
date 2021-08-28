class ReportMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.daily.subject

  # Daily email for 2 example accounts + 'others' analytics.
  # Run daily with Heroku Scheduler:  $ ReportMailer.daily.deliver_now
  def daily
    # @email = ENV["GMAIL_USERNAME"]
    @user = User.with_role(:sysadmin)
                .pluck(:email)
                .first

    @superadmin_one_visits = Ahoy::Visit.where(user_id: 17)
                                        .order(:started_at, id: :desc)

    @member_one_visits = Ahoy::Visit.where(user_id: 13)
                                    .order(:started_at, id: :desc)

    @other_visits = Ahoy::Visit.where.not(user_id: [13, 17, 19, 20])
                               .order(:started_at, id: :desc)

    mail to: @user
    # mail to: @email #"to@example.org"
  end

end
