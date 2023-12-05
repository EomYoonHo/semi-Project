function customerDetailPage(idx){
     const pageUrl = '/customerDetail.do?idx=' + idx;
     window.location.href = pageUrl;
     }
     
function customerDelete(){
 	const form = document.getElementById("customer-form");	
 	form.action = "/customerDelete.do";
 	form.method = "post";
 	form.submit();
 	}
 
function customerUpdate(){
	const form = document.getElementById("customer-form");
	form.action = "/customerUpdate.do";
	form.method = "post"
	form.submit();
	}