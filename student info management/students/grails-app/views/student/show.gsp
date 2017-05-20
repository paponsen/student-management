<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="show-student" class="content scaffold-show" role="main">
            <g:form resource="${this.student}" method="DELETE">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
			
			<div class="container">
			 <g:form   class="well form-horizontal">
				<legend>Student Details</legend>
			
				<table class="table table-striped">
					<tr>
						<td>id:</td>
						<td><f:display bean="student" property="id"/></td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><f:display bean="student" property="name"/></td>
					</tr>
					<tr>
						<td>Father Name:</td>
						<td><f:display bean="student" property="fatherName"/></td>
					</tr>
					<tr>
						<td>Mother Name:</td>
						<td><f:display bean="student" property="motherName"/></td>
					</tr>
					<tr>
						<td>Mobile No.:</td>
						<td><f:display bean="student" property="mobileNumber"/></td>
					</tr>

					<tr>
						<td>Email:</td>
						<td><f:display bean="student" property="email"/></td>
					</tr>
					<tr>
						<td>DOB:</td>
						<td><f:display bean="student" property="dob"/></td>
					</tr>
					<tr>
						<td>Present Address:</td>
						<td><f:display bean="student" property="presentAddress"/></td>
					</tr>
					<tr>
						<td>Permanent Address:</td>
						<td><f:display bean="student" property="permanentAddress"/></td>
					</tr>
					<tr>
						<td>Nationality:</td>
						<td><f:display bean="student" property="nationality"/></td>
					</tr>
					
					<tr>
						<td>Nid:</td>
						<td><f:display bean="student" property="nid"/></td>
					</tr>
					<tr>
						<td>Comments:</td>
						<td><f:display bean="student" property="comments"/></td>
					</tr>
					<tr>
						<td>Created By:</td>
						<td><f:display bean="student" property="createdBy"/></td>
					</tr>
					<tr>
						<td>Created Date:</td>
						<td><f:display bean="student" property="createdDate"/></td>
					</tr>
					<tr>
						<td>Updated By:</td>
						<td><f:display bean="student" property="updatedBy"/></td>
					</tr>
					<tr>
						<td>Updated Date:</td>
						<td><f:display bean="student" property="updatedDate"/></td>
					</tr>
					
				</table>
			
					
					
            
			<div class="form-group">
					  <label class="col-md-4 control-label"></label>
					  <div class="col-md-4">
                      <fieldset class="buttons">
                    <button class="btn btn-default"><g:link class="edit" action="edit" resource="${this.student}"><g:message code="default.button.edit.label" default="Edit" /></g:link></button>
                    <input class="btn btn-warning"class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
				     </div>
					  </div>
            </g:form>
				
		</g:form>
				
			
			</div>
		
	
        </div>
    </body>
</html>
