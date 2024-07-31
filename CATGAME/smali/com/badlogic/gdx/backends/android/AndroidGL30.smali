.class public Lcom/badlogic/gdx/backends/android/AndroidGL30;
.super Lcom/badlogic/gdx/backends/android/AndroidGL20;
.source "AndroidGL30.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL30;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidGL20;-><init>()V

    return-void
.end method


# virtual methods
.method public glBeginQuery(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "id"    # I

    .line 124
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBeginQuery(II)V

    .line 125
    return-void
.end method

.method public glBeginTransformFeedback(I)V
    .locals 0
    .param p1, "primitiveMode"    # I

    .line 300
    invoke-static {p1}, Landroid/opengl/GLES30;->glBeginTransformFeedback(I)V

    .line 301
    return-void
.end method

.method public glBindBufferBase(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I

    .line 315
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glBindBufferBase(III)V

    .line 316
    return-void
.end method

.method public glBindBufferRange(IIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I
    .param p4, "offset"    # I
    .param p5, "size"    # I

    .line 310
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glBindBufferRange(IIIII)V

    .line 311
    return-void
.end method

.method public glBindSampler(II)V
    .locals 0
    .param p1, "unit"    # I
    .param p2, "sampler"    # I

    .line 692
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBindSampler(II)V

    .line 693
    return-void
.end method

.method public glBindTransformFeedback(II)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "id"    # I

    .line 754
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glBindTransformFeedback(II)V

    .line 755
    return-void
.end method

.method public glBindVertexArray(I)V
    .locals 0
    .param p1, "array"    # I

    .line 260
    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 261
    return-void
.end method

.method public glBlitFramebuffer(IIIIIIIIII)V
    .locals 0
    .param p1, "srcX0"    # I
    .param p2, "srcY0"    # I
    .param p3, "srcX1"    # I
    .param p4, "srcY1"    # I
    .param p5, "dstX0"    # I
    .param p6, "dstY0"    # I
    .param p7, "dstX1"    # I
    .param p8, "dstY1"    # I
    .param p9, "mask"    # I
    .param p10, "filter"    # I

    .line 235
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glBlitFramebuffer(IIIIIIIIII)V

    .line 236
    return-void
.end method

.method public glClearBufferfi(IIFI)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "depth"    # F
    .param p4, "stencil"    # I

    .line 509
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glClearBufferfi(IIFI)V

    .line 510
    return-void
.end method

.method public glClearBufferfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/FloatBuffer;

    .line 504
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferfv(IILjava/nio/FloatBuffer;)V

    .line 505
    return-void
.end method

.method public glClearBufferiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 483
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferiv(IILjava/nio/IntBuffer;)V

    .line 484
    return-void
.end method

.method public glClearBufferuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 493
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glClearBufferuiv(IILjava/nio/IntBuffer;)V

    .line 494
    return-void
.end method

.method public glCopyBufferSubData(IIIII)V
    .locals 0
    .param p1, "readTarget"    # I
    .param p2, "writeTarget"    # I
    .param p3, "readOffset"    # I
    .param p4, "writeOffset"    # I
    .param p5, "size"    # I

    .line 519
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glCopyBufferSubData(IIIII)V

    .line 520
    return-void
.end method

.method public glCopyTexSubImage3D(IIIIIIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "zoffset"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .line 69
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES30;->glCopyTexSubImage3D(IIIIIIIII)V

    .line 70
    return-void
.end method

.method public glDeleteQueries(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 114
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteQueries(ILjava/nio/IntBuffer;)V

    .line 115
    return-void
.end method

.method public glDeleteQueries(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 109
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteQueries(I[II)V

    .line 110
    return-void
.end method

.method public glDeleteSamplers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .line 682
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteSamplers(ILjava/nio/IntBuffer;)V

    .line 683
    return-void
.end method

.method public glDeleteSamplers(I[II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .line 677
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteSamplers(I[II)V

    .line 678
    return-void
.end method

.method public glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 764
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 765
    return-void
.end method

.method public glDeleteTransformFeedbacks(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 759
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteTransformFeedbacks(I[II)V

    .line 760
    return-void
.end method

.method public glDeleteVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .line 270
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    .line 271
    return-void
.end method

.method public glDeleteVertexArrays(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .line 265
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 266
    return-void
.end method

.method public glDrawArraysInstanced(IIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I
    .param p4, "instanceCount"    # I

    .line 587
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glDrawArraysInstanced(IIII)V

    .line 588
    return-void
.end method

.method public glDrawBuffers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "bufs"    # Ljava/nio/IntBuffer;

    .line 169
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    .line 170
    return-void
.end method

.method public glDrawElementsInstanced(IIIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indicesOffset"    # I
    .param p5, "instanceCount"    # I

    .line 597
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glDrawElementsInstanced(IIIII)V

    .line 598
    return-void
.end method

.method public glDrawRangeElements(IIIIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "offset"    # I

    .line 38
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES30;->glDrawRangeElements(IIIIII)V

    .line 39
    return-void
.end method

.method public glDrawRangeElements(IIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "indices"    # Ljava/nio/Buffer;

    .line 33
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES30;->glDrawRangeElements(IIIIILjava/nio/Buffer;)V

    .line 34
    return-void
.end method

.method public glEndQuery(I)V
    .locals 0
    .param p1, "target"    # I

    .line 129
    invoke-static {p1}, Landroid/opengl/GLES30;->glEndQuery(I)V

    .line 130
    return-void
.end method

.method public glEndTransformFeedback()V
    .locals 0

    .line 305
    invoke-static {}, Landroid/opengl/GLES30;->glEndTransformFeedback()V

    .line 306
    return-void
.end method

.method public glFlushMappedBufferRange(III)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 255
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glFlushMappedBufferRange(III)V

    .line 256
    return-void
.end method

.method public glFramebufferTextureLayer(IIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "texture"    # I
    .param p4, "level"    # I
    .param p5, "layer"    # I

    .line 245
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glFramebufferTextureLayer(IIIII)V

    .line 246
    return-void
.end method

.method public glGenQueries(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 104
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenQueries(ILjava/nio/IntBuffer;)V

    .line 105
    return-void
.end method

.method public glGenQueries(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 99
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenQueries(I[II)V

    .line 100
    return-void
.end method

.method public glGenSamplers(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .line 672
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenSamplers(ILjava/nio/IntBuffer;)V

    .line 673
    return-void
.end method

.method public glGenSamplers(I[II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .line 667
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenSamplers(I[II)V

    .line 668
    return-void
.end method

.method public glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 774
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 775
    return-void
.end method

.method public glGenTransformFeedbacks(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 769
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenTransformFeedbacks(I[II)V

    .line 770
    return-void
.end method

.method public glGenVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .line 280
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    .line 281
    return-void
.end method

.method public glGenVertexArrays(I[II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .line 275
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    .line 276
    return-void
.end method

.method public glGetActiveUniformBlockName(II)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I

    .line 577
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetActiveUniformBlockName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "length"    # Ljava/nio/Buffer;
    .param p4, "uniformBlockName"    # Ljava/nio/Buffer;

    .line 572
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V

    .line 573
    return-void
.end method

.method public glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .line 558
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V

    .line 559
    return-void
.end method

.method public glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformCount"    # I
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;
    .param p4, "pname"    # I
    .param p5, "params"    # Ljava/nio/IntBuffer;

    .line 542
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V

    .line 543
    return-void
.end method

.method public glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/LongBuffer;

    .line 662
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V

    .line 663
    return-void
.end method

.method public glGetBufferPointerv(II)Ljava/nio/Buffer;
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I

    .line 159
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetBufferPointerv(II)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public glGetFragDataLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 413
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetFragDataLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetInteger64v(ILjava/nio/LongBuffer;)V
    .locals 0
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/LongBuffer;

    .line 632
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetInteger64v(ILjava/nio/LongBuffer;)V

    .line 633
    return-void
.end method

.method public glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 149
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V

    .line 150
    return-void
.end method

.method public glGetQueryiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 139
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetQueryiv(IILjava/nio/IntBuffer;)V

    .line 140
    return-void
.end method

.method public glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 744
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 745
    return-void
.end method

.method public glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 734
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 735
    return-void
.end method

.method public glGetStringi(II)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I
    .param p2, "index"    # I

    .line 514
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetStringi(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public glGetUniformBlockIndex(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockName"    # Ljava/lang/String;

    .line 547
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glGetUniformBlockIndex(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformNames"    # [Ljava/lang/String;
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;

    .line 530
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 531
    return-void
.end method

.method public glGetUniformuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 408
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetUniformuiv(IILjava/nio/IntBuffer;)V

    .line 409
    return-void
.end method

.method public glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 358
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V

    .line 359
    return-void
.end method

.method public glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 368
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V

    .line 369
    return-void
.end method

.method public glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;

    .line 821
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V

    .line 822
    return-void
.end method

.method public glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 834
    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES30;->glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V

    .line 835
    return-void
.end method

.method public glIsQuery(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 119
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsQuery(I)Z

    move-result v0

    return v0
.end method

.method public glIsSampler(I)Z
    .locals 1
    .param p1, "sampler"    # I

    .line 687
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsSampler(I)Z

    move-result v0

    return v0
.end method

.method public glIsTransformFeedback(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 779
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsTransformFeedback(I)Z

    move-result v0

    return v0
.end method

.method public glIsVertexArray(I)Z
    .locals 1
    .param p1, "array"    # I

    .line 285
    invoke-static {p1}, Landroid/opengl/GLES30;->glIsVertexArray(I)Z

    move-result v0

    return v0
.end method

.method public glPauseTransformFeedback()V
    .locals 0

    .line 784
    invoke-static {}, Landroid/opengl/GLES30;->glPauseTransformFeedback()V

    .line 785
    return-void
.end method

.method public glProgramParameteri(III)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "value"    # I

    .line 811
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glProgramParameteri(III)V

    .line 812
    return-void
.end method

.method public glReadBuffer(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 28
    invoke-static {p1}, Landroid/opengl/GLES30;->glReadBuffer(I)V

    .line 29
    return-void
.end method

.method public glRenderbufferStorageMultisample(IIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "samples"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 240
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glRenderbufferStorageMultisample(IIIII)V

    .line 241
    return-void
.end method

.method public glResumeTransformFeedback()V
    .locals 0

    .line 789
    invoke-static {}, Landroid/opengl/GLES30;->glResumeTransformFeedback()V

    .line 790
    return-void
.end method

.method public glSamplerParameterf(IIF)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .line 713
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameterf(IIF)V

    .line 714
    return-void
.end method

.method public glSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/FloatBuffer;

    .line 723
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 724
    return-void
.end method

.method public glSamplerParameteri(III)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .line 697
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameteri(III)V

    .line 698
    return-void
.end method

.method public glSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/IntBuffer;

    .line 708
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 709
    return-void
.end method

.method public glTexImage3D(IIIIIIIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I
    .param p7, "border"    # I
    .param p8, "format"    # I
    .param p9, "type"    # I
    .param p10, "offset"    # I

    .line 51
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIII)V

    .line 52
    return-void
.end method

.method public glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "depth"    # I
    .param p7, "border"    # I
    .param p8, "format"    # I
    .param p9, "type"    # I
    .param p10, "pixels"    # Ljava/nio/Buffer;

    .line 44
    if-nez p10, :cond_0

    const/4 v9, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIII)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static/range {p1 .. p10}, Landroid/opengl/GLES30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    .line 46
    :goto_0
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIII)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "zoffset"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "depth"    # I
    .param p9, "format"    # I
    .param p10, "type"    # I
    .param p11, "offset"    # I

    .line 63
    invoke-static/range {p1 .. p11}, Landroid/opengl/GLES30;->glTexSubImage3D(IIIIIIIIIII)V

    .line 64
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V
    .locals 0
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "zoffset"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "depth"    # I
    .param p9, "format"    # I
    .param p10, "type"    # I
    .param p11, "pixels"    # Ljava/nio/Buffer;

    .line 57
    invoke-static/range {p1 .. p11}, Landroid/opengl/GLES30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    .line 58
    return-void
.end method

.method public glTransformFeedbackVaryings(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "varyings"    # [Ljava/lang/String;
    .param p3, "bufferMode"    # I

    .line 320
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glTransformFeedbackVaryings(I[Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method public glUniform1uiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 443
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform1uiv(IILjava/nio/IntBuffer;)V

    .line 444
    return-void
.end method

.method public glUniform3uiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 463
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform3uiv(IILjava/nio/IntBuffer;)V

    .line 464
    return-void
.end method

.method public glUniform4uiv(IILjava/nio/IntBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 473
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniform4uiv(IILjava/nio/IntBuffer;)V

    .line 474
    return-void
.end method

.method public glUniformBlockBinding(III)V
    .locals 0
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "uniformBlockBinding"    # I

    .line 582
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES30;->glUniformBlockBinding(III)V

    .line 583
    return-void
.end method

.method public glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 179
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 180
    return-void
.end method

.method public glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 199
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 200
    return-void
.end method

.method public glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 189
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 190
    return-void
.end method

.method public glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 219
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 220
    return-void
.end method

.method public glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 209
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 210
    return-void
.end method

.method public glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 229
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES30;->glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 230
    return-void
.end method

.method public glUnmapBuffer(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 154
    invoke-static {p1}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    move-result v0

    return v0
.end method

.method public glVertexAttribDivisor(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "divisor"    # I

    .line 749
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glVertexAttribDivisor(II)V

    .line 750
    return-void
.end method

.method public glVertexAttribI4i(IIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .line 373
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribI4i(IIIII)V

    .line 374
    return-void
.end method

.method public glVertexAttribI4ui(IIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .line 378
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribI4ui(IIIII)V

    .line 379
    return-void
.end method

.method public glVertexAttribIPointer(IIIII)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "stride"    # I
    .param p5, "offset"    # I

    .line 348
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES30;->glVertexAttribIPointer(IIIII)V

    .line 349
    return-void
.end method
