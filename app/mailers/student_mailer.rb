class StudentMailer < ActionMailer::Base
    default :from => 'shadowc962@gmail.com'

    def registration_confirmation(student)
        @student = student
        # mail(:to => "#{student.name} <#{student.email}>", :subject => "Registration Confirmation")
        mail(:to => @student.email, :subject => "Registration Confirmation")
    end

    def confirm_force_request(student, req)
        @student = student
        @req = req
        mail(:to => @student.email, :subject => "Request Confirmation")
    end

    def reset_password(student)
        @student = student
        mail(:to => @student.email, :subject => "Reset Your Password")
    end
    
    def update_force_state(student, req, message)
        @student = student
        @req =req
        @message = message
        mail(:to => @student.email, :subject => "Updates on Your Force Request")
    end

    

end
