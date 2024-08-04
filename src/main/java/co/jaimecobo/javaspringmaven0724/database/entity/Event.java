package co.jaimecobo.javaspringmaven0724.database.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "events")
public class Event {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ToString.Exclude
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "organizer", nullable = false)
    private User organizer;

    @ToString.Exclude
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "city_id", nullable = false)
    private City city;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "organizer", nullable = false, insertable = false, updatable = false)
    private Integer organizerId;

    @Column(name = "city_id", nullable = false, insertable = false, updatable = false)
    private Integer cityId;

    @Column(name = "starting_date", nullable = false)
    private Date startingDate;

    @Column(name = "ending_date", nullable = false)
    private Date ending_date;

    @Column(name = "event_image_url", nullable = false)
    private String eventImageUrl;

    @Column(name = "event_web_url", nullable = false)
    private String event_web_url;

    @Column(name = "created_at", updatable = false,  nullable = false, columnDefinition = "timestamp default current_timestamp")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

}
