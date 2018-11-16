## General Application Background

The intention of this application if for users to coordinate which trails they will be using for a day hike. This will test your ability to set up many-to-many relationships and access attributes and methods through those relationships.

### Constraints:

- Visitors will go on many hiking trips
- Each hiking trip is made up of one or more trails
- A trail may be part of more than one hiking trip

## Be sure to read all user stories BEFORE beginning your work

## Setup

- Perform the usual setup steps after cloning a Rails application

## Requirements

- TDD all new work; you may postpone model tests for attribute validations only

## Not Required

- No form input is required
- No visual styling is required


## User Stories

### Hiking Trip Index page

```
User Story 1 of 10

As a visitor,
when I visit the hiking trips index page,
I see a list of all hiking trip names in
the database.
```

```
User Story 2 of 10

As a visitor,
when I visit the hiking trips index page,
and I click on the name of a hiking trip,
I see a unique page for that hiking trip.
```

### Hiking Trip Show page
```
User Story 3 of 10

As a visitor,
when I visit a hiking trip's page,
I see a list of trails included in the trip,
I see the name, address, and length for each trail.
```

```
User Story 4 of 10

As a visitor,
when I visit a hiking trip's page,
I see the total hiking distance
of all trails on that hiking trip
```

```
User Story 5 of 10

As a visitor,
when I visit a hiking trip's page,
I see the average hiking distance
of all trails on that hiking trip
```

```
User Story 6 of 10

As a visitor,
when I visit a hiking trip's page,
I see a heading that says "Longest Trail on Trip"
  and the name and length of the longest trail
  included on that hiking trip
```

```
User Story 7 of 10

As a visitor,
when I visit a hiking trip's page,
I see a heading that says "Shortest Trail on Trip"
  and the name and length of the longest trail
  included on that hiking trip
```

```
User Story 8 of 10

As a visitor,
when I visit a hiking trip's page,
I can click on the name of a trail
to see a show page for that specific trail.
```

### Trail Show page

```
User Story 9 of 10

As a visitor,
when I visit a trail's page,
I see the name and address of this trail.
I also see the name and total length of
every hiking trip that includes this trail
```

```
User Story 10 of 10

As a visitor,
when I visit a trail's page,
I see the total number of hiking trips where this trail
was included
```
