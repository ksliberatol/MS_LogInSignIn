## Registro
* endpoint: localhost:5001/auth/

* petición (POST):
{
  "email": "ejemplo@email.com",  
  "name": "nombre_ej",  
  "nickname": "ej",  
  "password": "123456",  
  "password_confirmation": "123456"  
}
* respuesta: 200 OK

## Login
* endpoint: localhost:5001/auth/sign_in
* petición (POST):
{
  "email": "ejemplo@email.com",  
  "password": "123456"
}
* respuesta: 200 OK
