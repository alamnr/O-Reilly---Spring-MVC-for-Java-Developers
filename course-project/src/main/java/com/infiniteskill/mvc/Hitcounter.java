package com.infiniteskill.mvc;

public class Hitcounter {
	
	private int hits;

	public Hitcounter() {
		super();
		System.out.println("Hit Counter get Instantiated");
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}
	
	

}
