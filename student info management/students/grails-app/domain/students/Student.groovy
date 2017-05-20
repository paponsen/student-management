package students

class Student {

	String name;
	String fatherName;
	String motherName;
	String mobileNumber;
	String phoneNumber;
	String email;
	Date dob;
	String presentAddress;
	String permanentAddress;
	String nationality;
	String nid;
	String comments;
	String createdBy;
	Date createdDate;
	String updatedBy;
	Date updatedDate;

    static constraints = {
		name(blank:false,maxSize:50,minSize:3)
		fatherName(blank:false, maxSize:50, minSize:3)
		motherName(blank:false, maxSize:50, minSize:3)
		mobileNumber(blank:false, matches:"0[0-9]{10}", maxSize:11, nullable:false)
		phoneNumber(blank:true, nullable:true,matches:"[0-9]{8}",maxSize:8)
		email(email:true, blank:false, nullable:false)
		dob(blank:false,nullable:true,validator: {return (it < new Date()-5)}) 
		presentAddress(blank:false,minSize:2, maxSize:150)
		permanentAddress(blank:false,minSize:2, maxSize:150)
		nationality(blank:false, nullable:false)
		nid(blank:true, nullable:true,matches:"[0-9]{17}",maxSize:17,minSize:17)
		comments(blank:false, maxSize:200)
		createdBy(nullable:true)
		createdDate(nullable:true)
		updatedBy(nullable:true)
		updatedDate(nullable:true)
    }
}
