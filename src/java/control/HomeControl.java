/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import context.DBContext;
import dao.ShareDAO;
import dao.SushiDAO;
import entity.Share;
import entity.Sushi;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author trinh hoan
 */
@WebServlet(name = "HomeControl", urlPatterns = {"/HomeControl"})
public class HomeControl extends HttpServlet {

    public void getShareDAOImagePath(HttpServletRequest request, HttpServletResponse response) throws Exception {
        DBContext bContext = new DBContext();
        String imagePath = bContext.getImagePath();
        request.setAttribute("imagePath", imagePath);

        ShareDAO shareDAO = new ShareDAO();
        List<Share> share = shareDAO.getShare();
        request.setAttribute("share", share);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            getShareDAOImagePath(request, response);

            //begin of get index
            String pageIndex = request.getParameter("pageIndex");
            if (pageIndex == null) {
                pageIndex = "1";
            }
            int index = 0;
            //begin count total and maxPage sushi
            SushiDAO sushiDAO = new SushiDAO();
            int pageSize = 3;
            int total = sushiDAO.getTotalSushi();
            int maxPage = total / pageSize;
            if (total % pageSize != 0) {
                maxPage++;
            }
            try {
                index = Integer.parseInt(pageIndex);
                if (index <= 0 || maxPage <= 0 || index > maxPage) { // case index out of range or there no page
                    request.setAttribute("errorMessage", "Page not found!");
                }
            } catch (Exception e) {
                request.setAttribute("errorMessage", "Index may not correct");
            }

            List<Sushi> listSushi = sushiDAO.getListSuShiPaging(index, pageSize);
            request.setAttribute("listSushi", sushiDAO.getListSuShiPaging(1, pageSize));
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("pageIndex", index);
            request.setAttribute("activeHome", "activeHome");
            request.getRequestDispatcher("HomePage.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
