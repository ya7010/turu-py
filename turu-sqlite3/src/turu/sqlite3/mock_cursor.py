from typing import Any, Mapping, Sequence

import turu.core.cursor
import turu.core.mock
from typing_extensions import TypeAlias

from .cursor import Cursor

SQLiteParameters: TypeAlias = Sequence[Any] | Mapping[str, Any]


class MockCursor(  # type: ignore
    turu.core.mock.MockCursor[turu.core.cursor.GenericRowType, SQLiteParameters],
    Cursor[turu.core.cursor.GenericRowType],
):
    pass
