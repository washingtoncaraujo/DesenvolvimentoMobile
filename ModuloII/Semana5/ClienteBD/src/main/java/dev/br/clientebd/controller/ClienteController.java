package dev.br.clientebd.controller;

import dev.br.clientebd.model.Cliente;
import dev.br.clientebd.repository.ClienteRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController // Indica que esta classe é um controlador REST.
@RequestMapping("/clientes") // Define o mapeamento base para todas as rotas deste controlador.
public class ClienteController {
    private final ClienteRepository ClienteRepository;


    public ClienteController(ClienteRepository ClienteRepository) {
        this.ClienteRepository = ClienteRepository;
    }


    @GetMapping // Mapeia o método para responder a requisições GET na rota base ("/products").
    public List<Cliente> getAllClientes() {
        return ClienteRepository.findAll(); // Retorna todos os produtos no banco de dados.
    }

    @GetMapping("/{id}") // Mapeia o método para responder a requisições GET com um parâmetro de caminho (ID).
    public Cliente getClienteById(@PathVariable Long id) {
        return ClienteRepository.findById(id).orElse(null); // Busca um produto pelo ID.
    }

}
