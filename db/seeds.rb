# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

specialties = Specialty.create([
                                 { name: 'Addiction Medicine' },
                                 { name: 'Anesthesiology' },
                                 { name: 'Cardiology' },
                                 { name: 'Child Neurology' },
                                 { name: 'Child Psychiatry' },
                                 { name: 'Dermatology' },
                                 { name: 'Echocardiography' },
                                 { name: 'Emergency Medicine' },
                                 { name: 'Family Medicine' },
                                 { name: 'Gastroenterology' },
                                 { name: 'Hematology and Oncology' },
                                 { name: 'Internal Medicine' },
                                 { name: 'Nephrology' },
                                 { name: 'Neurology' },
                                 { name: 'Nuclear Cardiology' },
                                 { name: 'OBGYN' },
                                 { name: 'Ophthalmology' },
                                 { name: 'Opioid Prescribing' },
                                 { name: 'Orthopedic Surgery' },
                                 { name: 'Otolaryngology' },
                                 { name: 'Pain Medicine' },
                                 { name: 'Pathology' },
                                 { name: 'Pediatrics' },
                                 { name: 'Physical Medicine & Rehabilitation' },
                                 { name: 'Preventive Medicine' },
                                 { name: 'Psychiatry' },
                                 { name: 'Pulmonary and Critical Care Medicine' },
                                 { name: 'Radiology' },
                                 { name: 'Sleep Medicine' },
                                 { name: 'Sports Medicine' },
                                 { name: 'Surgery' },
                                 { name: 'Urology' }
                               ])

recommendations = CmeRecommendation.create([
                                             {
                                               name: 'Addiction Medicine CME',
                                               url: 'https://www.boardvitals.com/addiction-medicine-cme',
                                               specialty: specialties.first
                                             },
                                             {
                                               name: 'Pain Medicine CME',
                                               url: 'https://www.boardvitals.com/pain-medicine-cme',
                                               specialty: specialties.first
                                             },
                                             {
                                               name: 'Psychiatry CME',
                                               url: 'https://www.boardvitals.com/psychiatry-cme',
                                               specialty: specialties.first
                                             },
                                             {
                                               name: 'Anesthesiology CME',
                                               url: 'https://www.boardvitals.com/psychiatry-cme',
                                               specialty: specialties[1]
                                             }
                                           ])

recommendation_items = CmeRecommendationItem.create([
                                                      {
                                                        description: '40 AMA PRA Category 1™ Credit(s)',
                                                        cme_recommendation: recommendations.first
                                                      },
                                                      {
                                                        description: '45 AMA PRA Category 1™ Credit(s)',
                                                        cme_recommendation: recommendations[1]
                                                      },
                                                      {
                                                        description: '40 AMA PRA Category 1™ Credit(s)',
                                                        cme_recommendation: recommendations[2]
                                                      },
                                                      {
                                                        description: '40 ABPN SA credits',
                                                        cme_recommendation: recommendations[2]
                                                      },
                                                      {
                                                        description: '50 AMA PRA Category 1™ Credit(s)',
                                                        cme_recommendation: recommendations[3]
                                                      }
                                                    ])

