package students

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class StudentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Student.list(params), model:[studentCount: Student.count()]
    }

    def show(Student student) {
        respond student
    }

    def create() {
        respond new Student(params)
    }

    @Transactional
    def save(Student student) {
	
	
	
        if (student == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (student.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond student.errors, view:'create'
            return
        }
		
		student.dob=Date.parse("yyyy-MM-dd", params.dobdate);
		student.createdBy = "papon";
		student.createdDate = new Date()
		student.updatedBy = "papon";
		student.updatedDate = new Date()
		
        student.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'student.label', default: 'Student'), student.id])
                redirect student
            }
            '*' { respond student, [status: CREATED] }
        }
    }

    def edit(Student student) {
        respond student
    }

    @Transactional
    def update(Student student) {
        if (student == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (student.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond student.errors, view:'edit'
            return
        }

		
		student.updatedBy="sen"
		student.updatedDate=new Date()
        student.save flush:true
		

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'student.label', default: 'Student'), student.id])
                redirect student
            }
            '*'{ respond student, [status: OK] }
        }
    }

    @Transactional
    def delete(Student student) {

        if (student == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        student.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'student.label', default: 'Student'), student.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
	

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'student.label', default: 'Student'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
