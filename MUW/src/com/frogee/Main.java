package com.frogee;

import java.util.List;
import model.Artist;
import model.Datasource;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hello");
		Datasource datasource = new Datasource();
		if (!datasource.open()) {
			System.out.println("Can't open datasource");
			return; 
		}
		
		List<Artist> artists = datasource.queryArtists();
		if (artists == null) {
			System.out.println("No Artists!");
			return;
		}
		for(Artist artist : artists) {
			System.out.println("ID = " + artist.getId() + ", Name = " + artist.getName());
		}
		datasource.close();

	}

}
