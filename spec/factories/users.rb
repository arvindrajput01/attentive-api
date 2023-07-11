# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'MyString' }
    email { 'MyString' }
    salt { 'MyString' }
    hashed_password { 'MyString' }
    first_name { 'MyString' }
    last_name { 'MyString' }
    job_title { 'MyString' }
    receive_insurance_reminders { false }
    report_group_type { 'MyText' }
    business_unit_id { 1 }
    setup { false }
    confirm_string { 'MyString' }
    widget_layout { 'MyString' }
    widget_preferences { 'MyText' }
    is_super_user { false }
    valid_from { '2023-06-04 03:32:58' }
    valid_to { '2023-06-04 03:32:58' }
    created_by { 1 }
    retired_by { 1 }
    root_id { 1 }
    subscribe_hash { 'MyString' }
    search_preferences { 'MyText' }
    risk_category_id { 'MyText' }
    phone_number { 'MyText' }
    otp { 1 }
    otp_time { '2023-06-04 03:32:58' }
    document_category_id { 'MyText' }
    task_category_id { 'MyText' }
  end
end
