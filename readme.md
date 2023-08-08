# `On Mouse Up` not always triggered
## Description of the bug
When a window is open with the **`Controller form window`** type and the window is **not in the front**, when clicking on an input field, the `On Mouse Up` is not always triggered.

The trigger of the `On Mouse Up` depend on 2 things:
- The number of form objects in the form. The more objects, the less the event may trigger.
- The speed of the click. The quicker we click, the less the event may trigger.


## How to reproduce
1. open the project.
2. launch the `openForm` method. This will open 3 forms. All the windows will open in the same process and will be stack on top of each other, you can separate the windows to see them all in your screen.
3. make sure to have the windows in the back by having the focus on the "Debug" window
4. click very quickly on the white area in the "bug" window. If you click fast enough you will only see the `On Clicked` event in the debug window. But more certainly you will see both `On Clicked` and `On Mouse Up`.
5. Now do the same on the "bug1" window.

### Expected result
To see both `On Clicked` and `On Mouse Up`

### Actual result
Only `on Clicked` is triggered.

## Notes
It is important to click very quickly on the mouse or the trackpad. If we click very slowly like keeping the mousedown for 1 second and only then doing the mouseup, we can see that both `On Clicked` and `On Mouse Up` are fired.

The difference between the window "bug" and "bug1" is that "bug1" contains much more form objects.
The fact that when clicking slowly (like described above) works, shows that it seems the `On Mouse Up` is only triggered when the window have the focus. This can be problematic and make our controller window to not respond to user clicks. This will provide a poor user experience because they will need to click twice in order to have the correct behaviour.

You can also try to activate those event : `On Mouse Enter`, `On Mouse Leave` and `On Mouse Move`. You will see that those event are correctly triggered even when the window doesn't have the focus.

We also note that other windows type don't trigger any event when they are not in the front, like `plain form window` and thus cannot be used instead of a controller window to respond to user itneraction when they are not in the front. Only palette window cann be used but controlled is betetr suited for windows because it don't disapear when not in the front.
