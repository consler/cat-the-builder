.class public Lcom/badlogic/gdx/backends/android/AndroidGL20;
.super Ljava/lang/Object;
.source "AndroidGL20.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# instance fields
.field private buffer:[B

.field private ints:[I

.field private ints2:[I

.field private ints3:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    .line 29
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 0
    .param p1, "texture"    # I

    .line 32
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 33
    return-void
.end method

.method public glAttachShader(II)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .line 36
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 37
    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 40
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .line 44
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 45
    return-void
.end method

.method public glBindFramebuffer(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    .line 48
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 49
    return-void
.end method

.method public glBindRenderbuffer(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    .line 52
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 53
    return-void
.end method

.method public glBindTexture(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .line 56
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    return-void
.end method

.method public glBlendColor(FFFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 60
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 61
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 64
    invoke-static {p1}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    .line 65
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 0
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    .line 68
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendEquationSeparate(II)V

    .line 69
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 0
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .line 72
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 73
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 0
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    .line 76
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 77
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .line 80
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 81
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .line 84
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 85
    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .locals 1
    .param p1, "target"    # I

    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    return v0
.end method

.method public glClear(I)V
    .locals 0
    .param p1, "mask"    # I

    .line 92
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 93
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 96
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 97
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 0
    .param p1, "depth"    # F

    .line 100
    invoke-static {p1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 101
    return-void
.end method

.method public glClearStencil(I)V
    .locals 0
    .param p1, "s"    # I

    .line 104
    invoke-static {p1}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 105
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 0
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .line 108
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 109
    return-void
.end method

.method public glCompileShader(I)V
    .locals 0
    .param p1, "shader"    # I

    .line 112
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 113
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .line 116
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 117
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .line 120
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 121
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .line 124
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 125
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .line 128
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 129
    return-void
.end method

.method public glCreateProgram()I
    .locals 1

    .line 132
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    return v0
.end method

.method public glCreateShader(I)I
    .locals 1
    .param p1, "type"    # I

    .line 136
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    return v0
.end method

.method public glCullFace(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 140
    invoke-static {p1}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 141
    return-void
.end method

.method public glDeleteBuffer(I)V
    .locals 3
    .param p1, "buffer"    # I

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 149
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 150
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .line 144
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 145
    return-void
.end method

.method public glDeleteFramebuffer(I)V
    .locals 3
    .param p1, "framebuffer"    # I

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 158
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 159
    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .line 153
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 154
    return-void
.end method

.method public glDeleteProgram(I)V
    .locals 0
    .param p1, "program"    # I

    .line 162
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 163
    return-void
.end method

.method public glDeleteRenderbuffer(I)V
    .locals 3
    .param p1, "renderbuffer"    # I

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 171
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 172
    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .line 166
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 167
    return-void
.end method

.method public glDeleteShader(I)V
    .locals 0
    .param p1, "shader"    # I

    .line 175
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 176
    return-void
.end method

.method public glDeleteTexture(I)V
    .locals 3
    .param p1, "texture"    # I

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 184
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 185
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .line 179
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 180
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 0
    .param p1, "func"    # I

    .line 188
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 189
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 192
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 193
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 0
    .param p1, "zNear"    # F
    .param p2, "zFar"    # F

    .line 196
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDepthRangef(FF)V

    .line 197
    return-void
.end method

.method public glDetachShader(II)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .line 200
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 201
    return-void
.end method

.method public glDisable(I)V
    .locals 0
    .param p1, "cap"    # I

    .line 204
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 205
    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .locals 0
    .param p1, "index"    # I

    .line 208
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 209
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .line 212
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 213
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # I

    .line 220
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 221
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .line 216
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 217
    return-void
.end method

.method public glEnable(I)V
    .locals 0
    .param p1, "cap"    # I

    .line 224
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 225
    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .locals 0
    .param p1, "index"    # I

    .line 228
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 229
    return-void
.end method

.method public glFinish()V
    .locals 0

    .line 232
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 233
    return-void
.end method

.method public glFlush()V
    .locals 0

    .line 236
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 237
    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    .line 240
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 241
    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "textarget"    # I
    .param p4, "texture"    # I
    .param p5, "level"    # I

    .line 244
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 245
    return-void
.end method

.method public glFrontFace(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 248
    invoke-static {p1}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 249
    return-void
.end method

.method public glGenBuffer()I
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v2

    return v0
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .line 252
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 253
    return-void
.end method

.method public glGenFramebuffer()I
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v2

    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .line 265
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 266
    return-void
.end method

.method public glGenRenderbuffer()I
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v2

    return v0
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .line 274
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 275
    return-void
.end method

.method public glGenTexture()I
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v2

    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .line 283
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 284
    return-void
.end method

.method public glGenerateMipmap(I)V
    .locals 0
    .param p1, "target"    # I

    .line 261
    invoke-static {p1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 262
    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 16
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 297
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    aput v4, v1, v2

    .line 299
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    move-object/from16 v4, p4

    check-cast v4, Ljava/nio/IntBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    aput v4, v1, v2

    .line 301
    iget-object v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    array-length v7, v14

    iget-object v8, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    iget-object v10, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    iget-object v12, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 302
    new-instance v1, Ljava/lang/String;

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    iget-object v5, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v5, v5, v2

    invoke-direct {v1, v4, v2, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 16
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 309
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    aput v4, v1, v2

    .line 311
    iget-object v1, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    move-object/from16 v4, p4

    check-cast v4, Ljava/nio/IntBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    aput v4, v1, v2

    .line 313
    iget-object v14, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    array-length v7, v14

    iget-object v8, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    iget-object v10, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    iget-object v12, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v5 .. v15}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 314
    new-instance v1, Ljava/lang/String;

    iget-object v4, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    iget-object v5, v0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v5, v5, v2

    invoke-direct {v1, v4, v2, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "maxcount"    # I
    .param p3, "count"    # Ljava/nio/Buffer;
    .param p4, "shaders"    # Ljava/nio/IntBuffer;

    .line 318
    move-object v0, p3

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-static {p1, p2, v0, p4}, Landroid/opengl/GLES20;->glGetAttachedShaders(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 319
    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 322
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/Buffer;

    .line 326
    move-object v0, p2

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 327
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 330
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 331
    return-void
.end method

.method public glGetError()I
    .locals 1

    .line 334
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .line 338
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 339
    return-void
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .line 342
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    .line 343
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .line 346
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 347
    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I

    .line 354
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 350
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 351
    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 358
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 359
    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "shader"    # I

    .line 366
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 0
    .param p1, "shadertype"    # I
    .param p2, "precisiontype"    # I
    .param p3, "range"    # Ljava/nio/IntBuffer;
    .param p4, "precision"    # Ljava/nio/IntBuffer;

    .line 370
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 371
    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "shader"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 362
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 363
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I

    .line 374
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 378
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 379
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 382
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 383
    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 394
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 386
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    .line 387
    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 390
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    .line 391
    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .line 407
    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 398
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    .line 399
    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 402
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    .line 403
    return-void
.end method

.method public glHint(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .line 410
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glHint(II)V

    .line 411
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .param p1, "buffer"    # I

    .line 414
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsBuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .param p1, "cap"    # I

    .line 418
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public glIsFramebuffer(I)Z
    .locals 1
    .param p1, "framebuffer"    # I

    .line 422
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsFramebuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsProgram(I)Z
    .locals 1
    .param p1, "program"    # I

    .line 426
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v0

    return v0
.end method

.method public glIsRenderbuffer(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    .line 430
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsRenderbuffer(I)Z

    move-result v0

    return v0
.end method

.method public glIsShader(I)Z
    .locals 1
    .param p1, "shader"    # I

    .line 434
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsShader(I)Z

    move-result v0

    return v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .param p1, "texture"    # I

    .line 438
    invoke-static {p1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    return v0
.end method

.method public glLineWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .line 442
    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 443
    return-void
.end method

.method public glLinkProgram(I)V
    .locals 0
    .param p1, "program"    # I

    .line 446
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 447
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .line 450
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 451
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 0
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .line 454
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    .line 455
    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .line 458
    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 459
    return-void
.end method

.method public glReleaseShaderCompiler()V
    .locals 0

    .line 462
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 463
    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 466
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 467
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .line 470
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glSampleCoverage(FZ)V

    .line 471
    return-void
.end method

.method public glScissor(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 474
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 475
    return-void
.end method

.method public glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "shaders"    # Ljava/nio/IntBuffer;
    .param p3, "binaryformat"    # I
    .param p4, "binary"    # Ljava/nio/Buffer;
    .param p5, "length"    # I

    .line 478
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    .line 479
    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 0
    .param p1, "shader"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 482
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 483
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 0
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .line 486
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    .line 487
    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "func"    # I
    .param p3, "ref"    # I
    .param p4, "mask"    # I

    .line 490
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glStencilFuncSeparate(IIII)V

    .line 491
    return-void
.end method

.method public glStencilMask(I)V
    .locals 0
    .param p1, "mask"    # I

    .line 494
    invoke-static {p1}, Landroid/opengl/GLES20;->glStencilMask(I)V

    .line 495
    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "mask"    # I

    .line 498
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glStencilMaskSeparate(II)V

    .line 499
    return-void
.end method

.method public glStencilOp(III)V
    .locals 0
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .line 502
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glStencilOp(III)V

    .line 503
    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .locals 0
    .param p1, "face"    # I
    .param p2, "fail"    # I
    .param p3, "zfail"    # I
    .param p4, "zpass"    # I

    .line 506
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glStencilOpSeparate(IIII)V

    .line 507
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .line 510
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 511
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .line 514
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 515
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 518
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 519
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .line 522
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 523
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 526
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 527
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .line 530
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 531
    return-void
.end method

.method public glUniform1f(IF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # F

    .line 534
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 535
    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 538
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 539
    return-void
.end method

.method public glUniform1fv(II[FI)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 542
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 543
    return-void
.end method

.method public glUniform1i(II)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # I

    .line 546
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 547
    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 550
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    .line 551
    return-void
.end method

.method public glUniform1iv(II[II)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 554
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    .line 555
    return-void
.end method

.method public glUniform2f(IFF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 558
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 559
    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 562
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 563
    return-void
.end method

.method public glUniform2fv(II[FI)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 566
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 567
    return-void
.end method

.method public glUniform2i(III)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 570
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2i(III)V

    .line 571
    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 574
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    .line 575
    return-void
.end method

.method public glUniform2iv(II[II)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 578
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform2iv(II[II)V

    .line 579
    return-void
.end method

.method public glUniform3f(IFFF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 582
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 583
    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 586
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 587
    return-void
.end method

.method public glUniform3fv(II[FI)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 590
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 591
    return-void
.end method

.method public glUniform3i(IIII)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .line 594
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3i(IIII)V

    .line 595
    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 598
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    .line 599
    return-void
.end method

.method public glUniform3iv(II[II)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 602
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3iv(II[II)V

    .line 603
    return-void
.end method

.method public glUniform4f(IFFFF)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .line 606
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 607
    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 610
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 611
    return-void
.end method

.method public glUniform4fv(II[FI)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 614
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 615
    return-void
.end method

.method public glUniform4i(IIIII)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .line 618
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4i(IIIII)V

    .line 619
    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 622
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    .line 623
    return-void
.end method

.method public glUniform4iv(II[II)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 626
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4iv(II[II)V

    .line 627
    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 630
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    .line 631
    return-void
.end method

.method public glUniformMatrix2fv(IIZ[FI)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 634
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    .line 635
    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 638
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 639
    return-void
.end method

.method public glUniformMatrix3fv(IIZ[FI)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 642
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 643
    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 646
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 647
    return-void
.end method

.method public glUniformMatrix4fv(IIZ[FI)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 650
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 651
    return-void
.end method

.method public glUseProgram(I)V
    .locals 0
    .param p1, "program"    # I

    .line 654
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 655
    return-void
.end method

.method public glValidateProgram(I)V
    .locals 0
    .param p1, "program"    # I

    .line 658
    invoke-static {p1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 659
    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "x"    # F

    .line 662
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    .line 663
    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 666
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    .line 667
    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 670
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glVertexAttrib2f(IFF)V

    .line 671
    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 674
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    .line 675
    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 678
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glVertexAttrib3f(IFFF)V

    .line 679
    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 682
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    .line 683
    return-void
.end method

.method public glVertexAttrib4f(IFFFF)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .line 686
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glVertexAttrib4f(IFFFF)V

    .line 687
    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 690
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    .line 691
    return-void
.end method

.method public glVertexAttribPointer(IIIZII)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "stride"    # I
    .param p6, "ptr"    # I

    .line 698
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 699
    return-void
.end method

.method public glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .locals 0
    .param p1, "indx"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "stride"    # I
    .param p6, "ptr"    # Ljava/nio/Buffer;

    .line 694
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 695
    return-void
.end method

.method public glViewport(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 702
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 703
    return-void
.end method
