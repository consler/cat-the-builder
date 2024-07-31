.class public Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;
.super Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;
.source "GL30Interceptor.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL30;


# instance fields
.field protected final gl30:Lcom/badlogic/gdx/graphics/GL30;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL30;)V
    .locals 0
    .param p1, "glProfiler"    # Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
    .param p2, "gl30"    # Lcom/badlogic/gdx/graphics/GL30;

    .line 34
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;)V

    .line 35
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    .line 36
    return-void
.end method

.method private check()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGetError()I

    move-result v0

    .line 40
    .local v0, "error":I
    :goto_0
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->onError(I)V

    .line 42
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL30;->glGetError()I

    move-result v0

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .line 48
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glActiveTexture(I)V

    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 51
    return-void
.end method

.method public glAttachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .line 360
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glAttachShader(II)V

    .line 362
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 363
    return-void
.end method

.method public glBeginQuery(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "id"    # I

    .line 1318
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1319
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBeginQuery(II)V

    .line 1320
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1321
    return-void
.end method

.method public glBeginTransformFeedback(I)V
    .locals 1
    .param p1, "primitiveMode"    # I

    .line 1484
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1485
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glBeginTransformFeedback(I)V

    .line 1486
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1487
    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glBindAttribLocation(IILjava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 370
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .line 374
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindBuffer(II)V

    .line 376
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 377
    return-void
.end method

.method public glBindBufferBase(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I

    .line 1505
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1506
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glBindBufferBase(III)V

    .line 1507
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1508
    return-void
.end method

.method public glBindBufferRange(IIIII)V
    .locals 7
    .param p1, "target"    # I
    .param p2, "index"    # I
    .param p3, "buffer"    # I
    .param p4, "offset"    # I
    .param p5, "size"    # I

    .line 1498
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1499
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glBindBufferRange(IIIII)V

    .line 1500
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1501
    return-void
.end method

.method public glBindFramebuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    .line 381
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindFramebuffer(II)V

    .line 383
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 384
    return-void
.end method

.method public glBindRenderbuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindRenderbuffer(II)V

    .line 390
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 391
    return-void
.end method

.method public glBindSampler(II)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "sampler"    # I

    .line 1752
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1753
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindSampler(II)V

    .line 1754
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1755
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->textureBindings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->textureBindings:I

    .line 56
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindTexture(II)V

    .line 58
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 59
    return-void
.end method

.method public glBindTransformFeedback(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "id"    # I

    .line 1808
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1809
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBindTransformFeedback(II)V

    .line 1810
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1811
    return-void
.end method

.method public glBindVertexArray(I)V
    .locals 1
    .param p1, "array"    # I

    .line 1441
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1442
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glBindVertexArray(I)V

    .line 1443
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1444
    return-void
.end method

.method public glBlendColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 395
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBlendColor(FFFF)V

    .line 397
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 398
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 402
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 403
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glBlendEquation(I)V

    .line 404
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 405
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    .line 409
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBlendEquationSeparate(II)V

    .line 411
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 412
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .line 63
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glBlendFunc(II)V

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 66
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    .line 416
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBlendFuncSeparate(IIII)V

    .line 418
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 419
    return-void
.end method

.method public glBlitFramebuffer(IIIIIIIIII)V
    .locals 13
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

    .line 1413
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1414
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/GL30;->glBlitFramebuffer(IIIIIIIIII)V

    .line 1415
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1416
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .line 423
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 425
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 426
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .line 430
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 431
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 432
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 433
    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .locals 1
    .param p1, "target"    # I

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 439
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 440
    return v0
.end method

.method public glClear(I)V
    .locals 1
    .param p1, "mask"    # I

    .line 70
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glClear(I)V

    .line 72
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 73
    return-void
.end method

.method public glClearBufferfi(IIFI)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "depth"    # F
    .param p4, "stencil"    # I

    .line 1611
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1612
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferfi(IIFI)V

    .line 1613
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1614
    return-void
.end method

.method public glClearBufferfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/FloatBuffer;

    .line 1604
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1605
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferfv(IILjava/nio/FloatBuffer;)V

    .line 1606
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1607
    return-void
.end method

.method public glClearBufferiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 1590
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1591
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferiv(IILjava/nio/IntBuffer;)V

    .line 1592
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1593
    return-void
.end method

.method public glClearBufferuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "buffer"    # I
    .param p2, "drawbuffer"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 1597
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1598
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glClearBufferuiv(IILjava/nio/IntBuffer;)V

    .line 1599
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1600
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glClearColor(FFFF)V

    .line 79
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 80
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glClearDepthf(F)V

    .line 86
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 87
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glClearStencil(I)V

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 94
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 99
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glColorMask(ZZZZ)V

    .line 100
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 101
    return-void
.end method

.method public glCompileShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .line 445
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCompileShader(I)V

    .line 447
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 448
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .line 106
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 107
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL30;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 108
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 109
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .line 114
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 115
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL30;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 116
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 117
    return-void
.end method

.method public glCopyBufferSubData(IIIII)V
    .locals 7
    .param p1, "readTarget"    # I
    .param p2, "writeTarget"    # I
    .param p3, "readOffset"    # I
    .param p4, "writeOffset"    # I
    .param p5, "size"    # I

    .line 1626
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1627
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glCopyBufferSubData(IIIII)V

    .line 1628
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1629
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .line 121
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 122
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL30;->glCopyTexImage2D(IIIIIIII)V

    .line 123
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 124
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 11
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .line 128
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 129
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL30;->glCopyTexSubImage2D(IIIIIIII)V

    .line 130
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 131
    return-void
.end method

.method public glCopyTexSubImage3D(IIIIIIIII)V
    .locals 12
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "zoffset"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I

    .line 1275
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1276
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL30;->glCopyTexSubImage3D(IIIIIIIII)V

    .line 1277
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1278
    return-void
.end method

.method public glCreateProgram()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glCreateProgram()I

    move-result v0

    .line 454
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 455
    return v0
.end method

.method public glCreateShader(I)I
    .locals 1
    .param p1, "type"    # I

    .line 460
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCreateShader(I)I

    move-result v0

    .line 462
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 463
    return v0
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glCullFace(I)V

    .line 137
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 138
    return-void
.end method

.method public glDeleteBuffer(I)V
    .locals 1
    .param p1, "buffer"    # I

    .line 468
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteBuffer(I)V

    .line 470
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 471
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .line 475
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 476
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 477
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 478
    return-void
.end method

.method public glDeleteFramebuffer(I)V
    .locals 1
    .param p1, "framebuffer"    # I

    .line 482
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteFramebuffer(I)V

    .line 484
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 485
    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .line 489
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 491
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 492
    return-void
.end method

.method public glDeleteProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 496
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteProgram(I)V

    .line 498
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 499
    return-void
.end method

.method public glDeleteQueries(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 1303
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1304
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteQueries(ILjava/nio/IntBuffer;)V

    .line 1305
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1306
    return-void
.end method

.method public glDeleteQueries(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 1296
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1297
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteQueries(I[II)V

    .line 1298
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1299
    return-void
.end method

.method public glDeleteRenderbuffer(I)V
    .locals 1
    .param p1, "renderbuffer"    # I

    .line 503
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteRenderbuffer(I)V

    .line 505
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 506
    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .line 510
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 512
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 513
    return-void
.end method

.method public glDeleteSamplers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .line 1737
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1738
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteSamplers(ILjava/nio/IntBuffer;)V

    .line 1739
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1740
    return-void
.end method

.method public glDeleteSamplers(I[II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .line 1730
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1731
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteSamplers(I[II)V

    .line 1732
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1733
    return-void
.end method

.method public glDeleteShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .line 517
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 518
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteShader(I)V

    .line 519
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 520
    return-void
.end method

.method public glDeleteTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .line 149
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 150
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTexture(I)V

    .line 151
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 152
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .line 142
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 144
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 145
    return-void
.end method

.method public glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 1822
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1823
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 1824
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1825
    return-void
.end method

.method public glDeleteTransformFeedbacks(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 1815
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1816
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteTransformFeedbacks(I[II)V

    .line 1817
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1818
    return-void
.end method

.method public glDeleteVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .line 1455
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1456
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteVertexArrays(ILjava/nio/IntBuffer;)V

    .line 1457
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1458
    return-void
.end method

.method public glDeleteVertexArrays(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .line 1448
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1449
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDeleteVertexArrays(I[II)V

    .line 1450
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1451
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDepthFunc(I)V

    .line 158
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 159
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDepthMask(Z)V

    .line 165
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 166
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "zNear"    # F
    .param p2, "zFar"    # F

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDepthRangef(FF)V

    .line 172
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 173
    return-void
.end method

.method public glDetachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .line 524
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 525
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDetachShader(II)V

    .line 526
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 527
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .param p1, "cap"    # I

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDisable(I)V

    .line 179
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 180
    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .line 531
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 532
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glDisableVertexAttribArray(I)V

    .line 533
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 534
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glDrawArrays(III)V

    .line 188
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 189
    return-void
.end method

.method public glDrawArraysInstanced(IIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I
    .param p4, "instanceCount"    # I

    .line 1684
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 1685
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 1686
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1687
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glDrawArraysInstanced(IIII)V

    .line 1688
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1689
    return-void
.end method

.method public glDrawBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "bufs"    # Ljava/nio/IntBuffer;

    .line 1362
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 1363
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1364
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    .line 1365
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1366
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # I

    .line 538
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 539
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 540
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElements(IIII)V

    .line 542
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 543
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 194
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 195
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 196
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 197
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 198
    return-void
.end method

.method public glDrawElementsInstanced(IIIII)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indicesOffset"    # I
    .param p5, "instanceCount"    # I

    .line 1693
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 1694
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 1695
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1696
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glDrawElementsInstanced(IIIII)V

    .line 1697
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1698
    return-void
.end method

.method public glDrawRangeElements(IIIIII)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "offset"    # I

    .line 1233
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 1234
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 1235
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1236
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glDrawRangeElements(IIIIII)V

    .line 1237
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1238
    return-void
.end method

.method public glDrawRangeElements(IIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "indices"    # Ljava/nio/Buffer;

    .line 1224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 1225
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->drawCalls:I

    .line 1226
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1227
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glDrawRangeElements(IIIIILjava/nio/Buffer;)V

    .line 1228
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1229
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .param p1, "cap"    # I

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glEnable(I)V

    .line 204
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 205
    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .line 547
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glEnableVertexAttribArray(I)V

    .line 549
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 550
    return-void
.end method

.method public glEndQuery(I)V
    .locals 1
    .param p1, "target"    # I

    .line 1325
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1326
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glEndQuery(I)V

    .line 1327
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1328
    return-void
.end method

.method public glEndTransformFeedback()V
    .locals 1

    .line 1491
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1492
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glEndTransformFeedback()V

    .line 1493
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1494
    return-void
.end method

.method public glFinish()V
    .locals 1

    .line 209
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glFinish()V

    .line 211
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 212
    return-void
.end method

.method public glFlush()V
    .locals 1

    .line 216
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glFlush()V

    .line 218
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 219
    return-void
.end method

.method public glFlushMappedBufferRange(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1434
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1435
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glFlushMappedBufferRange(III)V

    .line 1436
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1437
    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    .line 554
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glFramebufferRenderbuffer(IIII)V

    .line 556
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 557
    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .locals 7
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "textarget"    # I
    .param p4, "texture"    # I
    .param p5, "level"    # I

    .line 561
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 562
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glFramebufferTexture2D(IIIII)V

    .line 563
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 564
    return-void
.end method

.method public glFramebufferTextureLayer(IIIII)V
    .locals 7
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "texture"    # I
    .param p4, "level"    # I
    .param p5, "layer"    # I

    .line 1427
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1428
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glFramebufferTextureLayer(IIIII)V

    .line 1429
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1430
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 223
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 224
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glFrontFace(I)V

    .line 225
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 226
    return-void
.end method

.method public glGenBuffer()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 569
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenBuffer()I

    move-result v0

    .line 570
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 571
    return v0
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .line 576
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 578
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 579
    return-void
.end method

.method public glGenFramebuffer()I
    .locals 1

    .line 590
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 591
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenFramebuffer()I

    move-result v0

    .line 592
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 593
    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .line 598
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 600
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 601
    return-void
.end method

.method public glGenQueries(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 1289
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1290
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenQueries(ILjava/nio/IntBuffer;)V

    .line 1291
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1292
    return-void
.end method

.method public glGenQueries(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 1282
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1283
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenQueries(I[II)V

    .line 1284
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1285
    return-void
.end method

.method public glGenRenderbuffer()I
    .locals 1

    .line 605
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenRenderbuffer()I

    move-result v0

    .line 607
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 608
    return v0
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .line 613
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 615
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 616
    return-void
.end method

.method public glGenSamplers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # Ljava/nio/IntBuffer;

    .line 1723
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1724
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenSamplers(ILjava/nio/IntBuffer;)V

    .line 1725
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1726
    return-void
.end method

.method public glGenSamplers(I[II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "samplers"    # [I
    .param p3, "offset"    # I

    .line 1716
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1717
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenSamplers(I[II)V

    .line 1718
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1719
    return-void
.end method

.method public glGenTexture()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 238
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGenTexture()I

    move-result v0

    .line 239
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 240
    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 232
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 233
    return-void
.end method

.method public glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # Ljava/nio/IntBuffer;

    .line 1836
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1837
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenTransformFeedbacks(ILjava/nio/IntBuffer;)V

    .line 1838
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1839
    return-void
.end method

.method public glGenTransformFeedbacks(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "ids"    # [I
    .param p3, "offset"    # I

    .line 1829
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1830
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenTransformFeedbacks(I[II)V

    .line 1831
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1832
    return-void
.end method

.method public glGenVertexArrays(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # Ljava/nio/IntBuffer;

    .line 1469
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1470
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    .line 1471
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1472
    return-void
.end method

.method public glGenVertexArrays(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "arrays"    # [I
    .param p3, "offset"    # I

    .line 1462
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGenVertexArrays(I[II)V

    .line 1464
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1465
    return-void
.end method

.method public glGenerateMipmap(I)V
    .locals 1
    .param p1, "target"    # I

    .line 583
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 584
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGenerateMipmap(I)V

    .line 585
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 586
    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .line 620
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 621
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 623
    return-object v0
.end method

.method public glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .line 628
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 631
    return-object v0
.end method

.method public glGetActiveUniformBlockName(II)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I

    .line 1669
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1670
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformBlockName(II)Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1672
    return-object v0
.end method

.method public glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "length"    # Ljava/nio/Buffer;
    .param p4, "uniformBlockName"    # Ljava/nio/Buffer;

    .line 1662
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1663
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformBlockName(IILjava/nio/Buffer;Ljava/nio/Buffer;)V

    .line 1664
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1665
    return-void
.end method

.method public glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .line 1655
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1656
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformBlockiv(IIILjava/nio/IntBuffer;)V

    .line 1657
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1658
    return-void
.end method

.method public glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V
    .locals 7
    .param p1, "program"    # I
    .param p2, "uniformCount"    # I
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;
    .param p4, "pname"    # I
    .param p5, "params"    # Ljava/nio/IntBuffer;

    .line 1640
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1641
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glGetActiveUniformsiv(IILjava/nio/IntBuffer;ILjava/nio/IntBuffer;)V

    .line 1642
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1643
    return-void
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "maxcount"    # I
    .param p3, "count"    # Ljava/nio/Buffer;
    .param p4, "shaders"    # Ljava/nio/IntBuffer;

    .line 636
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V

    .line 638
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 639
    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 643
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 645
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 646
    return v0
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/Buffer;

    .line 651
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 652
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetBooleanv(ILjava/nio/Buffer;)V

    .line 653
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 654
    return-void
.end method

.method public glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/LongBuffer;

    .line 1709
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1710
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetBufferParameteri64v(IILjava/nio/LongBuffer;)V

    .line 1711
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1712
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 658
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 660
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 661
    return-void
.end method

.method public glGetBufferPointerv(II)Ljava/nio/Buffer;
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I

    .line 1354
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1355
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetBufferPointerv(II)Ljava/nio/Buffer;

    move-result-object v0

    .line 1356
    .local v0, "result":Ljava/nio/Buffer;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1357
    return-object v0
.end method

.method public glGetError()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 247
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .line 665
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 667
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 668
    return-void
.end method

.method public glGetFragDataLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1561
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1562
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetFragDataLocation(ILjava/lang/String;)I

    move-result v0

    .line 1563
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1564
    return v0
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .line 672
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    .line 674
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 675
    return-void
.end method

.method public glGetInteger64v(ILjava/nio/LongBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/LongBuffer;

    .line 1702
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1703
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetInteger64v(ILjava/nio/LongBuffer;)V

    .line 1704
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1705
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 254
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 255
    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I

    .line 686
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 687
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 689
    return-object v0
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 679
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 680
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 681
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 682
    return-void
.end method

.method public glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 1339
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1340
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetQueryObjectuiv(IILjava/nio/IntBuffer;)V

    .line 1341
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1342
    return-void
.end method

.method public glGetQueryiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 1332
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1333
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetQueryiv(IILjava/nio/IntBuffer;)V

    .line 1334
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1335
    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 694
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 696
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 697
    return-void
.end method

.method public glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 1794
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1795
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 1796
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1797
    return-void
.end method

.method public glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 1787
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1788
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 1789
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1790
    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "shader"    # I

    .line 708
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 709
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 711
    return-object v0
.end method

.method public glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "shadertype"    # I
    .param p2, "precisiontype"    # I
    .param p3, "range"    # Ljava/nio/IntBuffer;
    .param p4, "precision"    # Ljava/nio/IntBuffer;

    .line 716
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 717
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 718
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 719
    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 701
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 702
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 703
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 704
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I

    .line 259
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 260
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 262
    return-object v0
.end method

.method public glGetStringi(II)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I
    .param p2, "index"    # I

    .line 1618
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1619
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetStringi(II)Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1621
    return-object v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 723
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 724
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 725
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 726
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 730
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 731
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 732
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 733
    return-void
.end method

.method public glGetUniformBlockIndex(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockName"    # Ljava/lang/String;

    .line 1647
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1648
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformBlockIndex(ILjava/lang/String;)I

    move-result v0

    .line 1649
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1650
    return v0
.end method

.method public glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformNames"    # [Ljava/lang/String;
    .param p3, "uniformIndices"    # Ljava/nio/IntBuffer;

    .line 1633
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1634
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformIndices(I[Ljava/lang/String;Ljava/nio/IntBuffer;)V

    .line 1635
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1636
    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 751
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 752
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 753
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 754
    return v0
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 737
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 738
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    .line 739
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 740
    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 744
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 745
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    .line 746
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 747
    return-void
.end method

.method public glGetUniformuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 1554
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1555
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetUniformuiv(IILjava/nio/IntBuffer;)V

    .line 1556
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1557
    return-void
.end method

.method public glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 1526
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1527
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribIiv(IILjava/nio/IntBuffer;)V

    .line 1528
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1529
    return-void
.end method

.method public glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 1533
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1534
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribIuiv(IILjava/nio/IntBuffer;)V

    .line 1535
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1536
    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .line 773
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 774
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribPointerv(IILjava/nio/Buffer;)V

    .line 775
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 776
    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 759
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 760
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    .line 761
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 762
    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 766
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 767
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    .line 768
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 769
    return-void
.end method

.method public glHint(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .line 267
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glHint(II)V

    .line 269
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 270
    return-void
.end method

.method public glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;

    .line 1872
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1873
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glInvalidateFramebuffer(IILjava/nio/IntBuffer;)V

    .line 1874
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1875
    return-void
.end method

.method public glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "numAttachments"    # I
    .param p3, "attachments"    # Ljava/nio/IntBuffer;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 1880
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1881
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL30;->glInvalidateSubFramebuffer(IILjava/nio/IntBuffer;IIII)V

    .line 1882
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1883
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .param p1, "buffer"    # I

    .line 780
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 781
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsBuffer(I)Z

    move-result v0

    .line 782
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 783
    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .param p1, "cap"    # I

    .line 788
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 789
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsEnabled(I)Z

    move-result v0

    .line 790
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 791
    return v0
.end method

.method public glIsFramebuffer(I)Z
    .locals 1
    .param p1, "framebuffer"    # I

    .line 796
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 797
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsFramebuffer(I)Z

    move-result v0

    .line 798
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 799
    return v0
.end method

.method public glIsProgram(I)Z
    .locals 1
    .param p1, "program"    # I

    .line 804
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 805
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsProgram(I)Z

    move-result v0

    .line 806
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 807
    return v0
.end method

.method public glIsQuery(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 1310
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1311
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsQuery(I)Z

    move-result v0

    .line 1312
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1313
    return v0
.end method

.method public glIsRenderbuffer(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    .line 812
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsRenderbuffer(I)Z

    move-result v0

    .line 814
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 815
    return v0
.end method

.method public glIsSampler(I)Z
    .locals 1
    .param p1, "sampler"    # I

    .line 1744
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1745
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsSampler(I)Z

    move-result v0

    .line 1746
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1747
    return v0
.end method

.method public glIsShader(I)Z
    .locals 1
    .param p1, "shader"    # I

    .line 820
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 821
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsShader(I)Z

    move-result v0

    .line 822
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 823
    return v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .param p1, "texture"    # I

    .line 828
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 829
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsTexture(I)Z

    move-result v0

    .line 830
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 831
    return v0
.end method

.method public glIsTransformFeedback(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 1843
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1844
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsTransformFeedback(I)Z

    move-result v0

    .line 1845
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1846
    return v0
.end method

.method public glIsVertexArray(I)Z
    .locals 1
    .param p1, "array"    # I

    .line 1476
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1477
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glIsVertexArray(I)Z

    move-result v0

    .line 1478
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1479
    return v0
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glLineWidth(F)V

    .line 276
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 277
    return-void
.end method

.method public glLinkProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 836
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 837
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glLinkProgram(I)V

    .line 838
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 839
    return-void
.end method

.method public glPauseTransformFeedback()V
    .locals 1

    .line 1851
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1852
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glPauseTransformFeedback()V

    .line 1853
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1854
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .line 281
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glPixelStorei(II)V

    .line 283
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 284
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glPolygonOffset(FF)V

    .line 290
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 291
    return-void
.end method

.method public glProgramParameteri(III)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "value"    # I

    .line 1865
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1866
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glProgramParameteri(III)V

    .line 1867
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1868
    return-void
.end method

.method public glReadBuffer(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1217
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glReadBuffer(I)V

    .line 1219
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1220
    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .line 295
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 296
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 297
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 298
    return-void
.end method

.method public glReleaseShaderCompiler()V
    .locals 1

    .line 843
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 844
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glReleaseShaderCompiler()V

    .line 845
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 846
    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 850
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glRenderbufferStorage(IIII)V

    .line 852
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 853
    return-void
.end method

.method public glRenderbufferStorageMultisample(IIIII)V
    .locals 7
    .param p1, "target"    # I
    .param p2, "samples"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1420
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1421
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glRenderbufferStorageMultisample(IIIII)V

    .line 1422
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1423
    return-void
.end method

.method public glResumeTransformFeedback()V
    .locals 1

    .line 1858
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1859
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glResumeTransformFeedback()V

    .line 1860
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1861
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .line 857
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 858
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glSampleCoverage(FZ)V

    .line 859
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 860
    return-void
.end method

.method public glSamplerParameterf(IIF)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .line 1773
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1774
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameterf(IIF)V

    .line 1775
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1776
    return-void
.end method

.method public glSamplerParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/FloatBuffer;

    .line 1780
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1781
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameterfv(IILjava/nio/FloatBuffer;)V

    .line 1782
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1783
    return-void
.end method

.method public glSamplerParameteri(III)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .line 1759
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1760
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameteri(III)V

    .line 1761
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1762
    return-void
.end method

.method public glSamplerParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # Ljava/nio/IntBuffer;

    .line 1766
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1767
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glSamplerParameteriv(IILjava/nio/IntBuffer;)V

    .line 1768
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1769
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 302
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 303
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glScissor(IIII)V

    .line 304
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 305
    return-void
.end method

.method public glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
    .locals 7
    .param p1, "n"    # I
    .param p2, "shaders"    # Ljava/nio/IntBuffer;
    .param p3, "binaryformat"    # I
    .param p4, "binary"    # Ljava/nio/Buffer;
    .param p5, "length"    # I

    .line 864
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 865
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    .line 866
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 867
    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 871
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 872
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glShaderSource(ILjava/lang/String;)V

    .line 873
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 874
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .line 309
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glStencilFunc(III)V

    .line 311
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 312
    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "func"    # I
    .param p3, "ref"    # I
    .param p4, "mask"    # I

    .line 878
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 879
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glStencilFuncSeparate(IIII)V

    .line 880
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 881
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 317
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glStencilMask(I)V

    .line 318
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 319
    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "mask"    # I

    .line 885
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 886
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glStencilMaskSeparate(II)V

    .line 887
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 888
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glStencilOp(III)V

    .line 325
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 326
    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "fail"    # I
    .param p3, "zfail"    # I
    .param p4, "zpass"    # I

    .line 892
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 893
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glStencilOpSeparate(IIII)V

    .line 894
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 895
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .line 331
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 332
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 333
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 334
    return-void
.end method

.method public glTexImage3D(IIIIIIIIII)V
    .locals 13
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

    .line 1251
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1252
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage3D(IIIIIIIIII)V

    .line 1253
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1254
    return-void
.end method

.method public glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V
    .locals 13
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

    .line 1243
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1244
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-interface/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    .line 1245
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1246
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .line 338
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameterf(IIF)V

    .line 340
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 341
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 899
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 900
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 901
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 902
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .line 906
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 907
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameteri(III)V

    .line 908
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 909
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 913
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 914
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 915
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 916
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 12
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .line 346
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 347
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 348
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 349
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIII)V
    .locals 14
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

    .line 1267
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1268
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-interface/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIII)V

    .line 1269
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1270
    return-void
.end method

.method public glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V
    .locals 14
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

    .line 1259
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1260
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    .line 1261
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1262
    return-void
.end method

.method public glTransformFeedbackVaryings(I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "varyings"    # [Ljava/lang/String;
    .param p3, "bufferMode"    # I

    .line 1512
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1513
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glTransformFeedbackVaryings(I[Ljava/lang/String;I)V

    .line 1514
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1515
    return-void
.end method

.method public glUniform1f(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F

    .line 920
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 921
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1f(IF)V

    .line 922
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 923
    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 927
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 928
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 929
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 930
    return-void
.end method

.method public glUniform1fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 934
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 935
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1fv(II[FI)V

    .line 936
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 937
    return-void
.end method

.method public glUniform1i(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I

    .line 941
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 942
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1i(II)V

    .line 943
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 944
    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 948
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 949
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1iv(IILjava/nio/IntBuffer;)V

    .line 950
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 951
    return-void
.end method

.method public glUniform1iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 955
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 956
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1iv(II[II)V

    .line 957
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 958
    return-void
.end method

.method public glUniform1uiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 1569
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1570
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform1uiv(IILjava/nio/IntBuffer;)V

    .line 1571
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1572
    return-void
.end method

.method public glUniform2f(IFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 962
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 963
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2f(IFF)V

    .line 964
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 965
    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 969
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 970
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 971
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 972
    return-void
.end method

.method public glUniform2fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 976
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 977
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2fv(II[FI)V

    .line 978
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 979
    return-void
.end method

.method public glUniform2i(III)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 983
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 984
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2i(III)V

    .line 985
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 986
    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 990
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 991
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2iv(IILjava/nio/IntBuffer;)V

    .line 992
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 993
    return-void
.end method

.method public glUniform2iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 997
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 998
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform2iv(II[II)V

    .line 999
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1000
    return-void
.end method

.method public glUniform3f(IFFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 1004
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1005
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3f(IFFF)V

    .line 1006
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1007
    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 1011
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1012
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 1013
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1014
    return-void
.end method

.method public glUniform3fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 1018
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1019
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3fv(II[FI)V

    .line 1020
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1021
    return-void
.end method

.method public glUniform3i(IIII)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .line 1025
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1026
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3i(IIII)V

    .line 1027
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1028
    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 1032
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1033
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3iv(IILjava/nio/IntBuffer;)V

    .line 1034
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1035
    return-void
.end method

.method public glUniform3iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 1039
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1040
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3iv(II[II)V

    .line 1041
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1042
    return-void
.end method

.method public glUniform3uiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 1576
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1577
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform3uiv(IILjava/nio/IntBuffer;)V

    .line 1578
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1579
    return-void
.end method

.method public glUniform4f(IFFFF)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .line 1046
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1047
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4f(IFFFF)V

    .line 1048
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1049
    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 1053
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1054
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 1055
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1056
    return-void
.end method

.method public glUniform4fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 1060
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1061
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4fv(II[FI)V

    .line 1062
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1063
    return-void
.end method

.method public glUniform4i(IIIII)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .line 1067
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1068
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4i(IIIII)V

    .line 1069
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1070
    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 1074
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1075
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4iv(IILjava/nio/IntBuffer;)V

    .line 1076
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1077
    return-void
.end method

.method public glUniform4iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 1081
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1082
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4iv(II[II)V

    .line 1083
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1084
    return-void
.end method

.method public glUniform4uiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "value"    # Ljava/nio/IntBuffer;

    .line 1583
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1584
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniform4uiv(IILjava/nio/IntBuffer;)V

    .line 1585
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1586
    return-void
.end method

.method public glUniformBlockBinding(III)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "uniformBlockIndex"    # I
    .param p3, "uniformBlockBinding"    # I

    .line 1677
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1678
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glUniformBlockBinding(III)V

    .line 1679
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1680
    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1088
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1089
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    .line 1090
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1091
    return-void
.end method

.method public glUniformMatrix2fv(IIZ[FI)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 1095
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1096
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2fv(IIZ[FI)V

    .line 1097
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1098
    return-void
.end method

.method public glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1370
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 1372
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1373
    return-void
.end method

.method public glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1384
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1385
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 1386
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1387
    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1102
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 1104
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1105
    return-void
.end method

.method public glUniformMatrix3fv(IIZ[FI)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 1109
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1110
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3fv(IIZ[FI)V

    .line 1111
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1112
    return-void
.end method

.method public glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1377
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1378
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 1379
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1380
    return-void
.end method

.method public glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1398
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1399
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V

    .line 1400
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1401
    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1116
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 1118
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1119
    return-void
.end method

.method public glUniformMatrix4fv(IIZ[FI)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 1123
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1124
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4fv(IIZ[FI)V

    .line 1125
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1126
    return-void
.end method

.method public glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1391
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1392
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V

    .line 1393
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1394
    return-void
.end method

.method public glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1405
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1406
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V

    .line 1407
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1408
    return-void
.end method

.method public glUnmapBuffer(I)Z
    .locals 1
    .param p1, "target"    # I

    .line 1346
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1347
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glUnmapBuffer(I)Z

    move-result v0

    .line 1348
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1349
    return v0
.end method

.method public glUseProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 1130
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->shaderSwitches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->shaderSwitches:I

    .line 1131
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glUseProgram(I)V

    .line 1133
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1134
    return-void
.end method

.method public glValidateProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 1138
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1139
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL30;->glValidateProgram(I)V

    .line 1140
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1141
    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F

    .line 1145
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1146
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib1f(IF)V

    .line 1147
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1148
    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1152
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1153
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    .line 1154
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1155
    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1159
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1160
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib2f(IFF)V

    .line 1161
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1162
    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1166
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1167
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    .line 1168
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1169
    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 1173
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1174
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib3f(IFFF)V

    .line 1175
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1176
    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1180
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1181
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    .line 1182
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1183
    return-void
.end method

.method public glVertexAttrib4f(IFFFF)V
    .locals 7
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .line 1187
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1188
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib4f(IFFFF)V

    .line 1189
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1190
    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1194
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    .line 1196
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1197
    return-void
.end method

.method public glVertexAttribDivisor(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "divisor"    # I

    .line 1801
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1802
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribDivisor(II)V

    .line 1803
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1804
    return-void
.end method

.method public glVertexAttribI4i(IIIII)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .line 1540
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1541
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribI4i(IIIII)V

    .line 1542
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1543
    return-void
.end method

.method public glVertexAttribI4ui(IIIII)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .line 1547
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1548
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribI4ui(IIIII)V

    .line 1549
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1550
    return-void
.end method

.method public glVertexAttribIPointer(IIIII)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "stride"    # I
    .param p5, "offset"    # I

    .line 1519
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1520
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribIPointer(IIIII)V

    .line 1521
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1522
    return-void
.end method

.method public glVertexAttribPointer(IIIZII)V
    .locals 8
    .param p1, "indx"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "stride"    # I
    .param p6, "ptr"    # I

    .line 1208
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1209
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribPointer(IIIZII)V

    .line 1210
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1211
    return-void
.end method

.method public glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .locals 8
    .param p1, "indx"    # I
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "normalized"    # Z
    .param p5, "stride"    # I
    .param p6, "ptr"    # Ljava/nio/Buffer;

    .line 1201
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 1202
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1203
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 1204
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 353
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->calls:I

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL30;->glViewport(IIII)V

    .line 355
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->check()V

    .line 356
    return-void
.end method
