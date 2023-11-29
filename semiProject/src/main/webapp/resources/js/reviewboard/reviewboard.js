function detailPage(idx){
     const pageUrl = '/detail.do?idx=' + idx;
     window.location.href = pageUrl;
     }
     
  function boardUpdate(){
     const form = document.getElementById("detail-form");
     const content = document.getElementById("summernote").value;
     console.log(content);
     form.action = "/boardUpdate.do";
   	 form.method = "post";
     form.submit();
  }

  function boardDelete(){
   const form = document.getElementById("detail-form");
   
   form.action = "/boardDelete.do";
   form.method = "post";
   form.submit();
}

  function reviewForm(){
  	const form = document.getElementById("detail-form");
  	
  	form.action = "/reviewForm.do";
  	form.method = "post";
  	form.submit();  
  	}