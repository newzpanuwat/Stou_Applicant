# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Applicant.create!([{ap_code: '001',
    ap_name: 'Boat',
    ap_addr: '73/310',
    ap_province: 'Bangkok',
    ap_sex: 'Male',
    ap_ed: 'B.A',
    ap_maj: 'Comscience'
},
{
    ap_code: '002',
    ap_name: 'New',
    ap_addr: '73/310',
    ap_province: 'Bangkok',
    ap_sex: 'Male',
    ap_ed: 'B.A',
    ap_maj: 'Comscience'} ])