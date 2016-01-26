class TestsController < ApplicationController
  def index
    render text: <<-EOS.strip_heredoc
      IN_BOTH_DOTENVS: #{ENV.fetch("IN_BOTH_DOTENVS")}
      ONLY_IN_DOTENV_DEVELOPMENT: #{ENV.fetch("ONLY_IN_DOTENV_DEVELOPMENT")}
    EOS
  end
end
