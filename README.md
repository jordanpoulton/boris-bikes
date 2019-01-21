# Boris Bikes Week

### An attempt to learn basic TDD in Ruby using RSPec by way of creating a system to manage the Boris Bikes network

Stories:
===
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```
```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```
```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```
```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```

Domain Model:
===

Objects:  | Person | Bike | DockingStation
------------- | ------------- | -------------- | -------------- |
Message->Response: |    | working?->true/false | bike->a Bike
Message->Response: |   |   | dock(bike)

