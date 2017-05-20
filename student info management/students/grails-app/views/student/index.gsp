<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="list-student" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>


            <!-- new table-->


            			<div class="col-md-12">
            				<div class="panel panel-default">
            					<div class="panel-heading">
            						<h4>
            							Student List
            								   <button class="btn btn-default pull-right">
            								    <g:link class="create" action="create" >New Student</g:link>
            								   </button>


            						</h4>
            					</div>
            					<div class="panel-body">
            						<table class="table table-hover">

            							<th>ID</th>
            							<th>Name</th>
            							<th>Mobile No.</th>
            							<th>DOB</th>
            							<th></th>
            							<th>Action</th>
            							<th></th>

										  </tr>
										  
										<g:each status="i" in="${studentList}" var="stu">
										 <g:form resource="${stu}" method="DELETE">
										<!-- Alternate CSS classes for the rows. -->
										<tr class="${ (i % 2) == 0 ? 'a' : 'b'}">
										  <td>${stu.id?.encodeAsHTML()}</td>
										  <td>${stu.name?.encodeAsHTML()}</td>
										  <td>${stu.email?.encodeAsHTML()}</td>
										  <td>${stu.mobileNumber?.encodeAsHTML()}</td>
										  <td><button class="btn btn-default"><g:link action="show" id="${stu.id}">Details</g:link></button></td>
										  <td><button class="btn btn-default"><g:link action="edit" id="${stu.id}">Edit</g:link></button></td>
										
										  <td> <input class="btn btn-default" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" 
															  onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></td>
										
										</tr>
										
										</g:form>
										</g:each>
										
										  </tr>
            						</table>
            					</div>
            				</div>
            			</div>


            <div class="pagination">
                <g:paginate total="${studentCount ?: 0}" />
            </div>
        </div>
    </body>
</html>