licenses = CmeCoachLicense.create([
                                    {
                                      name: 'American Board of Addiction Medicine',
                                      description: 'The American Board of Addiction Medicine requires 9 Self-Assessment modules every year from a pool of ABAM selected articles that will count towards the 26 CME requirement. In addition, 9 AMA PRA Category 1 ABAM-approved credits must be completed in the addiction medicine every year. 8 AMA PRA Category 1 credits can be self-reported, as long as they contain addiction components. Diplomates can earn additional CME by completing more than 9 SAMs.',
                                      url: 'https://www.abam.net/',
                                      at_glance: '',
                                      source_url: 'https://www.abam.net/wp-content/uploads/2013/09/FINAL_FINAL_ABAM_ROUND11-FINAL.pdf',
                                      state: 'Global',
                                      specialty: specialties.first
                                    },
                                    {
                                      name: 'Alabama Board of Medical Examiners and Medical Licensure Commission of Alabama',
                                      description: 'For MD/DO accreditation in Alabama, 25 CME credits are required per one year term, of which 25 must be AMA PRA category 1. The Alabama State Board of Medical Examiners does not allow the rollover of credits. Additional Requirement for Alabama Controlled Substances Certificate registrants: Every 2 years, 2 AMA PRA Category 1 CME credits relating to controlled substance prescribing practices, recognizing signs of the abuse or misuse of controlled substances, or controlled substance prescribing for chronic pain management.',
                                      url: 'http://www.albme.org/',
                                      at_glance: '25 total hours every 1 years',
                                      source_url: 'http://www.albme.org/cme.html',
                                      state: 'Alabama',
                                      specialty: specialties.first
                                    },
                                    {
                                      name: 'American Board of Anesthesiology',
                                      description: 'The American Board of Anesthesiology requires 250 AMA PRA Category 1 hours every 10 years. Self Assessment CMEs are no longer required. 20 of the mandated 250 Category 1 CME must be ABA-approved Patient Safety CMEs. Importantly, no more than 70 credits per calendar year will be applied to the 250 hour requirement. Also, as of 2016, the MOCA Minute will be offered instead of the 10 year examination. The new requirement includes successfully completing 30 questions per calendar quarter. Learners must also complete 25 Points in Years 1-5 and 25 Points in Years 6-10.',
                                      url: 'http://www.theaba.org/',
                                      at_glance: '250 total hours every 10 years',
                                      source_url: 'http://www.theaba.org/MOCA/About-MOCA-2-0',
                                      state: 'Global',
                                      specialty: specialties[1]
                                    },
                                    {
                                      name: 'Alaska State Medical Board',
                                      description: 'The Alaska State Medical Board requires 50 AMA- or AOA-approved CME credits. For license renewals, at least two of the total hours of CME that are required to qualify for renewal must be specific to pain management and opioid use and addiction. Courses must be category 1 of AMA-approved education or Category 1 or 2 of AOA-approved education. For a podiatrist, it may instead be earned in a continuing medical education program from a provider that is approved by the Council on Podiatric Medical Education (CPME).',
                                      url: 'https://www.commerce.alaska.gov/web/WelcometoourNewWebsite.aspx',
                                      at_glance: '50 total hours every 2 years',
                                      source_url: 'https://www.commerce.alaska.gov/web/cbpl/ProfessionalLicensing/StateMedicalBoard/FrequentlyAskedQuestions.aspx',
                                      state: 'Alaska',
                                      specialty: specialties[1]
                                    }
                                  ])

license_requirements = LicenseRequirement.create([
                                                   {
                                                     cme_coach_license_id: licenses.first.id,
                                                     years: 'By the end of year'
                                                   },
                                                   {
                                                     cme_coach_license_id: licenses[1].id,
                                                     years: 'By the end of year'
                                                   },
                                                   {
                                                     cme_coach_license_id: licenses[2].id,
                                                     years: 'By the end of year 10'
                                                   },
                                                   {
                                                     cme_coach_license_id: licenses[2].id,
                                                     years: 'By the end of year 5'
                                                   },
                                                   {
                                                     cme_coach_license_id: licenses[2].id,
                                                     years: 'By the end of year'
                                                   },
                                                   {
                                                     cme_coach_license_id: licenses[3].id,
                                                     years: 'By the end of year'
                                                   }
                                                 ])

license_requirement_items = RequirementItem.create([
                                                     {
                                                       description: 'Complete at least 17 AMA PRA Category 1™ Addiction CME credits every year',
                                                       license_requirement_id: license_requirements.first.id
                                                     },
                                                     {
                                                       description: 'Complete at least 9 Self-Assessment modules every year',
                                                       license_requirement_id: license_requirements.first.id
                                                     },
                                                     {
                                                       description: '2 CME credits on prescribing controlled substances',
                                                       license_requirement_id: license_requirements[1].id
                                                     },
                                                     {
                                                       description: '25 AMA PRA Category 1 Credits.',
                                                       license_requirement_id: license_requirements[1].id
                                                     },
                                                     {
                                                       description: 'Complete an Additional 25 IMP (Improvement in Medical Practice) Points',
                                                       license_requirement_id: license_requirements[1].id
                                                     },
                                                     {
                                                       description: '20 Patient Safety CME Hours',
                                                       license_requirement_id: license_requirements[2].id
                                                     },
                                                     {
                                                       description: '250 AMA PRA Category 1 Credits',
                                                       license_requirement_id: license_requirements[2].id
                                                     },
                                                     {
                                                       description: 'Complete 25 IMP (Improvement in Medical Practice) points',
                                                       license_requirement_id: license_requirements[3].id
                                                     },
                                                     {
                                                       description: 'Complete 30 MOCA Minute questions per calendar quarter',
                                                       license_requirement_id: license_requirements[4].id
                                                     },
                                                     {
                                                       description: '50 Credits approved by the AMA or AOA.',
                                                       license_requirement_id: license_requirements[5].id
                                                     }
                                                   ])
