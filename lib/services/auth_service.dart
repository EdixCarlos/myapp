class AuthService {
  // Simula un login sin conexión a un backend
  bool login(String username, String password) {
    // Aquí podrías agregar lógica de validación
    if (username == 'admin' && password == '1234') {
      return true;
    }
    return false;
  }
}
