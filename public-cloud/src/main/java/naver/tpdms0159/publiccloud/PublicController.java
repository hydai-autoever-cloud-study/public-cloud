package naver.tpdms0159.publiccloud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PublicController {
    @Autowired
    PublicService publicService;

    @GetMapping("/")
    public List<User> GetUsers () {
//        System.out.println(publicService.Getusers().get(0));
        return publicService.Getusers();
    }
}
