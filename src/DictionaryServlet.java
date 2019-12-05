import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import java.awt.image.ImageProducer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name="DictionaryServlet", urlPatterns = "/dictionary")
public class DictionaryServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        Map<String, String> dicitonary = new HashMap<>();
        dicitonary.put("hello", "Xin chào");
        dicitonary.put("goodbye", "Tạm biệt");
        dicitonary.put("machine", "Máy móc");
        dicitonary.put("legend", "Huyền thoại");
        dicitonary.put("class", "Lớp học");
        dicitonary.put("computer", "Máy tính");

        String text = request.getParameter("txtSearch");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");

        String result = dicitonary.get(text.toLowerCase());
        if(result == null) {
            request.setAttribute("result", "Từ điển đang cập nhật");
        } else {
            request.setAttribute("result", result);
        }
        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
