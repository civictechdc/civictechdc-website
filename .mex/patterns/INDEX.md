# Pattern Index

Lookup table for all pattern files in this directory. Check here before starting any task — if a pattern exists, follow it.

<!-- This file is populated during setup (Pass 2) and updated whenever patterns are added.
     Each row maps a pattern file (or section) to its trigger — when should the agent load it?

     Format — simple (one task per file):
     | [filename.md](filename.md) | One-line description of when to use this pattern |

     Format — anchored (multi-section file, one row per task):
     | [filename.md#task-first-task](filename.md#task-first-task) | When doing the first task |
     | [filename.md#task-second-task](filename.md#task-second-task) | When doing the second task |

     Example (from a Flask API project):
     | [add-api-client.md](add-api-client.md) | Adding a new external service integration |
     | [debug-pipeline.md](debug-pipeline.md) | Diagnosing failures in the request pipeline |
     | [crud-operations.md#task-add-endpoint](crud-operations.md#task-add-endpoint) | Adding a new API route with validation |
     | [crud-operations.md#task-add-model](crud-operations.md#task-add-model) | Adding a new database model |

     Keep this table sorted alphabetically. One row per task (not per file).
     If you create a new pattern, add it here. If you delete one, remove it. -->

| Pattern                                                                            | Use when                                                             |
| ---------------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| [add-content.md#task-add-a-project](add-content.md#task-add-a-project)             | Adding a new project to the `_projects` collection                   |
| [add-content.md#task-add-a-special-event](add-content.md#task-add-a-special-event) | Adding a new event to the `_events` collection                       |
| [add-content.md#task-add-a-blog-post](add-content.md#task-add-a-blog-post)         | Adding a new blog post under `_posts`                                |
| [responsive-images.md](responsive-images.md)                                       | Adding or referencing any image (responsive variants, lazy-loading)  |
| [seo-metadata.md](seo-metadata.md)                                                 | Changing page metadata, social previews, schema, or crawler files    |
| [styling-css.md](styling-css.md)                                                   | Changing styles via USWDS/Sass, page-specific CSS, or the gulp build |
