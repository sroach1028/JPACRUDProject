package com.skilldistillery.pokemon.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pokemon {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String type;
	private String weakness;
	@Column(name="evolved_name")
	private String evolvedName;
	@Column(name="image_url")
	private String imageUrl;

	public String getWeakness() {
		return weakness;
	}

	public void setWeakness(String weakness) {
		this.weakness = weakness;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEvolvedName() {
		return evolvedName;
	}

	public void setEvolvedName(String evolvedName) {
		this.evolvedName = evolvedName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((evolvedName == null) ? 0 : evolvedName.hashCode());
		result = prime * result + id;
		result = prime * result + ((imageUrl == null) ? 0 : imageUrl.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		result = prime * result + ((weakness == null) ? 0 : weakness.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pokemon other = (Pokemon) obj;
		if (evolvedName == null) {
			if (other.evolvedName != null)
				return false;
		} else if (!evolvedName.equals(other.evolvedName))
			return false;
		if (id != other.id)
			return false;
		if (imageUrl == null) {
			if (other.imageUrl != null)
				return false;
		} else if (!imageUrl.equals(other.imageUrl))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		if (weakness == null) {
			if (other.weakness != null)
				return false;
		} else if (!weakness.equals(other.weakness))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Pokemon [id=").append(id).append(", name=").append(name).append(", type=").append(type)
				.append(", weakness=").append(weakness).append(", evolvedName=").append(evolvedName)
				.append(", imageUrl=").append(imageUrl).append("]");
		return builder.toString();
	}

	public Pokemon(String name, String type, String weakness, String evolvedName, String imageUrl) {
		super();
		this.name = name;
		this.type = type;
		this.weakness = weakness;
		this.evolvedName = evolvedName;
		this.imageUrl = imageUrl;
	}

	public Pokemon() {

	}

}
