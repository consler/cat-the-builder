.class public Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;
.super Ljava/lang/Object;
.source "MipMapGenerator.java"


# static fields
.field private static useHWMipMap:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 2
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "textureWidth"    # I
    .param p3, "textureHeight"    # I

    .line 49
    sget-boolean v0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 51
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 55
    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapDesktop(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapGLES20(ILcom/badlogic/gdx/graphics/Pixmap;)V

    .line 60
    :goto_1
    return-void
.end method

.method public static generateMipMap(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 1
    .param p0, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I

    .line 43
    const/16 v0, 0xde1

    invoke-static {v0, p0, p1, p2}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMap(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 44
    return-void
.end method

.method private static generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 17
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "textureWidth"    # I
    .param p3, "textureHeight"    # I

    .line 80
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 80
    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 82
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v0, :cond_1

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "texture width and height must be square when using mipmapping."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p3

    .line 84
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 85
    .local v2, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 86
    .local v3, "height":I
    const/4 v4, 0x1

    move v15, v4

    move v4, v3

    move v3, v2

    move-object/from16 v2, p1

    .line 87
    .end local p1    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v3, "width":I
    .local v4, "height":I
    .local v15, "level":I
    :goto_1
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 88
    new-instance v5, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v14, v5

    .line 89
    .local v14, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 90
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v14

    move-object v6, v2

    move v13, v3

    move-object/from16 v16, v14

    .end local v14    # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v16, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    move v14, v4

    invoke-virtual/range {v5 .. v14}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 91
    const/4 v5, 0x1

    if-le v15, v5, :cond_2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 92
    :cond_2
    move-object/from16 v2, v16

    .line 94
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    .line 95
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v12

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v13

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 94
    move/from16 v6, p0

    move v7, v15

    invoke-interface/range {v5 .. v14}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 97
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 98
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 99
    nop

    .end local v16    # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    add-int/lit8 v15, v15, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    return-void
.end method

.method private static generateMipMapDesktop(ILcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 11
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "textureWidth"    # I
    .param p3, "textureHeight"    # I

    .line 69
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const-string v1, "GL_ARB_framebuffer_object"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 70
    const-string v1, "GL_EXT_framebuffer_object"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->generateMipMapCPU(ILcom/badlogic/gdx/graphics/Pixmap;II)V

    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v9

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 71
    move v2, p0

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 73
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 77
    :goto_1
    return-void
.end method

.method private static generateMipMapGLES20(ILcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 10
    .param p0, "target"    # I
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 63
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    .line 64
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 63
    const/4 v2, 0x0

    const/4 v6, 0x0

    move v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 65
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/graphics/GL20;->glGenerateMipmap(I)V

    .line 66
    return-void
.end method

.method public static setUseHardwareMipMap(Z)V
    .locals 0
    .param p0, "useHWMipMap"    # Z

    .line 36
    sput-boolean p0, Lcom/badlogic/gdx/graphics/glutils/MipMapGenerator;->useHWMipMap:Z

    .line 37
    return-void
.end method
