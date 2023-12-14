function detailPage(idx, mno){
     const pageUrl = '/detail.do?idx=' + idx + "&mno=" + mno;
     window.location.href = pageUrl;
     }
     
  function reviewUpdate(){
     const form = document.getElementById("detail-form");
     const content = document.getElementById("summernote").value;
     console.log(content);
     form.action = "/Update.do";
   	 form.method = "post";
     form.submit();
  }

  function reviewDelete(){
   const form = document.getElementById("detail-form");
   
   form.action = "/Delete.do";
   form.method = "post";
   form.submit();
}

  function reviewForm(){
  	const form = document.getElementById("detail-form");
  	
  	form.action = "/reviewForm.do";
  	form.method = "post";
  	form.submit();  
  	}