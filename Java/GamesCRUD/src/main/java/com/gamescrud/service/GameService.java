package com.gamescrud.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamescrud.model.Game;
import com.gamescrud.repository.GamesRepository;

@Service
public class GameService {
	@Autowired
	private GamesRepository gamesRepository;
	public List<Game> getAllGames(){
		List<Game> games =gamesRepository.findAll();
		return games;
	}
	public Game getGameById(long id) {
		Optional<Game> byId = gamesRepository.findById(id);
		Game game = byId.get();
		return game;
	}
	public void deleteGameById(Long id) {
		gamesRepository.deleteById(id);
	
	}
	public Game updateGameById(Game game, Long id) {
		Optional<Game> oldGame = gamesRepository.findById(id);
		Game oldGame1 = oldGame.get();
		oldGame1.setGameName(game.getGameName());
		oldGame1.setCostPerHour(game.getCostPerHour());
		oldGame1.setStatus(game.getStatus());
		Game save= gamesRepository.save(oldGame1);
		return save;
	}
}
