package vehicleRental.report;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import javax.swing.table.DefaultTableColumnModel;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class genarate_PDF {
	public static void main(String[] args) {
		try {
		String file_name = "C:\\Users\\ \\Desktop\\reports\\new.pdf";
		
		Document document = new Document();
		
		
			PdfWriter.getInstance(document, new FileOutputStream(file_name));
			
			document.open();
			
			Paragraph para = new Paragraph("This is testing ");
			
			
			document.add(para);
			
			
			
			document.close();
			
			System.out.println("Finished");
			
		} catch (Exception e) {
			System.out.println(e);
		} 
		
	}
	

}
