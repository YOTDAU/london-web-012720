class AnswersController < ApplicationController

    def new
        @instructor = Instructor.all.sample
        @answer = Answer.new
        @options = Cookie.options(@instructor.cookie)

        session[:score] = (session[:score] ? session[:score] : 0)
        session[:score] = session[:score] || 0
        session[:score] ||= 0
    end
    
    def create
        question = Question.create({instructor_id: params[:answer][:instructor_id]})
        answer = Answer.create(answer_params)
        answer.question = question
        answer.update(user: @current_user)
        if answer.valid?
            answer.save
            flash[:notice] = answer.correct ? 'Well done!' : 'Wrong!'
            session[:score] = answer.correct ? session[:score] + 1 : session[:score]
            redirect_to new_answer_path
        else
            flash[:errors] = answer.errors.full_messages
            redirect_to new_answer_path
        end
    end

    private

    def answer_params
        params.require(:answer).permit(:cookie_id)
    end
end
