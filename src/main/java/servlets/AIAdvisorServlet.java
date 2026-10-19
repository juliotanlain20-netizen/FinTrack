package servlets;

import service.AIRecommendationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/ai-advisor")
public class AIAdvisorServlet extends HttpServlet {

    private AIRecommendationService aiService;

    @Override
    public void init() {
        aiService = new AIRecommendationService();
    }

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {

            String financialData =
                    "Pendapatan bulan ini: Rp5.000.000\n"
                  + "Total pengeluaran: Rp4.200.000\n"
                  + "Makanan: Rp1.800.000\n"
                  + "Transportasi: Rp500.000\n"
                  + "Hiburan: Rp900.000\n"
                  + "Belanja: Rp700.000\n"
                  + "Tabungan: Rp800.000";

            String recommendation =
                    aiService.getRecommendation(financialData);

            request.setAttribute(
                    "recommendation",
                    recommendation
            );

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute(
                    "recommendation",
                    "Gagal mengambil rekomendasi AI: "
                    + e.getMessage()
            );
        }

        request.getRequestDispatcher(
                "/ai-advisor.jsp"
        ).forward(request, response);
    }
}