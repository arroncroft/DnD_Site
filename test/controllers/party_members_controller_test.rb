require 'test_helper'

class PartyMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_member = party_members(:one)
  end

  test "should get index" do
    get party_members_url
    assert_response :success
  end

  test "should get new" do
    get new_party_member_url
    assert_response :success
  end

  test "should create party_member" do
    assert_difference('PartyMember.count') do
      post party_members_url, params: { party_member: { backstory: @party_member.backstory, description: @party_member.description, name: @party_member.name, place_of_origin: @party_member.place_of_origin, player: @party_member.player, rpg_class: @party_member.rpg_class } }
    end

    assert_redirected_to party_member_url(PartyMember.last)
  end

  test "should show party_member" do
    get party_member_url(@party_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_party_member_url(@party_member)
    assert_response :success
  end

  test "should update party_member" do
    patch party_member_url(@party_member), params: { party_member: { backstory: @party_member.backstory, description: @party_member.description, name: @party_member.name, place_of_origin: @party_member.place_of_origin, player: @party_member.player, rpg_class: @party_member.rpg_class } }
    assert_redirected_to party_member_url(@party_member)
  end

  test "should destroy party_member" do
    assert_difference('PartyMember.count', -1) do
      delete party_member_url(@party_member)
    end

    assert_redirected_to party_members_url
  end
end
