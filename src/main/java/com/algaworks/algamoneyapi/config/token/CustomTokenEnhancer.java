package com.algaworks.algamoneyapi.config.token;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;

import com.algaworks.algamoneyapi.model.Usuario;
import com.algaworks.algamoneyapi.repository.UsuarioRepository;

@SuppressWarnings("deprecation")
public class CustomTokenEnhancer implements TokenEnhancer {

	@Autowired
	private UsuarioRepository usuarioRepository;

	@Override
	public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {
		User user = (User) authentication.getPrincipal();
		Optional<Usuario> usuarioOptional = usuarioRepository.findByEmail(user.getUsername());
		Usuario usuario = usuarioOptional.orElseThrow(() -> new UsernameNotFoundException("Usuário e/ou senha incorretos"));

		Map<String, Object> addInfo = new HashMap<>();
		addInfo.put("nome", usuario.getNome());

		((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(addInfo);
		return accessToken;
	}
}
