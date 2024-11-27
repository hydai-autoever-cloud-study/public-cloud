package naver.tpdms0159.publiccloud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublicService {
    @Autowired
    private PublicRepository publicRepository;

    public List<User> Getusers() {
//        User user1 = new User();
//        user1.setUsername("test04");
//        user1.setNickname("TEST04");
//        publicRepository.save(user1);

        return publicRepository.findAll();
    }
}
