## Slides Template

---

### Why Markdown?

- <!-- .element: class="fragment" data-fragment-index="1" --> I prefer to write my slides in Markdown.
- <!-- .element: class="fragment" data-fragment-index="2" --> It's easy to read and write.

Notes:

All I want to say!

--

### Code Highlighting

```python [23: 1|2]
def hello():
    print("Hello World!")
```

--

<div class="mermaid">
<pre>
%%{ init: { 'theme': 'dark', 'themeVariables': { 'edgeLabelBackground': 'transparent' } } }%%
flowchart LR
    Start[Nothing To Do? 🥱] --> FID

    subgraph FID[Fiddling around]
        DEV1[Change]
        DEV2[Check]
        DEV1 --> DEV2
        DEV2 -->|🛠️ Fix| DEV1
    end

</pre>
</div>

---

## Questions?
