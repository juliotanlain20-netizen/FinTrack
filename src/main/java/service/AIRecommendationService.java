package service;

import com.google.genai.Client;
import com.google.genai.types.GenerateContentResponse;

public class AIRecommendationService {

    private final Client client;

    public AIRecommendationService() {

        String apiKey = System.getenv("GEMINI_API_KEY");
        if (apiKey == null || apiKey.isBlank()) {
    throw new RuntimeException("GEMINI_API_KEY belum diatur.");
}
        if (apiKey == null || apiKey.trim().isEmpty()) {
            throw new IllegalStateException(
                    "GEMINI_API_KEY belum ditemukan."
            );
        }

        client = Client.builder()
                .apiKey(apiKey)
                .build();
    }

    public String getRecommendation(String financialData) {

        String prompt =
                "Kamu adalah AI Financial Advisor pada aplikasi FinTrack.\n"
              + "Tugasmu adalah menganalisis kondisi keuangan pengguna "
              + "berdasarkan data yang diberikan.\n\n"
              + "Berikan rekomendasi budgeting yang:\n"
              + "- singkat dan mudah dipahami\n"
              + "- berdasarkan data yang tersedia\n"
              + "- tidak mengarang angka\n"
              + "- berikan saran pengeluaran yang dapat dikurangi\n"
              + "- berikan saran alokasi tabungan\n\n"
              + "DATA KEUANGAN:\n"
              + financialData;

        GenerateContentResponse response =
                client.models.generateContent(
                        "gemini-3.5-flash-lite",
                        prompt,
                        null
                );

        return response.text();
    }
}