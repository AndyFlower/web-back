package com.slp.util;

import com.lowagie.text.Document;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;


/**
 * @author sanglp
 * @create 2018-01-09 14:01
 * @desc User生成pdf的视图
 **/
public class UserPDFView extends AbstractPdfView {
    @Override
    protected void buildPdfDocument(Map<String, Object> model, Document document,
                                    PdfWriter pdfWriter, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Map<String,String> userData = (Map<String,String>) model.get("userData");

        Table table = new Table(2);
        table.addCell("Roll No");
        table.addCell("Name");

        for (Map.Entry<String, String> entry : userData.entrySet()) {
            table.addCell(entry.getKey());
            table.addCell(entry.getValue());
        }
        document.add(table);
    }
}
