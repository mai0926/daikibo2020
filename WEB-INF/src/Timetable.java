public class Timetable{
    private String subject[][] = new String[6][6];

    public Timetable(){
		int i,j;
		for( i = 0; i < 6; i++ ){
			for( j = 0; j < 6; j++ ){
				subject[i][j] = " ";
			}
		}
    }

    public void putSubject(int day, int period, String subject_array ){
		// day:曜日 period: n限目 subject: 講義名
		subject[day][period-1] = subject_array;
    }

    public String getSubject( int day, int period ){
		return subject[day][period];
    }

}
