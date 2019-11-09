package com.skilldistillery.pokemon.entities;

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
	private String weaknesses;
	private String evolvedName;

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
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		result = prime * result + ((weaknesses == null) ? 0 : weaknesses.hashCode());
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
		if (weaknesses == null) {
			if (other.weaknesses != null)
				return false;
		} else if (!weaknesses.equals(other.weaknesses))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Pokemon [id=").append(id).append(", name=").append(name).append(", type=").append(type)
				.append(", weaknesses=").append(weaknesses).append(", evolvedName=").append(evolvedName).append("]");
		return builder.toString();
	}

	public Pokemon(String name, String type, String weaknesses, String evolvedName) {
		super();
		this.name = name;
		this.type = type;
		this.weaknesses = weaknesses;
		this.evolvedName = evolvedName;
	}

	public Pokemon() {

	}

}
