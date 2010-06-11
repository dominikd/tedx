class ContactForm < MailForm

    subject "My Contact Form"
    recipients "agatka.mazur@gmail.com"
    sender{|c| %{"#{c.name}" <#{c.email}>} }

    attribute :name,      :validate => true
    attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
    attribute :file,      :attachment => true

    attribute :message
    attribute :nickname,  :captcha  => true

end
