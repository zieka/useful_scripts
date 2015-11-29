# Quick restore of a deleted or lost file in git

First add alias:

```
git config alias.restore '!f() { git checkout $(git rev-list -n 1 HEAD -- $1)~1 -- $(git diff --name-status $(git rev-list -n 1 HEAD -- $1)~1 | grep '^D' | cut -f 2); }; f'
```

Then call using:

```
git restore my_deleted_file
```
