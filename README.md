# CME Coach API

##Description

Code test for a company. The idea is to basically simulate the data being displayed on www.boardvitals.com/cme on the CME Coach section.
The API endpoint will receive 2 parameters: State and Specialty. And will return data for the 2 sections inside Recommendations and Licenses.

Seed were only added for a couple of test scenarios. They can be check on db/seeds.rb
For 'Addiction Medicine' and 'Alabama' combo, and 'Anesthesiology' and 'Alaska' combo.
Only those 2 specialties wll receive data,

## Instalation

- Ruby version
  3.0
- Rails version
  6.1

- Deployment instructions

```bash
git clone https://github.com/tocirml/cme-coach-api
```

```bash
 cd cme-coach-api
```

```bash
bundle install
```

```bash
rails db:migrate
```

```bash
rails db:seed
```

```bash
rails s
```

The API should run on http://localhost:3001

## The Solution

All assumptions were made based on the CME Coach section in www.boardvitals.com/cme.
Two clear sections can be seen here when we select both specialty and state: recommendations and licenses.
For recommendations a model was created (CmeRecommendation), and a related model (CmeRecommendationItem) for each item on the list they display.

For the licenses 3 models were created:
CmeCoachLicense to represent each block of data sent.
A related model LicenseRequirements to represent the list of what its expected for each year
and RequirementsItems for each item on the LicenseRequirements.

A Specialty model was created, that will have has_many relation with CmeCoachLicense and CmeRecommendation.

The state was added as a field on CmeCoachLicense, value 'Global' is expected for the "American Board" licenses.
It was made like this in order to reduce complexity, but of course it could have been it's own table.

The endpoint itself is accessed with the url http://localhost:3001/api/v1/cmecoach. This will return the data for both recommendations and licenses if we send the correct parameters.

No Authorization/Authentication was added, since the original endpoint looks like they are of public access.

No other endpoints were added, in order to reduce complexity, and they didnt seem necessary for the test.
