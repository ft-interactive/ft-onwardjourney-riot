## `ft-onwardjourney` Riot tag

Adding Onward Journey to projects just got a whole lot easier.

```
<!doctype html>
<html>
  <head>
    <title>Yay, it's Onward Journey Time!</title>
  </head>
  <body>
    <!-- place the custom tag anywhere inside the body -->
    <ft-onwardjourney></ft-onwardjourney>

    <!-- include the tag -->
    <script type="riot/tag" src="onward-journey.tag"></script>

    <!-- include riot.js -->
    <script src="https://cdn.jsdelivr.net/riot/3.1/riot+compiler.min.js"></script>

    <!-- mount the tag -->
    <script>
      var onwardJourneyConfig = [
        { rows: 1, list: 'list/graphics' },
        { rows: 1, list: 'list/highlights' }
      ];
      riot.mount('ft-onwardjourney', onwardJourneyConfig);
    </script>
  </body>
</html>
```
