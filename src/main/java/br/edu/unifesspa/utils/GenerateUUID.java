package br.edu.unifesspa.utils;

import java.util.UUID;

public class GenerateUUID {

	private static GenerateUUID instance;

	private GenerateUUID() {
	}

	public static GenerateUUID getInstance() {
		if (instance == null) {
			instance = new GenerateUUID();
		}
		return instance;
	}

	public String generate() {
		return UUID.randomUUID().toString().replace("-", "");
	}

}
