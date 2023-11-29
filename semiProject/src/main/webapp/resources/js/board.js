function detailPage(b_idx,row) {
	const pageUrl = 'boardDetail.do?b_idx=' + b_idx+"&b_row="+row;
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

function boardBack() {
	const page = '/boardList.do?cpage=1';
	window.location.href = page;
}

}