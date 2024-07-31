.class public Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;
.super Ljava/lang/Object;
.source "FileTextureArrayData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureArrayData;


# instance fields
.field private depth:I

.field private format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field private prepared:Z

.field private textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

.field useMipMaps:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;Z[Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 3
    .param p1, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "useMipMaps"    # Z
    .param p3, "files"    # [Lcom/badlogic/gdx/files/FileHandle;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 38
    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->useMipMaps:Z

    .line 39
    array-length v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->depth:I

    .line 40
    array-length v0, p3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, p3, v0

    invoke-static {v2, p1, p2}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeTextureArrayData()V
    .locals 17

    .line 71
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 72
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    if-ne v2, v3, :cond_0

    .line 73
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    const v3, 0x8c1a

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    goto/16 :goto_2

    .line 75
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v14, v2, v1

    .line 76
    .local v14, "texData":Lcom/badlogic/gdx/graphics/TextureData;
    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v10

    .line 77
    .local v10, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v11

    .line 78
    .local v11, "disposePixmap":Z
    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 79
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v12, v2

    .line 80
    .local v12, "temp":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 81
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    move-object v2, v12

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 82
    invoke-interface {v14}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 85
    :cond_1
    move-object v10, v12

    .line 86
    const/4 v11, 0x1

    move-object v15, v10

    move/from16 v16, v11

    goto :goto_1

    .line 78
    .end local v12    # "temp":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_2
    move-object v15, v10

    move/from16 v16, v11

    .line 88
    .end local v10    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v11    # "disposePixmap":Z
    .local v15, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .local v16, "disposePixmap":Z
    :goto_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const v3, 0x8c1a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v11

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v12

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v13

    move v7, v1

    invoke-interface/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/GL30;->glTexSubImage3D(IIIIIIIIIILjava/nio/Buffer;)V

    .line 89
    if-eqz v16, :cond_3

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 71
    .end local v14    # "texData":Lcom/badlogic/gdx/graphics/TextureData;
    .end local v15    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v16    # "disposePixmap":Z
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->depth:I

    return v0
.end method

.method public getGLType()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlType(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getInternalFormat()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGlFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 122
    .local v4, "data":Lcom/badlogic/gdx/graphics/TextureData;
    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    return v2

    .line 121
    .end local v4    # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->prepared:Z

    return v0
.end method

.method public prepare()V
    .locals 7

    .line 53
    const/4 v0, -0x1

    .line 54
    .local v0, "width":I
    const/4 v1, -0x1

    .line 55
    .local v1, "height":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->textureDatas:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 56
    .local v5, "data":Lcom/badlogic/gdx/graphics/TextureData;
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 57
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 58
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v0

    .line 59
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v6

    if-ne v0, v6, :cond_1

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v6

    if-ne v1, v6, :cond_1

    .line 55
    .end local v5    # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .restart local v5    # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :cond_1
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Error whilst preparing TextureArray: TextureArray Textures must have equal dimensions."

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v5    # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureArrayData;->prepared:Z

    .line 67
    return-void
.end method
