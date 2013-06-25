# encoding: UTF-8
class Questionaire
  include Mongoid::Document
  field :gender, type: String
  field :profession, type: String
  field :age, type: Integer
  field :city, type: String
  field :graduation, type: Array, default: []
  field :year_apprenticeship, type: Integer
  field :first_apprenticeship, type: Boolean
  field :subsistence, type: Array, default: []
  field :gross_salary, type: Integer
  field :number_applications, type: Integer
  field :found_apprenticeship, type: Array, default: []
  field :internet_portal, type: Array, default: []
  field :known_portals, type: Array, default: []
  field :different_professions, type: String
  field :dream_job, type: Boolean
  field :different_dream_job, type: String
  field :reason_apprenticeship, type: Array, default: []
  field :canceled_apprenticeship, type: Boolean
  field :canceled_job, type: String
  field :reason_canceled_apprenticeship, type: Array, default: []
  field :annoying_apprenticeship, type: Array, default: []
  field :organization_or_school, type: String
  field :school_like, type: Boolean
  field :organization_like, type: Boolean
  field :profession_like, type: Boolean

  def self.subsistence_options
    ["Finanzielle Unterstützung meiner Eltern", 'BAföG', 'Ersparnisse', 'Kredit', 'Mein Gehalt ist ausreichend']
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

end