require 'test_helper'

class QuestionairesControllerTest < ActionController::TestCase
  setup do
    @questionaire = questionaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questionaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questionaire" do
    assert_difference('Questionaire.count') do
      post :create, questionaire: { age: @questionaire.age, annoying_apprenticeship: @questionaire.annoying_apprenticeship, canceled_apprenticeship: @questionaire.canceled_apprenticeship, canceled_job: @questionaire.canceled_job, city: @questionaire.city, different_dream_job: @questionaire.different_dream_job, different_professions: @questionaire.different_professions, dream_job: @questionaire.dream_job, first_apprenticeship: @questionaire.first_apprenticeship, found_apprenticeship: @questionaire.found_apprenticeship, gender: @questionaire.gender, graduation: @questionaire.graduation, gross_salary: @questionaire.gross_salary, internet_portal: @questionaire.internet_portal, known_portals: @questionaire.known_portals, number_applications: @questionaire.number_applications, organization_like: @questionaire.organization_like, organization_or_school: @questionaire.organization_or_school, profession: @questionaire.profession, profession_like: @questionaire.profession_like, reason_apprenticeship: @questionaire.reason_apprenticeship, reason_canceled_apprenticeship: @questionaire.reason_canceled_apprenticeship, school_like: @questionaire.school_like, subsistence: @questionaire.subsistence, year_apprenticeship: @questionaire.year_apprenticeship }
    end

    assert_redirected_to questionaire_path(assigns(:questionaire))
  end

  test "should show questionaire" do
    get :show, id: @questionaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questionaire
    assert_response :success
  end

  test "should update questionaire" do
    put :update, id: @questionaire, questionaire: { age: @questionaire.age, annoying_apprenticeship: @questionaire.annoying_apprenticeship, canceled_apprenticeship: @questionaire.canceled_apprenticeship, canceled_job: @questionaire.canceled_job, city: @questionaire.city, different_dream_job: @questionaire.different_dream_job, different_professions: @questionaire.different_professions, dream_job: @questionaire.dream_job, first_apprenticeship: @questionaire.first_apprenticeship, found_apprenticeship: @questionaire.found_apprenticeship, gender: @questionaire.gender, graduation: @questionaire.graduation, gross_salary: @questionaire.gross_salary, internet_portal: @questionaire.internet_portal, known_portals: @questionaire.known_portals, number_applications: @questionaire.number_applications, organization_like: @questionaire.organization_like, organization_or_school: @questionaire.organization_or_school, profession: @questionaire.profession, profession_like: @questionaire.profession_like, reason_apprenticeship: @questionaire.reason_apprenticeship, reason_canceled_apprenticeship: @questionaire.reason_canceled_apprenticeship, school_like: @questionaire.school_like, subsistence: @questionaire.subsistence, year_apprenticeship: @questionaire.year_apprenticeship }
    assert_redirected_to questionaire_path(assigns(:questionaire))
  end

  test "should destroy questionaire" do
    assert_difference('Questionaire.count', -1) do
      delete :destroy, id: @questionaire
    end

    assert_redirected_to questionaires_path
  end
end
