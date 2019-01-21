# Pharo-HaltOnStateAccess
Object-centric halt on read/write to instance variables

# Installation
Copy/paste in a playground and doIt. This will load Reflectivity-Dev package with object-centric features. You should override your local packages.

```Smalltalk
Metacello new
    baseline: 'HaltOnStateAccess';
    repository: 'github://StevenCostiou/Pharo-HaltOnStateAccess';
    load.
```
