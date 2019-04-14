package by.haapp.offermanager.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "providers")
public class Provider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @NotEmpty
    @Size(min = 5, max = 100)
    @Column(name = "provider", nullable = false)
    private String provider;

    @NotEmpty
    @Size(min = 5, max = 200)
    @Column(name = "description", nullable = false)
    private String description;

    @NotEmpty
    @Size(min = 5, max = 50)
    @Column(name = "country", nullable = false)
    private String country;

    @NotEmpty
    @Size(min = 5, max = 100)
    @Column(name = "contact", nullable = false)
    private String contact;

}
