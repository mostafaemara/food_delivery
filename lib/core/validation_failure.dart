abstract class ValidationFailure {}

class InvalidEmail implements ValidationFailure {}

class ShortPassword implements ValidationFailure {}

class Empty implements ValidationFailure {}
