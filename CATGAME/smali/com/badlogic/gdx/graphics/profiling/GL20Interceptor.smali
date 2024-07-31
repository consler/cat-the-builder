.class public Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;
.super Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;
.source "GL20Interceptor.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# instance fields
.field protected final gl20:Lcom/badlogic/gdx/graphics/GL20;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL20;)V
    .locals 0
    .param p1, "glProfiler"    # Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
    .param p2, "gl20"    # Lcom/badlogic/gdx/graphics/GL20;

    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;)V

    .line 33
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 34
    return-void
.end method

.method private check()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    .line 38
    .local v0, "error":I
    :goto_0
    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->onError(I)V

    .line 40
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .line 46
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 48
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 49
    return-void
.end method

.method public glAttachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .line 358
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 359
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 360
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 361
    return-void
.end method

.method public glBindAttribLocation(IILjava/lang/String;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 365
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 368
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "buffer"    # I

    .line 372
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindBuffer(II)V

    .line 374
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 375
    return-void
.end method

.method public glBindFramebuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "framebuffer"    # I

    .line 379
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 381
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 382
    return-void
.end method

.method public glBindRenderbuffer(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "renderbuffer"    # I

    .line 386
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 387
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 388
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 389
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .line 53
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->textureBindings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->textureBindings:I

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 56
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 57
    return-void
.end method

.method public glBlendColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 393
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 394
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendColor(FFFF)V

    .line 395
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 396
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 400
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 401
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquation(I)V

    .line 402
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 403
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1
    .param p1, "modeRGB"    # I
    .param p2, "modeAlpha"    # I

    .line 407
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 408
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendEquationSeparate(II)V

    .line 409
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 410
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .line 61
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    .line 63
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 64
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1
    .param p1, "srcRGB"    # I
    .param p2, "dstRGB"    # I
    .param p3, "srcAlpha"    # I
    .param p4, "dstAlpha"    # I

    .line 414
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFuncSeparate(IIII)V

    .line 416
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 417
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "size"    # I
    .param p3, "data"    # Ljava/nio/Buffer;
    .param p4, "usage"    # I

    .line 421
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 423
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 424
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "data"    # Ljava/nio/Buffer;

    .line 428
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 430
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 431
    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .locals 1
    .param p1, "target"    # I

    .line 435
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 436
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 437
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 438
    return v0
.end method

.method public glClear(I)V
    .locals 1
    .param p1, "mask"    # I

    .line 68
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 71
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .line 75
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 77
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 78
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearDepthf(F)V

    .line 84
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 85
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glClearStencil(I)V

    .line 91
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 92
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .line 96
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glColorMask(ZZZZ)V

    .line 98
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 99
    return-void
.end method

.method public glCompileShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .line 443
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    .line 445
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 446
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

    .line 104
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 105
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 106
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 107
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

    .line 112
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 113
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 114
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 115
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

    .line 119
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 120
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexImage2D(IIIIIIII)V

    .line 121
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 122
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

    .line 126
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 127
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 128
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 129
    return-void
.end method

.method public glCreateProgram()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v0

    .line 452
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 453
    return v0
.end method

.method public glCreateShader(I)I
    .locals 1
    .param p1, "type"    # I

    .line 458
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result v0

    .line 460
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 461
    return v0
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 133
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCullFace(I)V

    .line 135
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 136
    return-void
.end method

.method public glDeleteBuffer(I)V
    .locals 1
    .param p1, "buffer"    # I

    .line 466
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    .line 468
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 469
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .line 473
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 474
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 475
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 476
    return-void
.end method

.method public glDeleteFramebuffer(I)V
    .locals 1
    .param p1, "framebuffer"    # I

    .line 480
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 482
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 483
    return-void
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .line 487
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 488
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 489
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 490
    return-void
.end method

.method public glDeleteProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 494
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 495
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteProgram(I)V

    .line 496
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 497
    return-void
.end method

.method public glDeleteRenderbuffer(I)V
    .locals 1
    .param p1, "renderbuffer"    # I

    .line 501
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 503
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 504
    return-void
.end method

.method public glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .line 508
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 510
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 511
    return-void
.end method

.method public glDeleteShader(I)V
    .locals 1
    .param p1, "shader"    # I

    .line 515
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 516
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteShader(I)V

    .line 517
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 518
    return-void
.end method

.method public glDeleteTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .line 147
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTexture(I)V

    .line 149
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 150
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .line 140
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 142
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 143
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    .line 154
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    .line 156
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 157
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .line 161
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 163
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 164
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "zNear"    # F
    .param p2, "zFar"    # F

    .line 168
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDepthRangef(FF)V

    .line 170
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 171
    return-void
.end method

.method public glDetachShader(II)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "shader"    # I

    .line 522
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDetachShader(II)V

    .line 524
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 525
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .param p1, "cap"    # I

    .line 175
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 177
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 178
    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .line 529
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 530
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glDisableVertexAttribArray(I)V

    .line 531
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 532
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->drawCalls:I

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    .line 186
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 187
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # I

    .line 536
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 537
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->drawCalls:I

    .line 538
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 539
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 540
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 541
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .line 191
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    .line 192
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->drawCalls:I

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 195
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 196
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .param p1, "cap"    # I

    .line 200
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 202
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 203
    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .locals 1
    .param p1, "index"    # I

    .line 545
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glEnableVertexAttribArray(I)V

    .line 547
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 548
    return-void
.end method

.method public glFinish()V
    .locals 1

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFinish()V

    .line 209
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 210
    return-void
.end method

.method public glFlush()V
    .locals 1

    .line 214
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glFlush()V

    .line 216
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 217
    return-void
.end method

.method public glFramebufferRenderbuffer(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "renderbuffertarget"    # I
    .param p4, "renderbuffer"    # I

    .line 552
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 554
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 555
    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .locals 7
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "textarget"    # I
    .param p4, "texture"    # I
    .param p5, "level"    # I

    .line 559
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 560
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 561
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 562
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 221
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glFrontFace(I)V

    .line 223
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 224
    return-void
.end method

.method public glGenBuffer()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 567
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffer()I

    move-result v0

    .line 568
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 569
    return v0
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "buffers"    # Ljava/nio/IntBuffer;

    .line 574
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 575
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 576
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 577
    return-void
.end method

.method public glGenFramebuffer()I
    .locals 1

    .line 588
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v0

    .line 590
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 591
    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "framebuffers"    # Ljava/nio/IntBuffer;

    .line 596
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 597
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 598
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 599
    return-void
.end method

.method public glGenRenderbuffer()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v0

    .line 605
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 606
    return v0
.end method

.method public glGenRenderbuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "renderbuffers"    # Ljava/nio/IntBuffer;

    .line 611
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 613
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 614
    return-void
.end method

.method public glGenTexture()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    .line 237
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 238
    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 230
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 231
    return-void
.end method

.method public glGenerateMipmap(I)V
    .locals 1
    .param p1, "target"    # I

    .line 581
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 583
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 584
    return-void
.end method

.method public glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .line 618
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveAttrib(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 621
    return-object v0
.end method

.method public glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I
    .param p2, "index"    # I
    .param p3, "size"    # Ljava/nio/IntBuffer;
    .param p4, "type"    # Ljava/nio/Buffer;

    .line 626
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 627
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetActiveUniform(IILjava/nio/IntBuffer;Ljava/nio/Buffer;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 629
    return-object v0
.end method

.method public glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "maxcount"    # I
    .param p3, "count"    # Ljava/nio/Buffer;
    .param p4, "shaders"    # Ljava/nio/IntBuffer;

    .line 634
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttachedShaders(IILjava/nio/Buffer;Ljava/nio/IntBuffer;)V

    .line 636
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 637
    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 641
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 643
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 644
    return v0
.end method

.method public glGetBooleanv(ILjava/nio/Buffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/Buffer;

    .line 649
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 650
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetBooleanv(ILjava/nio/Buffer;)V

    .line 651
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 652
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 656
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 657
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 658
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 659
    return-void
.end method

.method public glGetError()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .line 663
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 664
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 665
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 666
    return-void
.end method

.method public glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "attachment"    # I
    .param p3, "pname"    # I
    .param p4, "params"    # Ljava/nio/IntBuffer;

    .line 670
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetFramebufferAttachmentParameteriv(IIILjava/nio/IntBuffer;)V

    .line 672
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 673
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 252
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 253
    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "program"    # I

    .line 684
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 685
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 687
    return-object v0
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 677
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    .line 679
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 680
    return-void
.end method

.method public glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 692
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetRenderbufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 694
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 695
    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 1
    .param p1, "shader"    # I

    .line 706
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 707
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 709
    return-object v0
.end method

.method public glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "shadertype"    # I
    .param p2, "precisiontype"    # I
    .param p3, "range"    # Ljava/nio/IntBuffer;
    .param p4, "precision"    # Ljava/nio/IntBuffer;

    .line 714
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 715
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderPrecisionFormat(IILjava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    .line 716
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 717
    return-void
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 699
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    .line 701
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 702
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # I

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 260
    return-object v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 721
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 722
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 723
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 724
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 728
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 729
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 730
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 731
    return-void
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .locals 1
    .param p1, "program"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 749
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 750
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 751
    .local v0, "result":I
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 752
    return v0
.end method

.method public glGetUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 735
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 736
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformfv(IILjava/nio/FloatBuffer;)V

    .line 737
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 738
    return-void
.end method

.method public glGetUniformiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "program"    # I
    .param p2, "location"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 742
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 743
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformiv(IILjava/nio/IntBuffer;)V

    .line 744
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 745
    return-void
.end method

.method public glGetVertexAttribPointerv(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .line 771
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 772
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribPointerv(IILjava/nio/Buffer;)V

    .line 773
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 774
    return-void
.end method

.method public glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 757
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribfv(IILjava/nio/FloatBuffer;)V

    .line 759
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 760
    return-void
.end method

.method public glGetVertexAttribiv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 764
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 765
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glGetVertexAttribiv(IILjava/nio/IntBuffer;)V

    .line 766
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 767
    return-void
.end method

.method public glHint(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 266
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glHint(II)V

    .line 267
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 268
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .param p1, "buffer"    # I

    .line 778
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 779
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsBuffer(I)Z

    move-result v0

    .line 780
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 781
    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .param p1, "cap"    # I

    .line 786
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 787
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsEnabled(I)Z

    move-result v0

    .line 788
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 789
    return v0
.end method

.method public glIsFramebuffer(I)Z
    .locals 1
    .param p1, "framebuffer"    # I

    .line 794
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 795
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsFramebuffer(I)Z

    move-result v0

    .line 796
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 797
    return v0
.end method

.method public glIsProgram(I)Z
    .locals 1
    .param p1, "program"    # I

    .line 802
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 803
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsProgram(I)Z

    move-result v0

    .line 804
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 805
    return v0
.end method

.method public glIsRenderbuffer(I)Z
    .locals 1
    .param p1, "renderbuffer"    # I

    .line 810
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsRenderbuffer(I)Z

    move-result v0

    .line 812
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 813
    return v0
.end method

.method public glIsShader(I)Z
    .locals 1
    .param p1, "shader"    # I

    .line 818
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 819
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsShader(I)Z

    move-result v0

    .line 820
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 821
    return v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .param p1, "texture"    # I

    .line 826
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 827
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glIsTexture(I)Z

    move-result v0

    .line 828
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 829
    return v0
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .line 272
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLineWidth(F)V

    .line 274
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 275
    return-void
.end method

.method public glLinkProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 834
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 835
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    .line 836
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 837
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .line 279
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 281
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 282
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .line 286
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glPolygonOffset(FF)V

    .line 288
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 289
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

    .line 293
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 294
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 295
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 296
    return-void
.end method

.method public glReleaseShaderCompiler()V
    .locals 1

    .line 841
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 842
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glReleaseShaderCompiler()V

    .line 843
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 844
    return-void
.end method

.method public glRenderbufferStorage(IIII)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 848
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 849
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 850
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 851
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .line 855
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 856
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glSampleCoverage(FZ)V

    .line 857
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 858
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 300
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    .line 302
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 303
    return-void
.end method

.method public glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V
    .locals 7
    .param p1, "n"    # I
    .param p2, "shaders"    # Ljava/nio/IntBuffer;
    .param p3, "binaryformat"    # I
    .param p4, "binary"    # Ljava/nio/Buffer;
    .param p5, "length"    # I

    .line 862
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 863
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glShaderBinary(ILjava/nio/IntBuffer;ILjava/nio/Buffer;I)V

    .line 864
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 865
    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .locals 1
    .param p1, "shader"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 869
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 870
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 871
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 872
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .line 307
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFunc(III)V

    .line 309
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 310
    return-void
.end method

.method public glStencilFuncSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "func"    # I
    .param p3, "ref"    # I
    .param p4, "mask"    # I

    .line 876
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 877
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilFuncSeparate(IIII)V

    .line 878
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 879
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .line 314
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMask(I)V

    .line 316
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 317
    return-void
.end method

.method public glStencilMaskSeparate(II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "mask"    # I

    .line 883
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 884
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glStencilMaskSeparate(II)V

    .line 885
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 886
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .line 321
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 322
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOp(III)V

    .line 323
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 324
    return-void
.end method

.method public glStencilOpSeparate(IIII)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "fail"    # I
    .param p3, "zfail"    # I
    .param p4, "zpass"    # I

    .line 890
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 891
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glStencilOpSeparate(IIII)V

    .line 892
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 893
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

    .line 329
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 330
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 331
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 332
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .line 336
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 337
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterf(IIF)V

    .line 338
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 339
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .line 897
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 898
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 899
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 900
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .line 904
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 905
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    .line 906
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 907
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .line 911
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 912
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 913
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 914
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

    .line 344
    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 345
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/GL20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 346
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 347
    return-void
.end method

.method public glUniform1f(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F

    .line 918
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 919
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    .line 920
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 921
    return-void
.end method

.method public glUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 925
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 926
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    .line 927
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 928
    return-void
.end method

.method public glUniform1fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 932
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 933
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1fv(II[FI)V

    .line 934
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 935
    return-void
.end method

.method public glUniform1i(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I

    .line 939
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 940
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1i(II)V

    .line 941
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 942
    return-void
.end method

.method public glUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 946
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 947
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(IILjava/nio/IntBuffer;)V

    .line 948
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 949
    return-void
.end method

.method public glUniform1iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 953
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 954
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1iv(II[II)V

    .line 955
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 956
    return-void
.end method

.method public glUniform2f(IFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 960
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 961
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    .line 962
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 963
    return-void
.end method

.method public glUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 967
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 968
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 969
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 970
    return-void
.end method

.method public glUniform2fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 974
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 975
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2fv(II[FI)V

    .line 976
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 977
    return-void
.end method

.method public glUniform2i(III)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 981
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 982
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2i(III)V

    .line 983
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 984
    return-void
.end method

.method public glUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 988
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 989
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2iv(IILjava/nio/IntBuffer;)V

    .line 990
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 991
    return-void
.end method

.method public glUniform2iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 995
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 996
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2iv(II[II)V

    .line 997
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 998
    return-void
.end method

.method public glUniform3f(IFFF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 1002
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1003
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3f(IFFF)V

    .line 1004
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1005
    return-void
.end method

.method public glUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 1009
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1010
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 1011
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1012
    return-void
.end method

.method public glUniform3fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 1016
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1017
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3fv(II[FI)V

    .line 1018
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1019
    return-void
.end method

.method public glUniform3i(IIII)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .line 1023
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1024
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3i(IIII)V

    .line 1025
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1026
    return-void
.end method

.method public glUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 1030
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1031
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3iv(IILjava/nio/IntBuffer;)V

    .line 1032
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1033
    return-void
.end method

.method public glUniform3iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 1037
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1038
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform3iv(II[II)V

    .line 1039
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1040
    return-void
.end method

.method public glUniform4f(IFFFF)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .line 1044
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1045
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    .line 1046
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1047
    return-void
.end method

.method public glUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/FloatBuffer;

    .line 1051
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1052
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 1053
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1054
    return-void
.end method

.method public glUniform4fv(II[FI)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [F
    .param p4, "offset"    # I

    .line 1058
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1059
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4fv(II[FI)V

    .line 1060
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1061
    return-void
.end method

.method public glUniform4i(IIIII)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "w"    # I

    .line 1065
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1066
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4i(IIIII)V

    .line 1067
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1068
    return-void
.end method

.method public glUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # Ljava/nio/IntBuffer;

    .line 1072
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1073
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4iv(IILjava/nio/IntBuffer;)V

    .line 1074
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1075
    return-void
.end method

.method public glUniform4iv(II[II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "v"    # [I
    .param p4, "offset"    # I

    .line 1079
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1080
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4iv(II[II)V

    .line 1081
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1082
    return-void
.end method

.method public glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1086
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1087
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    .line 1088
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1089
    return-void
.end method

.method public glUniformMatrix2fv(IIZ[FI)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 1093
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1094
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix2fv(IIZ[FI)V

    .line 1095
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1096
    return-void
.end method

.method public glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1100
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    .line 1102
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1103
    return-void
.end method

.method public glUniformMatrix3fv(IIZ[FI)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 1107
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1108
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix3fv(IIZ[FI)V

    .line 1109
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1110
    return-void
.end method

.method public glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # Ljava/nio/FloatBuffer;

    .line 1114
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 1116
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1117
    return-void
.end method

.method public glUniformMatrix4fv(IIZ[FI)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "count"    # I
    .param p3, "transpose"    # Z
    .param p4, "value"    # [F
    .param p5, "offset"    # I

    .line 1121
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1122
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1123
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1124
    return-void
.end method

.method public glUseProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 1128
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->shaderSwitches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->shaderSwitches:I

    .line 1129
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 1131
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1132
    return-void
.end method

.method public glValidateProgram(I)V
    .locals 1
    .param p1, "program"    # I

    .line 1136
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glValidateProgram(I)V

    .line 1138
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1139
    return-void
.end method

.method public glVertexAttrib1f(IF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F

    .line 1143
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1144
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1f(IF)V

    .line 1145
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1146
    return-void
.end method

.method public glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1150
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib1fv(ILjava/nio/FloatBuffer;)V

    .line 1152
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1153
    return-void
.end method

.method public glVertexAttrib2f(IFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 1157
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1158
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2f(IFF)V

    .line 1159
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1160
    return-void
.end method

.method public glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1164
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib2fv(ILjava/nio/FloatBuffer;)V

    .line 1166
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1167
    return-void
.end method

.method public glVertexAttrib3f(IFFF)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 1171
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3f(IFFF)V

    .line 1173
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1174
    return-void
.end method

.method public glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1178
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1179
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib3fv(ILjava/nio/FloatBuffer;)V

    .line 1180
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1181
    return-void
.end method

.method public glVertexAttrib4f(IFFFF)V
    .locals 7
    .param p1, "indx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F

    .line 1185
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1186
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4f(IFFFF)V

    .line 1187
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1188
    return-void
.end method

.method public glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "indx"    # I
    .param p2, "values"    # Ljava/nio/FloatBuffer;

    .line 1192
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1193
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttrib4fv(ILjava/nio/FloatBuffer;)V

    .line 1194
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1195
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

    .line 1206
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1207
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZII)V

    .line 1208
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1209
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

    .line 1199
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 1200
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1201
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 1202
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 351
    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->calls:I

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 353
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->check()V

    .line 354
    return-void
.end method
