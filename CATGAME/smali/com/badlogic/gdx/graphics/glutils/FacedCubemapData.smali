.class public Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;
.super Ljava/lang/Object;
.source "FacedCubemapData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/CubemapData;


# instance fields
.field protected final data:[Lcom/badlogic/gdx/graphics/TextureData;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 28
    const/4 v0, 0x0

    move-object v7, v0

    check-cast v7, Lcom/badlogic/gdx/graphics/TextureData;

    move-object v1, p0

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 29
    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # I
    .param p4, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 67
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v8, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v9, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v0, p0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 8
    .param p1, "positiveX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 34
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-static {p2, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    .line 35
    invoke-static {p3, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    invoke-static {p4, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v5

    .line 36
    invoke-static {p5, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v6

    .line 37
    invoke-static {p6, v0}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v7

    .line 34
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 7
    .param p1, "positiveX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p7, "useMipMaps"    # Z

    .line 43
    invoke-static {p1, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-static {p2, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    .line 44
    invoke-static {p3, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    .line 45
    invoke-static {p4, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    invoke-static {p5, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v5

    .line 46
    invoke-static {p6, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v6

    .line 43
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 8
    .param p1, "positiveX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 52
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 17
    .param p1, "positiveX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p7, "useMipMaps"    # Z

    .line 58
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    move-object v11, v8

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v0, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v11, v9

    :goto_0
    if-nez v1, :cond_1

    move-object v12, v8

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v1, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v12, v9

    :goto_1
    if-nez v2, :cond_2

    move-object v13, v8

    goto :goto_2

    :cond_2
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v2, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v13, v9

    :goto_2
    if-nez v3, :cond_3

    move-object v14, v8

    goto :goto_3

    :cond_3
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v3, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v14, v9

    :goto_3
    if-nez v4, :cond_4

    move-object v15, v8

    goto :goto_4

    :cond_4
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v4, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v15, v9

    :goto_4
    if-nez v5, :cond_5

    move-object/from16 v16, v8

    goto :goto_5

    :cond_5
    new-instance v9, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v9, v5, v8, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object/from16 v16, v9

    :goto_5
    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 2
    .param p1, "positiveX"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p2, "negativeX"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p3, "positiveY"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p4, "negativeY"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p5, "positiveZ"    # Lcom/badlogic/gdx/graphics/TextureData;
    .param p6, "negativeZ"    # Lcom/badlogic/gdx/graphics/TextureData;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/TextureData;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    .line 76
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 77
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 78
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 79
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 80
    const/4 v1, 0x4

    aput-object p5, v0, v1

    .line 81
    const/4 v1, 0x5

    aput-object p6, v0, v1

    .line 82
    return-void
.end method


# virtual methods
.method public consumeCubemapData()V
    .locals 18

    .line 159
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 160
    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Custom:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    const v4, 0x8515

    if-ne v2, v3, :cond_0

    .line 161
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    add-int/2addr v4, v1

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/graphics/TextureData;->consumeCustomData(I)V

    goto/16 :goto_1

    .line 163
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    .line 164
    .local v2, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v3

    .line 165
    .local v3, "disposePixmap":Z
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 166
    new-instance v5, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v8, v8, v1

    invoke-interface {v8}, Lcom/badlogic/gdx/graphics/TextureData;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    move-object v13, v5

    .line 167
    .local v13, "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 168
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    move-object v5, v13

    move-object v6, v2

    invoke-virtual/range {v5 .. v12}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    .line 169
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v5, v5, v1

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/TextureData;->disposePixmap()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 170
    :cond_1
    move-object v2, v13

    .line 171
    const/4 v3, 0x1

    .line 173
    .end local v13    # "tmp":Lcom/badlogic/gdx/graphics/Pixmap;
    :cond_2
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v6, 0xcf5

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    .line 174
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    add-int v9, v1, v4

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLInternalFormat()I

    move-result v11

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v12

    .line 175
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLFormat()I

    move-result v15

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getGLType()I

    move-result v16

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 174
    invoke-interface/range {v8 .. v17}, Lcom/badlogic/gdx/graphics/GL20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 176
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 159
    .end local v2    # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v3    # "disposePixmap":Z
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getHeight()I
    .locals 3

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "height":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    move v2, v1

    .local v2, "tmp":I
    if-le v1, v0, :cond_0

    .line 135
    move v0, v2

    .line 136
    .end local v2    # "tmp":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    move v2, v1

    .restart local v2    # "tmp":I
    if-le v1, v0, :cond_1

    .line 137
    move v0, v2

    .line 138
    .end local v2    # "tmp":I
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    move v2, v1

    .restart local v2    # "tmp":I
    if-le v1, v0, :cond_2

    .line 139
    move v0, v2

    .line 140
    .end local v2    # "tmp":I
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeX:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getHeight()I

    move-result v1

    move v2, v1

    .restart local v2    # "tmp":I
    if-le v1, v0, :cond_3

    .line 141
    move v0, v2

    .line 142
    .end local v2    # "tmp":I
    :cond_3
    return v0
.end method

.method public getTextureData(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;)Lcom/badlogic/gdx/graphics/TextureData;
    .locals 2
    .param p1, "side"    # Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWidth()I
    .locals 3

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "width":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    move v2, v1

    .local v2, "tmp":I
    if-le v1, v0, :cond_0

    move v0, v2

    .line 125
    .end local v2    # "tmp":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeZ:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    move v2, v1

    .restart local v2    # "tmp":I
    if-le v1, v0, :cond_1

    move v0, v2

    .line 126
    .end local v2    # "tmp":I
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->PositiveY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    move v2, v1

    .restart local v2    # "tmp":I
    if-le v1, v0, :cond_2

    move v0, v2

    .line 127
    .end local v2    # "tmp":I
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    sget-object v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->NegativeY:Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->getWidth()I

    move-result v1

    move v2, v1

    .restart local v2    # "tmp":I
    if-le v1, v0, :cond_3

    move v0, v2

    .line 128
    .end local v2    # "tmp":I
    :cond_3
    return v0
.end method

.method public isComplete()Z
    .locals 3

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 112
    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isManaged()Z
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 87
    .local v4, "data":Lcom/badlogic/gdx/graphics/TextureData;
    invoke-interface {v4}, Lcom/badlogic/gdx/graphics/TextureData;->isManaged()Z

    move-result v5

    if-nez v5, :cond_0

    return v2

    .line 86
    .end local v4    # "data":Lcom/badlogic/gdx/graphics/TextureData;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 3
    .param p1, "side"    # Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    aput-object v2, v0, v1

    .line 98
    return-void
.end method

.method public load(Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 5
    .param p1, "side"    # Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    .param p2, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    iget v1, p1, Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;->index:I

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v2, v4, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v2, v3

    :goto_0
    aput-object v2, v0, v1

    .line 107
    return-void
.end method

.method public prepare()V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 154
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;->data:[Lcom/badlogic/gdx/graphics/TextureData;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 152
    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "You need to complete your cubemap data before using it"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
