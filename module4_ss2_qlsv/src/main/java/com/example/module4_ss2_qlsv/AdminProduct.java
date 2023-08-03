package com.example.module4_ss2_qlsv;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "adminProduct", value = "/admin-product")

public class AdminProduct extends HttpServlet {
    List<Product> listProduct = new ArrayList<>();
    @Override
    public void init() throws ServletException{
        listProduct.add(new Product(1,"Giay",100,"OK"));
        listProduct.add(new Product(2,"Ao",50,"OK"));
        listProduct.add(new Product(3,"Quan",700,"OK"));
    }

    public void showListProduct(HttpServletRequest req, HttpServletResponse resp) throws IOException,ServletException {
        req.setCharacterEncoding("UTF-8");
        // đặt thông tin vào thuộc tính và yêu cầu truyền thông tin cho trang jsp để thay đổi thông tin sản phẩm
        req.setAttribute("product",listProduct);
        req.getRequestDispatcher("/view/listProduct.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String action = req.getParameter("action");
        if (action == null) {
            showListProduct(req, resp);
        } else {
            switch (action) {
                case "DELETE":
                    // Xóa sản phẩm dựa trên ID
                    listProduct.remove(findById(Integer.parseInt(req.getParameter("id"))));
                    break;
                case "EDIT":
                    // sửa sản phẩm theo
                    Product productEdit = findById(Integer.parseInt(req.getParameter("id")));
                    if (productEdit!=null){
                        req.setAttribute("productEdit",productEdit);
                        req.getRequestDispatcher("/view/editProduct.jsp").forward(req,resp);
                    }
                    break;
                default:
                    break;
            }
            showListProduct(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("vao post");
        req.setCharacterEncoding("UTF-8");
        // phân tích action gửi lên là gì
        String action = req.getParameter("action");
        switch (action) {
            case "ADD":
                // them moi
                String name = req.getParameter("name");
                double price = Double.parseDouble(req.getParameter("price"));
                String description = req.getParameter("description");
                int id = getNewId();
                listProduct.add(new Product(id,name,price,description));
                showListProduct(req, resp);
            case "UPDATE":
                // cập nhật thông tin sinh viên
                int idEdit = Integer.parseInt(req.getParameter("id"));
                String nameEdit = req.getParameter("name");
                double priceEdit = Double.parseDouble(req.getParameter("price"));
                String desEdit = req.getParameter("description");
                listProduct.set(listProduct.indexOf(findById(idEdit)), new Product(idEdit,nameEdit,priceEdit,desEdit));
                showListProduct(req,resp);
                break;
            default:
                break;

        }
    }
    public int getNewId(){
        int maxId = 0;
        for (Product p:listProduct
        ) {
            if (p.getId()>maxId){
                maxId=p.getId();
            }
        }
        return maxId+1;
    }

    public Product findById(int id){

        for (Product p:listProduct
        ) {
            if (p.getId()==id){
                return p;
            }
        }
        return null;
    }

}
