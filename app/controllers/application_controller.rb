class ApplicationController < ActionController::Base
  def submit_job
    puts "-=-=-=-=START-=-=-=-=-"
    Thread.new do
      3.times do
        ss = rand(1..3).seconds
        sleep(ss)
        job()
      end
    end
    puts "-=-=-=-=END-=-=-=-=-"
    render plain: 'ok'
  end

  def job
    # add real job here
    puts "<>"
  end


end
