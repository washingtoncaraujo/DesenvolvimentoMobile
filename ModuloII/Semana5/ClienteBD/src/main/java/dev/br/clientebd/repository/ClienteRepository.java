package dev.br.clientebd.repository;

import dev.br.clientebd.model.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ClienteRepository extends JpaRepository<Cliente, Long> {
    @Query(value = "SELECT * FROM Cliente ORDER BY name", nativeQuery = true)
    List<Cliente> findProductsOrder();
}



