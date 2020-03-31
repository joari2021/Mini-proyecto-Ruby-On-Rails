require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Address", with: @student.address
    fill_in "Age", with: @student.age
    fill_in "Career", with: @student.career
    fill_in "City", with: @student.city
    fill_in "Country", with: @student.country
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Document", with: @student.document
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Marital status", with: @student.marital_status
    fill_in "Name", with: @student.name
    fill_in "Nationality", with: @student.nationality
    fill_in "Number phone", with: @student.number_phone
    fill_in "Reason", with: @student.reason
    fill_in "State", with: @student.state
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Address", with: @student.address
    fill_in "Age", with: @student.age
    fill_in "Career", with: @student.career
    fill_in "City", with: @student.city
    fill_in "Country", with: @student.country
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Document", with: @student.document
    fill_in "Gender", with: @student.gender
    fill_in "Last name", with: @student.last_name
    fill_in "Marital status", with: @student.marital_status
    fill_in "Name", with: @student.name
    fill_in "Nationality", with: @student.nationality
    fill_in "Number phone", with: @student.number_phone
    fill_in "Reason", with: @student.reason
    fill_in "State", with: @student.state
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
