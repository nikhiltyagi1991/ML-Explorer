from flask import (
    Blueprint
)
from .image_quantization import *
bp = Blueprint('ml-solvers', __name__, url_prefix='/ml-solvers')
bp.add_url_rule('/image-quantization',view_func=image_quantization)

@bp.route('/hello')
def hello():
    return "Hello World"