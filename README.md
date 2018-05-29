## General Application Background

The intention of this application if for users to coordinate which trails they will be using for a day hike.

### Constraints:

- Users will go on many hiking trips
- Users will visit one or more trails on a hiking trip
- Users should be allowed to use the same trail on different hiking trips
- Users will only take a hiking trip on a single day (no overnight camping!)


### Do's and Don'ts:

- You will not need to implement authentication/authorization functionality.
- You will be expected to present full test coverage for everything you build.
  - you are ONLY excused from writing validation/relationship tests at the model level


### Hiking Trip Index page
```
As a visitor,
when I visit the hiking trips index page,
I see a list of all hiking trip names in
the database.
```

```
As a visitor,
when I visit the hiking trips index page,
and I click on the name of a hiking trip,
I see a unique page for that hiking trip.
```

### Hiking Trip Show page
```
As a visitor,
when I visit a hiking trip's page,
I see a list of trails included in the trip,
I see the name, address, and length for each trail.
```

```
As a visitor,
when I visit a hiking trip's page,
I see the total hiking distance
of all trails on that hiking trip
```

```
As a visitor,
when I visit a hiking trip's page,
I see the average hiking distance
of all trails on that hiking trip
```

```
As a visitor,
when I visit a hiking trip's page,
I see the longest hiking distance
from all trails on that hiking trip
```

```
As a visitor,
when I visit a hiking trip's page,
I see the shortest hiking distance
from all trails on that hiking trip
```

```
As a visitor,
when I visit a hiking trip's page,
I can click on the name of a trail
to see a show page for that specific trail.
```

### Trail Show page

```
As a visitor,
when I visit a trail's page,
I see the name, address, and total length of
every hiking trip that includes this trail
```

```
As a visitor,
when I visit a trail's page,
I see the total number of hiking trips where this trail
was included
```
