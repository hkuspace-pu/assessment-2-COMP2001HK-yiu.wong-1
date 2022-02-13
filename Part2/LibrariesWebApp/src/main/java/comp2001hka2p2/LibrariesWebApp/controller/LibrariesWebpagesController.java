package comp2001hka2p2.LibrariesWebApp.controller;

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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

import comp2001hka2p2.LibrariesWebApp.model.LibrariesGeoJson;

@Controller
public class LibrariesWebpagesController 
{
	@GetMapping("website/html/ftl")
	public String getWetsite(Model model) throws IOException 
	{
		
		URL url = new URL("https://storage.googleapis.com/thedataplace-plymouth/resources%2F7ca5c131-ba46-4133-ae6a-0dc8eb8a9281%2F040-02_location-of-libraries-2018.geojson");
		
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		InputStream is = con.getInputStream();
		ObjectMapper om = new ObjectMapper();
		FeatureCollection fc = om.readValue(is, FeatureCollection.class);
		
		List<Feature> jsonList = fc.getFeatures();
		List<LibrariesGeoJson> lgjList = new ArrayList<LibrariesGeoJson>();
		for (int i = 0; i < jsonList.size(); i ++)
		{
			Feature f = jsonList.get(i);
			Map<String, Object> map = f.getProperties();
			LibrariesGeoJson lgjson = om.convertValue(map, LibrariesGeoJson.class);
			lgjList.add(lgjson);
		}
		
		model.addAttribute("libraryList", lgjList);
		
		return "LibrariesWebsite";
	}

}
