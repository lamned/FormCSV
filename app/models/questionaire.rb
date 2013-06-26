# encoding: UTF-8
class Questionaire < ActiveRecord::Base
  attr_accessible :gender, :profession, :age, :city, :graduation, :year_apprenticeship, :first_apprenticeship, :subsistence, :gross_salary, :number_applications, :found_apprenticeship, :internet_portal, :known_portals, :different_professions, :dream_job, :different_dream_job, :reason_apprenticeship, :canceled_apprenticeship, :canceled_job, :reason_canceled_apprenticeship, :annoying_apprenticeship, :organization_or_school, :school_like, :organization_like, :profession_like

  def self.graduation_options
    ["Kein Schulabschluss", "Hauptschulabschluss", "Realschulabschluss", "Abitur", "Fachabitur"]
  end

  def self.subsistence_options
    ["Finanzielle Unterstützung meiner Eltern", "BAföG", "Ersparnisse", "Kredit", "Mein Gehalt ist ausreichend"]
  end

  def self.found_apprenticeship_options
    ["Arbeitsagentur", "Freunde / Bekannte / Familie", "Website des jeweiligen Unternehmens", "Messe", "Zeitung", "Internet-Portal"]
  end

  def self.internet_portal_options
    ["www.azubiyo.de", "www.jobboerse.arbeitsagentur.de", "www.stepstone.de", "www.aubi-plus.de", "www.monster.de", "www.ausbildung.de"]
  end

  def self.known_portals_options
    ["www.azubiyo.de", "www.jobboerse.arbeitsagentur.de", "www.stepstone.de", "www.aubi-plus.de", "www.monster.de", "www.ausbildung.de"]
  end

  def self.reason_apprenticeship_options
     ["Gehalt", "Arbeitszeiten", "Empfehlung der Berufsberatung", "Generelles Interesse an dieser Berufsrichtung", "Meine Eltern / Freunde / Bekannte üben denselben Beruf aus", "Ich habe keine andere Ausbildung bekommen", "Ich habe mich anhand meiner Lieblingsfächer in der Schule orientiert"]
  end

  def self.reason_canceled_apprenticeship_options
    ["Geringes Gehalt", "Probleme mit meinem Vorgesetzten", "Probleme mit meinen Kollegen / Kolleginnen", "Unter diesem Ausbildungsberuf hatte ich mir etwas anderes vorgestellt", "Ich habe das Interesse verloren", "Meine schulische Leistung war nicht ausreichend", "Aus privaten Gründen (Umzug, Krankheit, etc.)"]
  end

  def self.annoying_apprenticeship_options
    ["Zu wenig Freizeit", "Uninteressante Aufgaben", "Geringes Gehalt", "Unsympathische Kollegen", "Unsympathische Vorgesetzte", "Die Berufsschule", "Gar nichts"]
  end

  def self.organization_or_school_options
    ["Im Unternehmen", "In der Berufsschule"]
  end

end