package software.purpledragon.blog.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;

@Entity
@Table(name = "tag")
public class Tag {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    @ManyToOne(optional = false)
    @JoinColumn(name = "article", updatable = false)
    @JsonIgnore
    private Article article;

    @Column(name = "tag")
    @JsonProperty
    private String tag;
}
