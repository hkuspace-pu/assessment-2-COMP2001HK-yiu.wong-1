package comp2001hka2p2.LibrariesWebApp.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.geojson.Feature;
import org.geojson.FeatureCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import comp2001hka2p2.LibrariesWebApp.model.LibrariesGeoJson;
import comp2001hka2p2.LibrariesWebApp.model.LibrariesJsonLD;
import ioinformarics.oss.jackson.module.jsonld.JsonldModule;

@RestController
public class LibrariesApiController {
	private static final Logger logger = LoggerFactory.getLogger(LibrariesApiController.class);

	@GetMapping("/api/geojson/libraries")
	public String getJson() throws IOException {
		
		ArrayList<LibrariesGeoJson> lgjList = getGenJson();
		ArrayList<LibrariesJsonLD> ljldList = getJsonLD(lgjList);
		String jsonldStr = getjsonLdString(ljldList);
		return jsonldStr;
	}
	
	public String getjsonLdString(ArrayList<LibrariesJsonLD> ljldList) throws IOException {
		ObjectMapper om2 = new ObjectMapper();
		JsonldModule jldm = new JsonldModule();
		om2.registerModule(jldm);
		String jsonldStr = om2.writeValueAsString(ljldList);
		return jsonldStr;
	}
	
	public ArrayList<LibrariesJsonLD> getJsonLD(ArrayList<LibrariesGeoJson> lgjList) {
		ArrayList<LibrariesJsonLD> ljldList = new ArrayList<LibrariesJsonLD>();
		for (int i = 0; i < lgjList.size(); i++) {
			LibrariesGeoJson lgjson = lgjList.get(i);
			LibrariesJsonLD ljsonLd = new LibrariesJsonLD();
			ljsonLd.setFid(lgjson.getFid());
			ljsonLd.setLibraryName(lgjson.getLibraryName());
			ljsonLd.setAddressLine1(lgjson.getAddressLine1());
			ljsonLd.setAddressLine2(lgjson.getAddressLine2());
			ljsonLd.setAddressLine3(lgjson.getAddressLine3());
			ljsonLd.setPostcode(lgjson.getPostcode());
			ljsonLd.setLatitude(lgjson.getLatitude());
			ljsonLd.setLongitude(lgjson.getLongitude());
			ljsonLd.setWebsite(lgjson.getWebsite());
			ljldList.add(ljsonLd);
		}
		return ljldList;
	}
	
	public ArrayList<LibrariesGeoJson> getGenJson() throws IOException {
		URL url = new URL(
				"https://storage.googleapis.com/thedataplace-plymouth/resources%2F7ca5c131-ba46-4133-ae6a-0dc8eb8a9281%2F040-02_location-of-libraries-2018.geojson");
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		InputStream is = con.getInputStream();
		ObjectMapper om = new ObjectMapper();
		FeatureCollection fc = om.readValue(is, FeatureCollection.class);
		List<Feature> jsonList = fc.getFeatures();
		ArrayList<LibrariesGeoJson> lgjList = new ArrayList<LibrariesGeoJson>();
		for (int i = 0; i < jsonList.size(); i++) {
			Feature f = jsonList.get(i);
			Map<String, Object> map = f.getProperties();
			LibrariesGeoJson lgjson = om.convertValue(map, LibrariesGeoJson.class);
			lgjList.add(lgjson);
			logger.info("l[{}]: {}", i, lgjson.getFid());
		}
		
		return lgjList;
	}
}


