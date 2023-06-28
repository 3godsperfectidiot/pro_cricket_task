# pro_cricket_task

Task given for Cricket Project by U

# TODO's

- Need to Have all the counts in Parent widget where we have scrlling
- Remove add List Widget in list from build context
- Use Key to remove specific/right element from Flutter tree's

# Solution
- Convert List Widget, from StatelessWidget to StatefulWidget and ListItemWidget, from StatefulWidget to StatelessWidget
- Created a list of length 100 of ValueNotifier of int data type in ListWidget.
- Add Scaffold widget for better UI
- Add ValueNotifier of int data type as a data member in ListItemWidget and pass respective ValueNotifier value from ListItemWidget's listViewBuilder.
- I used the ValueKey to help flutter framework to understand which widget should change in a good manner. 
