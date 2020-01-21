package pl.robert.allegrodemo.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String firstName;
    @NotBlank
    private String lastName;
    @Email
    @NotBlank
    private String email;
    @NotBlank
    private String password;
    @NotBlank
    private String region;
    @NotBlank
    private String terrytory;
    private int koszykAntybiotyki;
    private int koszykCNS;
    private int koszykDerma;
    private int koszykOTC;
    private int koszykDiabetologia;
    private LocalDate dateOfIMS;
    @Column(scale = 2, precision = 6)
    @NotNull
    private BigDecimal budget;
    @OneToMany(mappedBy = "user", cascade = CascadeType.MERGE, orphanRemoval = true, fetch = FetchType.EAGER)
    private List<Costs> costsList = new ArrayList<>();
    @NotNull
    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<Costs> getCostsList() {
        return costsList;
    }

    public void setCostsList(List<Costs> costsList) {
        this.costsList = costsList;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getTerrytory() {
        return terrytory;
    }

    public void setTerrytory(String terrytory) {
        this.terrytory = terrytory;
    }

    public int getKoszykAntybiotyki() {
        return koszykAntybiotyki;
    }

    public void setKoszykAntybiotyki(int koszykAntybiotyki) {
        this.koszykAntybiotyki = koszykAntybiotyki;
    }

    public int getKoszykCNS() {
        return koszykCNS;
    }

    public void setKoszykCNS(int koszykCNS) {
        this.koszykCNS = koszykCNS;
    }

    public int getKoszykDerma() {
        return koszykDerma;
    }

    public void setKoszykDerma(int koszykDerma) {
        this.koszykDerma = koszykDerma;
    }

    public int getKoszykOTC() {
        return koszykOTC;
    }

    public void setKoszykOTC(int koszykOTC) {
        this.koszykOTC = koszykOTC;
    }

    public int getKoszykDiabetologia() {
        return koszykDiabetologia;
    }

    public void setKoszykDiabetologia(int koszykDiabetologia) {
        this.koszykDiabetologia = koszykDiabetologia;
    }

    public LocalDate getDateOfIMS() {
        return dateOfIMS;
    }

    public void setDateOfIMS(LocalDate dateOfIMS) {
        this.dateOfIMS = dateOfIMS;
    }

    public BigDecimal getBudget() {
        return budget;
    }

    public void setBudget(BigDecimal budget) {
        this.budget = budget;
    }
}
