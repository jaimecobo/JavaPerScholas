package co.jaimecobo.javaspringmaven0724.database.dao;

import co.jaimecobo.javaspringmaven0724.database.entity.Relationship;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Map;

public interface RelationshipDAO extends JpaRepository<Relationship, Long> {
    Relationship findById(Integer id);

@Query(value="SELECT u.id, u.username, u.first_name AS firstname, u.last_name AS lastname, u.user_image_url AS image " +
        "FROM users u, relationships r " +
        "WHERE u.id = r.follower_id AND r.followed_id = :id " +
        "ORDER BY firstname, lastname;",
        nativeQuery = true)
    List<Map<String, Object>> getUserFollowers(Integer id);
//    List<Map<String, Object>> findByFollowedId(Integer id);

    @Query(value="SELECT u.id, u.username, u.first_name AS firstname, u.last_name AS lastname, u.user_image_url AS image " +
            "FROM users u, relationships r " +
            "WHERE u.id = r.followed_id AND r.follower_id = :id " +
            "ORDER BY firstname, lastname;",
            nativeQuery = true)
    List<Map<String, Object>> getWhoUserFollows(Integer id);
//    List<Map<String, Object>> findByFollowerId(Integer id);
}
