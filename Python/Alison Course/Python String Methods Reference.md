# Python String Methods Reference

Strings implement common sequence operations along with additional methods.

## Formatting Styles
1. `str.format()`: Flexible, customizable string formatting.
2. C-style formatting (`printf`): Faster but less flexible.

For text-related utilities, see the `re` module and Text Processing Services.

---

## String Methods

### Case & Formatting
- `str.capitalize()`: Capitalizes first letter, lowercases rest.
- `str.casefold()`: Converts to case-insensitive form (e.g., `ß` → `ss`).
- `str.lower()`: Converts to lowercase.
- `str.upper()`: Converts to uppercase.
- `str.swapcase()`: Swaps uppercase and lowercase.
- `str.title()`: Converts to title case.

### Alignment & Padding
- `str.center(width[, fillchar])`: Centers text within `width`.
- `str.ljust(width[, fillchar])`: Left-aligns with padding.
- `str.rjust(width[, fillchar])`: Right-aligns with padding.
- `str.zfill(width)`: Pads with zeros.

### Searching & Replacing
- `str.find(sub[, start[, end]])`: Returns index of `sub` or `-1`.
- `str.index(sub[, start[, end]])`: Like `find()`, but raises error if `sub` not found.
- `str.rfind(sub[, start[, end]])`: Searches from the right.
- `str.rindex(sub[, start[, end]])`: Like `rfind()`, but raises error if not found.
- `str.replace(old, new[, count])`: Replaces occurrences of `old` with `new`.

### Checking Content
- `str.isalnum()`: True if all characters are alphanumeric.
- `str.isalpha()`: True if all characters are alphabetic.
- `str.isdigit()`: True if all characters are digits.
- `str.isnumeric()`: True if all characters are numeric.
- `str.isdecimal()`: True if all characters are decimal digits.
- `str.islower()`: True if all characters are lowercase.
- `str.isupper()`: True if all characters are uppercase.
- `str.istitle()`: True if titlecased.
- `str.isspace()`: True if all characters are whitespace.
- `str.isascii()`: True if all characters are ASCII.
- `str.isidentifier()`: True if a valid Python identifier.

### Splitting & Joining
- `str.split(sep=None, maxsplit=-1)`: Splits at `sep`.
- `str.rsplit(sep=None, maxsplit=-1)`: Splits from the right.
- `str.splitlines(keepends=False)`: Splits at line breaks.
- `str.join(iterable)`: Joins elements with separator.

### Stripping & Partitioning
- `str.strip([chars])`: Removes leading/trailing `chars`.
- `str.lstrip([chars])`: Removes leading `chars`.
- `str.rstrip([chars])`: Removes trailing `chars`.
- `str.partition(sep)`: Splits into `(before, sep, after)`.
- `str.startswith(prefix[, start[, end]])`: Checks if string starts with `prefix`.
- `str.endswith(suffix[, start[, end]])`: Checks if string ends with `suffix`.

### Encoding & Expanding
- `str.encode(encoding='utf-8', errors='strict')`: Encodes to bytes.
- `str.expandtabs(tabsize=8)`: Replaces tabs with spaces.

### Formatting
- `str.format(*args, **kwargs)`: Formats using `{}` placeholders.
- `str.format_map(mapping)`: Like `format()`, but uses a dictionary.

---

This reference summarizes common Python string methods for quick lookup.
