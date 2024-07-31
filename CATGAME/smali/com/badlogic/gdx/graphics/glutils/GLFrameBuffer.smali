.class public abstract Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;
.super Ljava/lang/Object;
.source "GLFrameBuffer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferCubemapBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FloatFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;,
        Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/graphics/GLTexture;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# static fields
.field protected static final GL_DEPTH24_STENCIL8_OES:I = 0x88f0

.field protected static final buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static defaultFramebufferHandle:I

.field protected static defaultFramebufferHandleInitialized:Z


# instance fields
.field protected bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected depthStencilPackedBufferHandle:I

.field protected depthbufferHandle:I

.field protected framebufferHandle:I

.field protected hasDepthStencilPackedBuffer:Z

.field protected isMRT:Z

.field protected stencilbufferHandle:I

.field protected textureAttachments:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 84
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<",
            "+",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    .local p1, "bufferBuilder":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder<+Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    .line 89
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->build()V

    .line 91
    return-void
.end method

.method private static addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "frameBuffer"    # Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;

    .line 381
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 382
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 383
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 384
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void
.end method

.method private checkValidBuilder()V
    .locals 5

    .line 269
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->isGL30Available()Z

    move-result v0

    .line 271
    .local v0, "runningGL30":Z
    if-nez v0, :cond_6

    .line 272
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-nez v1, :cond_5

    .line 275
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    .line 278
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    .line 279
    .local v2, "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-nez v3, :cond_3

    .line 280
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-nez v3, :cond_2

    .line 281
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isFloat:Z

    if-eqz v3, :cond_1

    .line 282
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v4, "OES_texture_float"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Float texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v2    # "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_1
    :goto_1
    goto :goto_0

    .line 280
    .restart local v2    # "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Stencil texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_3
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Depth texture FrameBuffer Attachment not available on GLES 2.0"

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    .end local v2    # "spec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_4
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Multiple render targets not available on GLES 2.0"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_5
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Packed Stencil/Render render buffers are not available on GLES 2.0"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_6
    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .line 400
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .line 404
    const-string v0, "Managed buffers/app: { "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/Application;

    .line 406
    .local v1, "app":Lcom/badlogic/gdx/Application;
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .end local v1    # "app":Lcom/badlogic/gdx/Application;
    goto :goto_0

    .line 409
    :cond_0
    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    return-object p0
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .line 390
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_0

    return-void

    .line 392
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 393
    .local v0, "bufferArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;>;"
    if-nez v0, :cond_1

    return-void

    .line 394
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_2

    .line 395
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->build()V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static unbind()V
    .locals 3

    .line 318
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 319
    return-void
.end method


# virtual methods
.method protected abstract attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public begin()V
    .locals 0

    .line 323
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bind()V

    .line 324
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->setFrameBufferViewport()V

    .line 325
    return-void
.end method

.method public bind()V
    .locals 3

    .line 313
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 314
    return-void
.end method

