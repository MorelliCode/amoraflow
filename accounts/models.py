from typing import ClassVar

from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    REQUIRED_FIELDS: ClassVar[list[str]] = []
