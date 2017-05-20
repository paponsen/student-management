<!DOCTYPE html>
<html>
<head>

<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'student.label', default: 'Student')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
		
		<!-- here  i use the css and js from online later i will try to use from offline -->
   
	    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"></link>
        <script src="https://code.jquery.com/jquery-1.12.4.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
        </script>


		
</head>

<body>


	<div id="create-student" class="content scaffold-create" role="main">

            <g:if test="${flash.message}">
            <div class="message" role="status" syle="color:red">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.student}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.student}" var="error">
                <li syle="color:red" <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
			




			
		
		<div class="container">
		
            <g:form resource="${this.student}" method="POST"  class="well form-horizontal"  data-toggle="validator" role="form">
  
					<legend>Add New Student</legend>
					<fieldset class="form">
					

					
					<div class="form-group">
						  <label class="col-md-4 control-label">Name:</label>  
						  <div class="col-md-4 inputGroupContainer">
						  <div class="input-group">
						  <span class="input-group-addon" ><i class="glyphicon glyphicon-user"></i></span>
						     <f:input bean="student" property="name"   class="form-control" data-minlength="3" data-error="Please enter your name." placeholder="Student Name" />
							 <!--<input name="name" class="form-control" type="text" id="name">-->
							</div>
							<div class="help-block with-errors"></div>
						  </div>
				    </div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">Father Name:</label>
						<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						  <f:input bean="student" property="fatherName" class="form-control" data-minlength="3" data-error="Please enter your father name" placeholder="Father Name"/>
						</div>
						<div class="help-block with-errors"></div>
						</div>
					</div>
                   <!--<f:field bean="student" property="name" hidden="true" /> -->
				   
				   <div class="form-group">
						<label class="col-md-4 control-label">Mother Name:</label>
						<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						  <f:input bean="student" property="motherName" class="form-control" data-minlength="3" data-error="Please enter your mother name" placeholder="Mother Name"/>
						</div>
						<div class="help-block with-errors"></div>
						</div>
					</div>
					
					<div class="form-group">
						  <label class="col-md-4 control-label">Mobile Number:</label>  
							<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
						  <f:input bean="student" property="mobileNumber" class="form-control" placeholder="01xxxxxxxx"/>
							</div>
							<div class="help-block with-errors"></div>
						  </div>
					</div>
					

					
					<div class="form-group">
						  <label class="col-md-4 control-label">E-Mail</label>  
							<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-envelope" ></i></span>
						  <f:input bean="student" property="email" class="form-control" type="email" id="email"  placeholder="E-Mail Address"/>
						  
							</div>
							<div class="help-block with-errors"></div>
						  </div>
					</div>
			
					<div class="form-group">
						  <label class="col-md-4 control-label">DOB</label>  
							<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-calendar""></i></span>
						  <input class="form-control" type="date"   name="dobdate"  required/>
						 <!--<f:input bean="student" property="dob" class="form-control"/>-->
							</div>
							<div class="help-block with-errors"></div>
						  </div>
					</div> 
					
					
					<!--date and time-->
					

					
					<div class="form-group">
						  <label class="col-md-4 control-label">Present Address:</label>  
							<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
						  <f:input bean="student" property="presentAddress" class="form-control" data-error="Please enter your present address" placeholder="Present Address"/>
							</div>
							<div class="help-block with-errors"></div>
						  </div>
					</div>
					
					<div class="form-group">
						  <label class="col-md-4 control-label">Permanent Address:</label>  
							<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
						  <f:input bean="student" property="permanentAddress" class="form-control" data-error="Please enter your permanent address" placeholder="Permanent Address"/>
						  
							</div>
							<div class="help-block with-errors"></div>
						  </div>
					</div>
					
					
					
					<div class="form-group">
						  <label class="col-md-4 control-label">Nationality:</label>  
							<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
						  <f:input bean="student" property="nationality" class="form-control" data-error="Please enter your nationality" placeholder="Nationality"/>
						  
							</div>
							<div class="help-block with-errors"></div>
						  </div>
					</div> 
					
					
									
					

						<div class="form-group">
						  <label class="col-md-4 control-label">Nid:</label>  
							<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-info-sign"></i></span>
						  <f:input bean="student" property="nid" class="form-control" placeholder="17 digits national id"/>
						  
							</div>
							<div class="help-block with-errors"></div>
						  </div>
					</div>
					
					
					<div class="form-group">
					  <label class="col-md-4 control-label">Comments:</label>
						<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>	
								<f:input bean="student" property="comments" class="form-control" data-error="Please write somethigs"  />
					  </div>
					  <div class="help-block with-errors"></div>
					  </div>
				    </div>
					
					
					
					
                </fieldset>
				
                <fieldset class="buttons">
					<div class="form-group">
					  <label class="col-md-4 control-label"></label>
					  <div class="col-md-4">
						<!--<button type="submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>-->
						<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" class="btn btn-warning" />
					  </div>
					</div> 
				
				
				
                 <!--   <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" class="btn btn-warning" />-->
                </fieldset>
            </g:form> 
		</div>	
			

	
	

	</div>
	<!-- /.container -->
	
	




</body>
</html>
