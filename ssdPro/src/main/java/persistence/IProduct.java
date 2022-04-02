package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import domain.ProductDTO;

public interface IProduct {
	

	// 상품 상세정보
	ProductDTO selectOne(Connection con, String prd_code) throws SQLException;

	// 특산품 정보
	List<ProductDTO> bestList(Connection con, String prd_code) throws SQLException;
	
	// 특산품 정보
	List<ProductDTO> specialList(Connection con, String prd_code) throws SQLException;

	// 특산품 정보
	List<ProductDTO> special6List(Connection con, String prd_code) throws SQLException;
	
	// 특산품 정보
	List<ProductDTO> newList(Connection con, String prd_code) throws SQLException;
	
	// 택배 배송정보
	List<ProductDTO> deliveryList(Connection con, String prd_code) throws SQLException;

	// ktx 배송정보
	List<ProductDTO> ktxList(Connection con, String prd_code) throws SQLException;

	// 매장 방문정보
	List<ProductDTO> pickupList(Connection con, String prd_code) throws SQLException;

	// 대전 배송정보
	List<ProductDTO> daejeonList(Connection con, String prd_code) throws SQLException;

}