.method protected build()V
    .locals 20

    .line 113
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    move-object/from16 v0, p0

    sget-object v7, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 115
    .local v7, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->checkValidBuilder()V

    .line 118
    sget-boolean v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_1

    .line 119
    sput-boolean v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandleInitialized:Z

    .line 120
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_0

    .line 121
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 122
    .local v1, "intbuf":Ljava/nio/IntBuffer;
    const v2, 0x8ca6

    invoke-interface {v7, v2, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 123
    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    sput v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    .line 124
    .end local v1    # "intbuf":Ljava/nio/IntBuffer;
    goto :goto_0

    .line 125
    :cond_0
    sput v9, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    .line 129
    :cond_1
    :goto_0
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    .line 130
    const v10, 0x8d40

    invoke-interface {v7, v10, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 132
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v11, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    .line 133
    .local v11, "width":I
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v12, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    .line 135
    .local v12, "height":I
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    const v13, 0x8d41

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    .line 137
    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 138
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->depthRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 141
    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v1, :cond_3

    .line 142
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    .line 143
    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 144
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->stencilRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 147
    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v1, :cond_4

    .line 148
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 149
    invoke-interface {v7, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 150
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->packedStencilDepthRenderBufferSpec:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferRenderBufferAttachmentSpec;->internalFormat:I

    invoke-interface {v7, v13, v1, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 154
    :cond_4
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v1, v8, :cond_5

    move v1, v8

    goto :goto_1

    :cond_5
    move v1, v9

    :goto_1
    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "colorTextureCounter":I
    const v14, 0x8ce0

    if-eqz v1, :cond_a

    .line 157
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v2

    .end local v2    # "colorTextureCounter":I
    .local v16, "colorTextureCounter":I
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    .line 158
    .local v6, "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v5

    .line 159
    .local v5, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isColorTexture()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 161
    const v2, 0x8d40

    add-int v3, v16, v14

    const/16 v4, 0xde1

    .line 162
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v17

    const/16 v18, 0x0

    .line 161
    move-object v1, v7

    move-object/from16 v19, v5

    .end local v5    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .local v19, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    move/from16 v5, v17

    move-object v8, v6

    .end local v6    # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .local v8, "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    move/from16 v6, v18

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 163
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 164
    .end local v8    # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .end local v19    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .restart local v5    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .restart local v6    # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    :cond_6
    move-object/from16 v19, v5

    move-object v8, v6

    .end local v5    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    .end local v6    # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .restart local v8    # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .restart local v19    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isDepth:Z

    if-eqz v1, :cond_7

    .line 165
    const v2, 0x8d40

    const v3, 0x8d00

    const/16 v4, 0xde1

    .line 166
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v5

    const/4 v6, 0x0

    .line 165
    move-object v1, v7

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    goto :goto_3

    .line 167
    :cond_7
    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;->isStencil:Z

    if-eqz v1, :cond_8

    .line 168
    const v2, 0x8d40

    const v3, 0x8d20

    const/16 v4, 0xde1

    .line 169
    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v5

    const/4 v6, 0x0

    .line 168
    move-object v1, v7

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 171
    .end local v8    # "attachmentSpec":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;
    .end local v19    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    :cond_8
    :goto_3
    const/4 v8, 0x1

    goto :goto_2

    :cond_9
    move/from16 v2, v16

    goto :goto_4

    .line 173
    .end local v16    # "colorTextureCounter":I
    .restart local v2    # "colorTextureCounter":I
    :cond_a
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->textureAttachmentSpecs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;

    move-result-object v1

    .line 174
    .local v1, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 175
    iget v3, v1, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/GLTexture;->getTextureObjectHandle()I

    move-result v4

    invoke-interface {v7, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 178
    .end local v1    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    :goto_4
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->isMRT:Z

    if-eqz v1, :cond_c

    .line 179
    invoke-static {v2}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 180
    .local v1, "buffer":Ljava/nio/IntBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_b

    .line 181
    add-int v4, v3, v14

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 183
    .end local v3    # "i":I
    :cond_b
    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v3, v2, v1}, Lcom/badlogic/gdx/graphics/GL30;->glDrawBuffers(ILjava/nio/IntBuffer;)V

    .line 185
    .end local v1    # "buffer":Ljava/nio/IntBuffer;
    goto :goto_6

    .line 186
    :cond_c
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/GLTexture;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->attachFrameBufferColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 189
    :goto_6
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    const v3, 0x8d00

    if-eqz v1, :cond_d

    .line 190
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v10, v3, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 193
    :cond_d
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    const v4, 0x8d20

    if-eqz v1, :cond_e

    .line 194
    iget v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v10, v4, v13, v1}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 197
    :cond_e
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v1, :cond_f

    .line 198
    const v1, 0x821a

    iget v5, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v1, v13, v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 202
    :cond_f
    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 203
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 204
    .restart local v5    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    iget v6, v5, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    invoke-interface {v7, v6, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 205
    .end local v5    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    goto :goto_7

    .line 207
    :cond_10
    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 209
    .local v1, "result":I
    const v5, 0x8cdd

    if-ne v1, v5, :cond_15

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v6, :cond_15

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v6, :cond_15

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 210
    const-string v8, "GL_OES_packed_depth_stencil"

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 211
    const-string v8, "GL_EXT_packed_depth_stencil"

    invoke-interface {v6, v8}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 212
    :cond_11
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v6, :cond_12

    .line 213
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 214
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    .line 216
    :cond_12
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v6, :cond_13

    .line 217
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 218
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    .line 220
    :cond_13
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v6, v6, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasPackedStencilDepthRenderBuffer:Z

    if-eqz v6, :cond_14

    .line 221
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 222
    iput v9, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 225
    :cond_14
    invoke-interface {v7}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v6

    iput v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    .line 226
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    .line 227
    invoke-interface {v7, v13, v6}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 228
    const v6, 0x88f0

    invoke-interface {v7, v13, v6, v11, v12}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 229
    invoke-interface {v7, v13, v9}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 231
    iget v6, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v3, v13, v6}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 233
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v10, v4, v13, v3}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 235
    invoke-interface {v7, v10}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 238
    :cond_15
    sget v3, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->defaultFramebufferHandle:I

    invoke-interface {v7, v10, v3}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 240
    const v3, 0x8cd5

    if-eq v1, v3, :cond_1e

    .line 241
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 242
    .local v4, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 243
    .end local v4    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    goto :goto_8

    .line 245
    :cond_16
    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    if-eqz v3, :cond_17

    .line 246
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteBuffer(I)V

    goto :goto_9

    .line 248
    :cond_17
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v3, :cond_18

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 249
    :cond_18
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v3, :cond_19

    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 252
    :cond_19
    :goto_9
    iget v3, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    invoke-interface {v7, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 254
    const v3, 0x8cd6

    if-eq v1, v3, :cond_1d

    .line 256
    const v3, 0x8cd9

    if-eq v1, v3, :cond_1c

    .line 258
    const v3, 0x8cd7

    if-eq v1, v3, :cond_1b

    .line 260
    if-ne v1, v5, :cond_1a

    .line 261
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: unsupported combination of formats"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_1a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame buffer couldn\'t be constructed: unknown error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_1b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_1c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_1e
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v3, v0}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;)V

    .line 266
    return-void
.end method

.method protected abstract createTexture(Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;)Lcom/badlogic/gdx/graphics/GLTexture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$FrameBufferTextureAttachmentSpec;",
            ")TT;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 3

    .line 293
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 295
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/GLTexture;

    .line 296
    .local v2, "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V

    .line 297
    .end local v2    # "texture":Lcom/badlogic/gdx/graphics/GLTexture;, "TT;"
    goto :goto_0

    .line 299
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->hasDepthStencilPackedBuffer:Z

    if-eqz v1, :cond_1

    .line 300
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasDepthRenderBuffer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget-boolean v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->hasStencilRenderBuffer:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 306
    :cond_3
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 308
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->buffers:Ljava/util/Map;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 309
    :cond_4
    return-void
.end method

.method protected abstract disposeColorTexture(Lcom/badlogic/gdx/graphics/GLTexture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public end()V
    .locals 3

    .line 334
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->end(IIII)V

    .line 335
    return-void
.end method

.method public end(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 344
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->unbind()V

    .line 345
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 346
    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/GLTexture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/GLTexture;

    return-object v0
.end method

.method public getDepthBufferHandle()I
    .locals 1

    .line 356
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthbufferHandle:I

    return v0
.end method

.method protected getDepthStencilPackedBuffer()I
    .locals 1

    .line 367
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->depthStencilPackedBufferHandle:I

    return v0
.end method

.method public getFramebufferHandle()I
    .locals 1

    .line 350
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->framebufferHandle:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 372
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    return v0
.end method

.method public getStencilBufferHandle()I
    .locals 1

    .line 362
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->stencilbufferHandle:I

    return v0
.end method

.method public getTextureAttachments()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->textureAttachments:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 377
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v0, v0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    return v0
.end method

.method protected setFrameBufferViewport()V
    .locals 4

    .line 329
    .local p0, "this":Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;, "Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer<TT;>;"
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v1, v1, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->width:I

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer;->bufferBuilder:Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;

    iget v2, v2, Lcom/badlogic/gdx/graphics/glutils/GLFrameBuffer$GLFrameBufferBuilder;->height:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 330
    return-void
.end method
