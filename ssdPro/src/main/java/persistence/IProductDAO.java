package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import domain.ProductDTO;

public interface IProductDAO {
	
	// 상품 베스트 100 목록
	List<ProductDTO> bestList(Connection con) throws SQLException; 
	
	
    
//    void updateProduct(ProductDTO dto); //상품 상세 정보 수정
//    void deleteProduct(int product_id); //등록한 상품 삭제
//    void insertProduct(ProductDTO dto); //상품 등록
    
}
