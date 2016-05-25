<html>
	<head>
		<link rel="stylesheet" href="bootstrap.min.css">
		<title>CalculadoraIMC</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<style>	
			h1 {
				color: #5BC0DE;
				}
		</style>
	</head>

	<body>
		<div class="container">
			
			<h1>IMC</h1>

			<hr size="1" >

			
			<form role="form">
				<div class="form-group">
					<h3> <span class="label label-info">Peso</span></h3>
					<input type="text" class="form-control" name="name" placeholder="Exemplo: 80">
				</div>
				
				<div class="form-group">
					<h3> <span class="label label-info">Altura</span></h3>
					<input type="text" class="form-control" name="name1" placeholder="Exemplo: 180">
				</div>
				
				<div>
					<h3> <span class="label label-info">Sexo</span></h3>
					<select class="form-control" name="name2" >
						<option value="1">Masculino</option>
						<option value="2">Feminino</option>
					</select>
				</div>
				
				<div>
					<button id="resultado" class="btn btn-info" onclick="myIMC()">Resultado</button>
				</div>	
			</form>
		</div>
		<%
			String name = request.getParameter("name");
			String name1 = request.getParameter("name1");
			String name2 = request.getParameter("name2");
			
				if(name != null && name1 != null && name2 != null){
					double peso = Double.parseDouble(name);
					double altura = Double.parseDouble(name1);
					int sexo = Integer.parseInt(name2);
					
					double resultado = peso/(altura*altura);
					
					if (sexo == 1) {
						if (resultado < 23) {
							out.println("Abaixo do peso ideal");
						}else if (resultado < 24.9) {
							out.println("Dentro do peso normal");
						}else if (resultado < 29.9) {
							out.println("Acima do peso: Obesidade leve");
						}else if (resultado < 41.9) {
							out.println("Acima do peso: Obesidade moderada");
						}else { 
							out.println("Acima do peso: Obesidade morbida");
						}
					} else {
						if (resultado < 19) {
							out.println("Abaixo do peso ideal");
						}else if (resultado < 23.9) {
							out.println("Dentro do peso normal");
						}else if (resultado < 29.9) {
							out.println("Acima do peso: Obesidade leve");
						}else if (resultado < 38.9) {
							out.println("Acima do peso: Obesidade moderada");
						}else { 
							out.println("Acima do peso: Obesidade morbida");
						}
					}	
				}
			%>
	</body>
</html>