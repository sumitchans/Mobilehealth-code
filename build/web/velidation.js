<script type="text/javascript">
    function validateFormPatient(form)
  {
    if(form.username.value == ""||form.fname.value == ""||form.email.value==""||form.pass.value == ""||form.address.value == ""||form.mobile.value == ""||form.sex.value == "") {
      alert("Error: No field could be left blank");
      form.username.focus();
      return false;
    }
    if(isNaN(form.mobile.value)|| (form.mobile.value.length <10) || form.mobile.value.length >10){
        alert("Enter a valid mobile no. (like 9999000000)");
        form.mobile.focus();
        return false;
    }return true;}
	    function validateFormDoctor(form)
  {
    if(form.username.value == ""||form.fname.value == ""||form.email.value==""||form.pass.value == ""||form.address.value == ""||form.mobile.value == ""||form.sex.value == "") {
      alert("Error: No field could be left blank");
      form.username.focus();
      return false;
    }
    if(isNaN(form.mobile.value)|| (form.mobile.value.length <10) || form.mobile.value.length >10){
        alert("Enter a valid mobile no. (like 9999000000)");
        form.mobile.focus();
        return false;
    }return true;}
	
</script>