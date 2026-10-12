---
lessonID: CS04
repeatUntil:
lessonName: Algorithms 2; Systems Architecture 2
folder: 3 - Intro to Computer Science with Swift
---
# Algorithms 2; Systems Architecture 2 - *Oct 8, 2026*

| Code Challenge | Word of the Day | Review Topics |
| -------------- | --------------- | ------------- |
| Target Practice |  | Force unwrapping: when is it ever defensible? |

## Objectives

### Algorithms 2:
- I can explain what Big-O describes: how the work grows as the input grows
- I can spot O(1), O(n) and O(n²) code by reading it
- I can explain why searching is a good problem for comparing algorithms
- I can write a linear search in Swift
- I can explain why Big-O usually describes the worst case
### Systems Architecture 2:
- I can explain what a thread is and how the OS spreads threads across CPU cores
- I can explain what the main thread is and why UI work has to happen there
- I can describe the iOS app lifecycle states: active, inactive, background, suspended
- I can explain why iOS suspends or ends background apps to free memory

## Lesson Outline

- Cover [[Algorithms.pptx]] Day 2
- Cover [[Systems Architecture.pptx]] Day 2

## Assigned Reading

Before our next lesson, spend about 20 minutes with the readings below. Tomorrow we search sorted data much faster, and we learn why a set can find things without searching. We also look at what happens when your app asks a server for data.

**1. Binary search** (~5 min)

- https://www.csfieldguide.org.nz/en/chapters/algorithms/searching/

This is the same page as last time. Read "Binary search" and play its box game. Notice why the boxes have to be in order.

**2. Why set and dictionary lookup is fast** (~5 min)

- https://github.com/kodecocodes/swift-algorithm-club/blob/master/Hash%20Table/README.markdown

Read "Hash Table" and "How it works," then stop at "Avoiding collisions." A Swift `Set` and `Dictionary` both work this way.

**3. How data gets from a server to your app** (~10 min)

- https://www.khanacademy.org/computing/computers-and-internet/xcae6f4a7ff015e7d:the-internet/xcae6f4a7ff015e7d:addressing-the-internet/a/ip-v4-v6-addresses

- https://www.khanacademy.org/computing/computers-and-internet/xcae6f4a7ff015e7d:the-internet/xcae6f4a7ff015e7d:routing-with-redundancy/a/ip-packets

- https://www.khanacademy.org/computing/computers-and-internet/xcae6f4a7ff015e7d:the-internet/xcae6f4a7ff015e7d:web-protocols/a/hypertext-transfer-protocol-http

On the last link, stop at "See for yourself." It uses a web browser as the example. An iOS app sends the same kind of request.

## New Assignments

- [[Lab - Algorithms 2]]
- [[Lab - Systems Architecture 2]]

## Assignments Due Today

- [[Lab - Algorithms 1]]
- [[Lab - Systems Architecture 1]]

## Additional Resources
