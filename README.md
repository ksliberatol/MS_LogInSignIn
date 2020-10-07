# Autenticación
## Registro
* localhost:5001/auth/
* POST
{
  "email": "ejemplo@email.com",  
  "name": "nombre_ej",  
  "nickname": "ej",  
  "password": "123456",  
  "password_confirmation": "123456"  
}
* respuesta: 200 OK
## Login
* localhost:5001/auth/sign_in
* POST
{
  "email": "ejemplo@email.com",  
  "password": "123456"
}
* respuesta: 200 OK

## Consulta
* localhost:5001/users/id
* GET
