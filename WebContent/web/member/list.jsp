<%@ page pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<title>Bootstrap Template</title>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#563d7c;">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active">
					<a class="nav-link" href="/">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/notice/list.jsp">Noitce</a>
				</li>

			</ul>
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="/member/register.jsp">Register</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/member/login.jsp">Login</a>
				</li>
			</ul>
		</div>
	</nav>
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb justify-content-end">
			<li class="breadcrumb-item"><a href="/">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Legister</li>
		</ol>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">회원리스트</h5>

						<div class="table-responsive-md">
							<table class="table table-hover">
								<colgroup>
									<col width="10%" />
									<col width="10%" />
									<col width="10%" />
									<col width="20%" />
									<col width="20%" />
									<col width="30%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">이름</th>
										<th scope="col">아이디</th>
										<th scope="col">이메일</th>
										<th scope="col">핸드폰번호</th>
										<th scope="col">등록날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>성영한</td>
										<td><a href="view.jsp">syh1011</a></td>
										<td>syh@hbilab.org</td>
										<td>01030241703</td>
										<td>2018/08/29</td>
									</tr>
									<tr>
										<th scope="row">1</th>
										<td>성영한</td>
										<td>syh1011</td>
										<td>syh@hbilab.org</td>
										<td>01030241703</td>
										<td>2018/08/29</td>
									</tr>
									<tr>
										<th scope="row">1</th>
										<td>성영한</td>
										<td>syh1011</td>
										<td>syh@hbilab.org</td>
										<td>01030241703</td>
										<td>2018/08/29</td>
									</tr>
								</tbody>
							</table>

							<nav aria-label="Page navigation example">
								<ul class="pagination pagination-lg justify-content-center">
									<li class="page-item disabled">
										<a class="page-link" href="#" tabindex="-1">&laquo;</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">4</a></li>
									<li class="page-item"><a class="page-link" href="#">5</a></li>
									<li class="page-item"><a class="page-link" href="#">6</a></li>
									<li class="page-item"><a class="page-link" href="#">7</a></li>
									<li class="page-item"><a class="page-link" href="#">8</a></li>
									<li class="page-item"><a class="page-link" href="#">9</a></li>
									<li class="page-item"><a class="page-link" href="#">10</a></li>
									<li class="page-item">
										<a class="page-link" href="#">&raquo;</a>
									</li>
								</ul>
							</nav>

							<div class="text-right">
								<a href="#" class="btn btn-outline-primary">등록</a>
								<a href="#" class="btn btn-outline-success">리스트</a>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
		<footer id="sticky-footer" class="py-4 bg-dark" style="color:white; margin-top: 1rem;">
			<div class="container text-center">
				<small>Copyright &copy; Your Website</small>
			</div>
		</footer>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
			</script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
			</script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
			</script>
</body>

</html>