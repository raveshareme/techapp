package com.new_eklavya.util;

import java.util.Locale;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.new_eklavya.dto.UserDetailsImpl;
import com.new_eklavya.entities.Users;



@Component
public class MyUtil {
	
//	
//	
	private static String hostAndPort;
//	private static String activeProfiles;
//	
	@Value("${hostAndPort}")
    public void setHostAndPort(String hostAndPort) {
    	MyUtil.hostAndPort = hostAndPort;
    }
//	
//	@Value("${spring.profiles.active}")
//    public void setActiveProfiles(String activeProfiles) {
//    	MyUtil.activeProfiles = activeProfiles;
//    }
//    
//	public static boolean isDev() {
//    	return activeProfiles.equals("dev");
//    }
//
//
	 public static String hostUrl() {
			return ( "https://") + hostAndPort;
		}
	
	
	@Autowired
	public MyUtil(MessageSource messageSource) {
		MyUtil.messageSource = messageSource;
	}
	
	public static void flash(RedirectAttributes redirectAttributes,
			String kind, String messageKey) {
		
		redirectAttributes.addFlashAttribute("flashKind", kind);
		redirectAttributes.addFlashAttribute("flashMessage",
				MyUtil.getMessage(messageKey));
		
	}
	
	private static MessageSource messageSource;

	public static String getMessage(String messageKey, Object... args) {
		return messageSource.getMessage(messageKey, args, Locale.getDefault());
	}

	public static Optional<Users> currentUser() {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		if(auth !=null) {
			
			Object principal = auth.getPrincipal();
			
			if(principal instanceof Users) 				
				Optional.of((Users)principal);
			
		}
		return Optional.empty();
		
	}
	public static Users getSessionUser() {
		UserDetailsImpl auth = getAuth();
		return auth == null ? null : auth.getUser();

	}
	private static UserDetailsImpl getAuth() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
	    if (auth != null) {
	      Object principal = auth.getPrincipal();
	      if (principal instanceof UserDetailsImpl) {
	        return (UserDetailsImpl) principal;
	      }
	    }
	    return null;	  
	}
	public static void validate(boolean valid, String msgContent,
			Object... args) {
		if (!valid)
			throw new RuntimeException(getMessage(msgContent, args));
	}
	public static String getFooter() {
		String foot="<br><br<br><br>Let's do Great things together<br><br>Tech-eklavya";
		String footer=foot+"<br><br><br><br>P.S. Thought, you might also like to check the following links."+"<ul class=list-group>"+
  "<li class=list-group-item>First item</li>"+
  "<li class=list-group-item>Second item</li>"+
  "<li class=list-group-item>Third item</li></ul>"+
  "<br><br><br><br><a href=tech-eklavya.com>Level Up Your Tech Skills !</a>";
		
		return footer;
	}

}
