package by.haapp.offermanager.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

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
    private Long id;

    @Column(name = "provider", nullable = false)
    private String provider;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "country", nullable = false)
    private String country;

    @Column(name = "contract", nullable = false)
    private String contract;

}
