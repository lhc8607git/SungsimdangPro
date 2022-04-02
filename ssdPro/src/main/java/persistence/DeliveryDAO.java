package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import domain.DeliveryDTO;
import domain.ProductDTO;

public interface DeliveryDAO {

	// 택배 가능 목록
	List<DeliveryDTO> deliveryList(Connection con) throws SQLException; 
	

    
}
