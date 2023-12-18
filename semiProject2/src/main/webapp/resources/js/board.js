function detailPage(b_idx,row,m_no) {
	const pageUrl = 'boardDetail.do?b_idx=' + b_idx+"&b_row="+row+ "&m_no=" + m_no;
	window.location.href = pageUrl;
}

function boardUpdate(b_idx,row) {
	const page = '/boardForm.do?b_idx=' + b_idx +"&b_row="+row;
	if (confirm("수정페이지로 이동합니다.")) {
		window.location.href = page;
	}
}


function boardDelete() {
	const form = document.getElementById("detail-form");
	if (confirm("정말 삭제할거임?")) {
		form.action = "/boardDelete.do";
		form.method = "post";
		form.submit();
	}
}


  function boardEnroll(){
     const form = document.getElementById("detail-form");
     const content = document.getElementById("summernote").value;
     console.log(content);
     form.action = "/boardUpdate.do";
     form.method = "post";
     form.submit();
  }
