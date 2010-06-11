class Notifier < ActionMailer::Base
  

  def gmail_message(sent_at = Time.now)
    subject    'Notifier#gmail_message'
    recipients 'agatka.mazur@gmail.com'
    from       'agata@applicake.com'
    sent_on    Time.now
    
    body       :greeting => 'Hi,'
  end


  def contact(contact)
    subject    'New contact message to TEDesters!'
    recipients 'agatka.mazur@gmail.com'
    from       'agata@applicake.com'
    sent_on    Time.now
    
    body       :email => contact.email 
    body       :message => contact.message 
  end

  def involved(contact)
    subject    'New person wants to get involved!'
    recipients 'agatka.mazur@gmail.com'
    from       'agata@applicake.com'
    sent_on    Time.now
    
    body       :email => contact.email 
    body       :name => contact.name 
    body       :phone => contact.phone
    body       :message => contact.message 
  end

end
