import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

public class TimetableServlet extends HttpServlet {
    private Timetable Timetable;

    public TimetableServlet() {
        Timetable = new Timetable();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws IOException, ServletException {
		String mode = request.getParameter("mode");
		
		if(mode.equals("write")){
		    String youbi = request.getParameter("day"); // 1から 6
		    String period = request.getParameter("period"); // 1から6
		    String subject_name = request.getParameter("subject"); // subject_name
		    int day = -1; // day <- youbi(int)
		    int period_int = -1; // period_int <- period(int)
		    
		    try{ // 受け取った曜日とn時限のデータ(String)をintに変換
			day = Integer.parseInt(youbi);
			period_int = Integer.parseInt(period);
		    }catch (NumberFormatException e){
			
		    }
		    
		    Timetable.putSubject(day, period_int, subject_name);

 		    String Subject[][] = new String[6][6];
		    int i,j;
		    for( i = 0; i < 6; i++ ){
			for( j = 0; j < 6; j++ ){
			    Subject[i][j] = Timetable.getSubject( i, j );
			}
		    }

		    request.setAttribute("subject", Subject);
		    RequestDispatcher disp = request.getRequestDispatcher("/jsp/timetable.jsp");
		    disp.forward(request, response);
		    
		    
		}else if(mode.equals("read")){
		    String youbi = request.getParameter("day");
		    String period = request.getParameter("period");
		    String subject = request.getParameter("subject");
		    
		    String Subject[][] = new String[6][6];
		    int i,j;
		    for( i = 0; i < 6; i++ ){
			for( j = 0; j < 6; j++ ){
			    Subject[i][j] = Timetable.getSubject( i, j );
			}
		    }

		    request.setAttribute("subject", Subject);
		    RequestDispatcher disp = request.getRequestDispatcher("/jsp/timetable.jsp");
		    disp.forward(request, response);
		    
		}
		
    }
}
