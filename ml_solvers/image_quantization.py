from flask import render_template, request

def image_quantization():
    if request.method == 'POST':
        return 'Post method body'
    return render_template('ml-solvers/image_quantization.html')