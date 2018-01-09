package com.slp.annotation;

import org.apache.log4j.Logger;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.transform.stream.StreamSource;
import java.io.*;

/**
 * @author WangHB
 * 
 */
public class OxmHelper {
	private static Logger logger = Logger.getLogger(OxmHelper.class);

	/**
	 * xml string->object
	 * 
	 * @param xml
	 * @param objclass
	 * @return
	 * @throws JAXBException
	 * @throws UnsupportedEncodingException
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public static Object unmarshal(InputStream xml, Class objclass)
			throws JAXBException, UnsupportedEncodingException {

		JAXBContext jc = JAXBContext.newInstance(objclass);
		StreamSource source = new StreamSource(new InputStreamReader(xml,
				"utf-8"));
		return jc.createUnmarshaller().unmarshal(source, objclass).getValue();

	}

	/**
	 * string -> object
	 * 
	 * @param xml
	 * @param objclass
	 * @return
	 * @throws JAXBException
	 * @throws UnsupportedEncodingException
	 */
	@SuppressWarnings("unchecked")
	public static Object unmarshal(String xml, Class objclass)
			throws JAXBException {

		JAXBContext jc = JAXBContext.newInstance(objclass);
		StreamSource source = new StreamSource(new StringReader(xml));
		return jc.createUnmarshaller().unmarshal(source, objclass).getValue();

	}

	/**
	 * obj -> xml string
	 * 
	 * @param obj
	 * @return
	 */
	public static String marshal(Object obj) {
		try {
			JAXBContext jc = JAXBContext.newInstance(obj.getClass());
			Marshaller m = jc.createMarshaller();
			StringWriter writer = new StringWriter();
			m.marshal(obj, writer);
			return writer.toString();
		} catch (JAXBException e) {
			logger.error("jaxb error!", e);
			throw new RuntimeException(
					"Can't marshal the XML file, error message: "
							+ e.getMessage());

		}
	}
}
