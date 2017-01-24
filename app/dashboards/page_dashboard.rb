require "administrate/base_dashboard"

class PageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    photo_main: Field::String,
    text_main: Field::Text,
    photo_sub_1: Field::String,
    photo_sub_1_link: Field::String,
    photo_sub_2: Field::String,
    photo_sub_2_link: Field::String,
    photo_sub_3: Field::String,
    photo_sub_3_link: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :photo_main,
    :text_main,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :photo_main,
    :text_main,
    :photo_sub_1,
    :photo_sub_1_link,
    :photo_sub_2,
    :photo_sub_2_link,
    :photo_sub_3,
    :photo_sub_3_link,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :photo_main,
    :text_main,
    :photo_sub_1,
    :photo_sub_1_link,
    :photo_sub_2,
    :photo_sub_2_link,
    :photo_sub_3,
    :photo_sub_3_link,
  ].freeze

  # Overwrite this method to customize how pages are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(page)
  #   "Page ##{page.id}"
  # end
end
