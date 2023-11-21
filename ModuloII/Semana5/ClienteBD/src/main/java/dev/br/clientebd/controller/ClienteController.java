package dev.br.clientebd.controller;

import dev.br.clientebd.model.Cliente;
import dev.br.clientebd.repository.ClienteRepository;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping // Mapeia o método para responder a requisições POST.
    public Cliente createCliente(@RequestBody Cliente cliente){
        return ClienteRepository.save(cliente); // Cria um novo cliente no banco de dados.
    }

    @PutMapping("/{id}") // Mapeia o método para responder a requisições PUT com um parâmetro de caminho (ID).
    public Cliente updateCategory(@PathVariable Long id, @RequestBody Cliente updatedCliente){
        Cliente existingCliente = ClienteRepository.findById(id).orElse(null); // Busca a categoria existente pelo ID.
        if (existingCliente != null){
            existingCliente.setName(updatedCliente.getName()); // Atualiza o nome da categoria.
            return ClienteRepository.save(existingCliente); // Salva a categoria atualizada no banco de dados.
        }
        return null; // Retorna nulo se a categoria não for encontrada.
    }

    @DeleteMapping("/{id}") // Mapeia o método para responder a requisições DELETE com um parâmetro de caminho (ID).
    public void deleteCliente(@PathVariable Long id){
        ClienteRepository.deleteById(id); // Exclui uma categoria pelo ID.
    }

}
