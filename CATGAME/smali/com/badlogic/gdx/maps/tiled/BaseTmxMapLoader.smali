.class public abstract Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "BaseTmxMapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;",
        ">",
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        "TP;>;"
    }
.end annotation


# static fields
.field protected static final FLAG_FLIP_DIAGONALLY:I = 0x20000000

.field protected static final FLAG_FLIP_HORIZONTALLY:I = -0x80000000

.field protected static final FLAG_FLIP_VERTICALLY:I = 0x40000000

.field protected static final MASK_CLEAR:I = -0x20000000


# instance fields
.field protected convertObjectToTileSpace:Z

.field protected flipY:Z

.field protected map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected mapHeightInPixels:I

.field protected mapTileHeight:I

.field protected mapTileWidth:I

.field protected mapWidthInPixels:I

.field protected root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field protected xml:Lcom/badlogic/gdx/utils/XmlReader;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 1
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 69
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 56
    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    .line 70
    return-void
.end method

.method private castProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 430
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    if-nez p3, :cond_0

    .line 431
    return-object p2

    .line 432
    :cond_0
    const-string v0, "int"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 434
    :cond_1
    const-string v0, "float"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 436
    :cond_2
    const-string v0, "bool"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 438
    :cond_3
    const-string v0, "color"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 440
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "opaqueColor":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "alpha":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    return-object v2

    .line 444
    .end local v0    # "alpha":Ljava/lang/String;
    .end local v1    # "opaqueColor":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type given for property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", given : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supported : string, bool, int, float, color"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "path"    # Ljava/lang/String;

    .line 531
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\\/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 533
    .local v1, "result":Lcom/badlogic/gdx/files/FileHandle;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "token":Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_1

    .line 538
    :cond_0
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 540
    .end local v2    # "token":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 541
    :cond_1
    return-object v1
.end method

.method public static getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I
    .locals 13
    .param p0, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 471
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 472
    .local v0, "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v1, "encoding"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 476
    mul-int v3, p1, p2

    new-array v3, v3, [I

    .line 477
    .local v3, "ids":[I
    const-string v4, "csv"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 480
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v3, v4

    .line 479
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    .end local v2    # "array":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    goto/16 :goto_6

    .line 483
    :cond_1
    const-string v4, "base64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ") for TMX Layer Data"

    if-eqz v4, :cond_a

    .line 484
    const/4 v4, 0x0

    .line 486
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v6, "compression"

    invoke-virtual {v0, v6, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "compression":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 488
    .local v6, "bytes":[B
    if-nez v2, :cond_2

    .line 489
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v5

    goto :goto_1

    .line 490
    :cond_2
    const-string v7, "gzip"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 491
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v9, v6

    invoke-direct {v7, v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_1

    .line 492
    :cond_3
    const-string/jumbo v7, "zlib"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 493
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/util/zip/InflaterInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v8}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 497
    :goto_1
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 498
    .local v5, "temp":[B
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_2
    if-ge v7, p2, :cond_8

    .line 499
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_3
    if-ge v8, p1, :cond_7

    .line 500
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 501
    .local v9, "read":I
    :goto_4
    array-length v10, v5

    if-ge v9, v10, :cond_5

    .line 502
    array-length v10, v5

    sub-int/2addr v10, v9

    invoke-virtual {v4, v5, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 503
    .local v10, "curr":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    goto :goto_5

    .line 504
    :cond_4
    add-int/2addr v9, v10

    .line 505
    .end local v10    # "curr":I
    goto :goto_4

    .line 506
    :cond_5
    :goto_5
    array-length v10, v5

    if-ne v9, v10, :cond_6

    .line 508
    mul-int v10, v7, p1

    add-int/2addr v10, v8

    const/4 v11, 0x0

    aget-byte v11, v5, v11

    invoke-static {v11}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v11

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    invoke-static {v12}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v12

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/4 v12, 0x2

    aget-byte v12, v5, v12

    .line 509
    invoke-static {v12}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v12

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/4 v12, 0x3

    aget-byte v12, v5, v12

    invoke-static {v12}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->unsignedByteToInt(B)I

    move-result v12

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    aput v11, v3, v10

    .line 499
    .end local v9    # "read":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 507
    .restart local v9    # "read":I
    :cond_6
    new-instance v10, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v11, "Error Reading TMX Layer Data: Premature end of tile data"

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "ids":[I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local p0    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local p1    # "width":I
    .end local p2    # "height":I
    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    .end local v8    # "x":I
    .end local v9    # "read":I
    .restart local v0    # "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v3    # "ids":[I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local p0    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 515
    .end local v2    # "compression":Ljava/lang/String;
    .end local v5    # "temp":[B
    .end local v6    # "bytes":[B
    .end local v7    # "y":I
    :cond_8
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 516
    nop

    .line 517
    .end local v4    # "is":Ljava/io/InputStream;
    nop

    .line 523
    :goto_6
    return-object v3

    .line 495
    .restart local v2    # "compression":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "bytes":[B
    :cond_9
    :try_start_1
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognised compression ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "ids":[I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local p0    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local p1    # "width":I
    .end local p2    # "height":I
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    .end local v2    # "compression":Ljava/lang/String;
    .end local v6    # "bytes":[B
    .restart local v0    # "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v3    # "ids":[I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local p0    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :catchall_0
    move-exception v2

    goto :goto_7

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error Reading TMX Layer Data - IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "ids":[I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local p0    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local p1    # "width":I
    .end local p2    # "height":I
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "data":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v3    # "ids":[I
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local p0    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :goto_7
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 520
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_a
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognised encoding ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 474
    .end local v3    # "ids":[I
    :cond_b
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unsupported encoding (XML) for TMX Layer Data"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static unsignedByteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .line 527
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method protected addAnimatedTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;I)V
    .locals 6
    .param p1, "tileSet"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .param p2, "tile"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .param p3, "tileElement"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p4, "firstgid"    # I

    .line 651
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    const-string v0, "animation"

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 652
    .local v0, "animationElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v0, :cond_1

    .line 653
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 654
    .local v1, "staticTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    new-instance v2, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    .line 655
    .local v2, "intervals":Lcom/badlogic/gdx/utils/IntArray;
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 656
    .local v4, "frameElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string/jumbo v5, "tileid"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, p4

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 657
    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 658
    .end local v4    # "frameElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    goto :goto_0

    .line 660
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    invoke-direct {v3, v2, v1}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V

    .line 661
    .local v3, "animatedTile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    invoke-interface {p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->setId(I)V

    .line 662
    invoke-interface {p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result v4

    invoke-virtual {p1, v4, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 664
    .end local v1    # "staticTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    .end local v2    # "intervals":Lcom/badlogic/gdx/utils/IntArray;
    .end local v3    # "animatedTile":Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    :cond_1
    return-void
.end method

.method protected addStaticTiledMapTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V
    .locals 2
    .param p1, "tileSet"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "tileId"    # I
    .param p4, "offsetX"    # F
    .param p5, "offsetY"    # F

    .line 668
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 669
    .local v0, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    invoke-interface {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    .line 670
    invoke-interface {v0, p4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    .line 671
    iget-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v1, :cond_0

    neg-float v1, p5

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    .line 672
    invoke-virtual {p1, p3, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    .line 673
    return-void
.end method

.method protected abstract addStaticTiles(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIIIILjava/lang/String;IILjava/lang/String;IILcom/badlogic/gdx/files/FileHandle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/ImageResolver;",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")V"
        }
    .end annotation
.end method

.method protected addTileObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 4
    .param p1, "tile"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .param p2, "tileElement"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 642
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    const-string v0, "objectgroup"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 643
    .local v0, "objectgroupElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v0, :cond_0

    .line 644
    const-string v1, "object"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 645
    .local v2, "objectElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {p0, v3, p1, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 646
    .end local v2    # "objectElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    goto :goto_0

    .line 648
    :cond_0
    return-void
.end method

.method protected addTileProperties(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 4
    .param p1, "tile"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .param p2, "tileElement"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 627
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    const-string v0, "terrain"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "terrain":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 629
    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    :cond_0
    const-string v0, "probability"

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "probability":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 633
    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    :cond_1
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    .line 636
    .local v0, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v0, :cond_2

    .line 637
    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 639
    :cond_2
    return-void
.end method

.method protected createTileLayerCell(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .locals 3
    .param p1, "flipHorizontally"    # Z
    .param p2, "flipVertically"    # Z
    .param p3, "flipDiagonally"    # Z

    .line 450
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    .line 451
    .local v0, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    if-eqz p3, :cond_3

    .line 452
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 453
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 454
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    .line 455
    :cond_0
    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    .line 457
    :cond_1
    if-eqz p2, :cond_2

    .line 458
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 461
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 465
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 467
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    .line 35
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    check-cast p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    .local p3, "parameter":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;, "TP;"
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 76
    new-instance v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    .line 77
    .local v0, "textureParameter":Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;
    if-eqz p3, :cond_0

    .line 78
    iget-boolean v1, p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->generateMipMaps:Z

    iput-boolean v1, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    .line 79
    iget-object v1, p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v1, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 80
    iget-object v1, p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v1, v0, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 83
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getDependencyAssetDescriptors(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getDependencyAssetDescriptors(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method protected loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 6
    .param p1, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 297
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "name":Ljava/lang/String;
    const-string v1, "opacity"

    const-string v2, "1.0"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 299
    .local v1, "opacity":F
    const-string/jumbo v2, "visible"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 300
    .local v2, "visible":Z
    const-string v3, "offsetx"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v3

    .line 301
    .local v3, "offsetX":F
    const-string v5, "offsety"

    invoke-virtual {p2, v5, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v4

    .line 303
    .local v4, "offsetY":F
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/maps/MapLayer;->setName(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/maps/MapLayer;->setOpacity(F)V

    .line 305
    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/maps/MapLayer;->setVisible(Z)V

    .line 306
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/maps/MapLayer;->setOffsetX(F)V

    .line 307
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/maps/MapLayer;->setOffsetY(F)V

    .line 308
    return-void
.end method

.method protected loadImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 7
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "parentLayers"    # Lcom/badlogic/gdx/maps/MapLayers;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p4, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .line 257
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imagelayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "x":F
    const/4 v1, 0x0

    .line 260
    .local v1, "y":F
    const-string v2, "offsetx"

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "0"

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {p3, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 263
    :cond_0
    const-string/jumbo v2, "x"

    invoke-virtual {p3, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 265
    :goto_0
    const-string v2, "offsety"

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {p3, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_1

    .line 268
    :cond_1
    const-string/jumbo v2, "y"

    invoke-virtual {p3, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 270
    :goto_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    int-to-float v2, v2

    sub-float v1, v2, v1

    .line 272
    :cond_2
    const/4 v2, 0x0

    .line 274
    .local v2, "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    const-string v3, "image"

    invoke-virtual {p3, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 276
    .local v3, "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v3, :cond_3

    .line 277
    const-string v4, "source"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "source":Ljava/lang/String;
    invoke-static {p4, v4}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 279
    .local v5, "handle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p5, v6}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    .line 280
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    .line 283
    .end local v4    # "source":Ljava/lang/String;
    .end local v5    # "handle":Lcom/badlogic/gdx/files/FileHandle;
    :cond_3
    new-instance v4, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-direct {v4, v2, v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    .line 285
    .local v4, "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
    invoke-virtual {p0, v4, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 287
    const-string v5, "properties"

    invoke-virtual {p3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    .line 288
    .local v5, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v5, :cond_4

    .line 289
    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 292
    :cond_4
    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 294
    .end local v0    # "x":F
    .end local v1    # "y":F
    .end local v2    # "texture":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v3    # "image":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;
    .end local v5    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_5
    return-void
.end method

.method protected loadLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "parentLayers"    # Lcom/badlogic/gdx/maps/MapLayers;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p4, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .line 168
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "name":Ljava/lang/String;
    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadLayerGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    goto :goto_0

    .line 171
    :cond_0
    const-string v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    .line 173
    :cond_1
    const-string v1, "objectgroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "imagelayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    .line 178
    :cond_3
    :goto_0
    return-void
.end method

.method protected loadLayerGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 13
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "parentLayers"    # Lcom/badlogic/gdx/maps/MapLayers;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p4, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p5, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .line 181
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    move-object v6, p0

    move-object/from16 v7, p3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Lcom/badlogic/gdx/maps/MapGroupLayer;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapGroupLayer;-><init>()V

    move-object v8, v0

    .line 183
    .local v8, "groupLayer":Lcom/badlogic/gdx/maps/MapGroupLayer;
    invoke-virtual {p0, v8, v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 185
    const-string v0, "properties"

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    .line 186
    .local v9, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v9, :cond_0

    .line 187
    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapGroupLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 190
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v10

    move v11, v0

    .end local v0    # "i":I
    .local v10, "j":I
    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 191
    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v12

    .line 192
    .local v12, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapGroupLayer;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, v12

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    .line 190
    .end local v12    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 195
    .end local v10    # "j":I
    .end local v11    # "i":I
    :cond_1
    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapGroupLayer;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapLayer;

    .line 196
    .local v1, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/maps/MapLayer;->setParent(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 197
    .end local v1    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    goto :goto_1

    .line 199
    :cond_2
    move-object v0, p2

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_2

    .line 181
    .end local v8    # "groupLayer":Lcom/badlogic/gdx/maps/MapGroupLayer;
    .end local v9    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_3
    move-object v0, p2

    .line 201
    :goto_2
    return-void
.end method

.method protected loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "layer"    # Lcom/badlogic/gdx/maps/MapLayer;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 311
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual {p2}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapObjects;Lcom/badlogic/gdx/utils/XmlReader$Element;F)V

    .line 312
    return-void
.end method

.method protected loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapObjects;Lcom/badlogic/gdx/utils/XmlReader$Element;F)V
    .locals 28
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "objects"    # Lcom/badlogic/gdx/maps/MapObjects;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p4, "heightInPixels"    # F

    .line 319
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "object"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 320
    const/4 v2, 0x0

    .line 322
    .local v2, "object":Lcom/badlogic/gdx/maps/MapObject;
    iget-boolean v3, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileWidth:I

    int-to-float v3, v3

    div-float v3, v4, v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 323
    .local v3, "scaleX":F
    :goto_0
    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 325
    .local v4, "scaleY":F
    :cond_1
    const-string/jumbo v5, "x"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v7

    mul-float/2addr v7, v3

    .line 326
    .local v7, "x":F
    iget-boolean v8, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    const-string/jumbo v9, "y"

    if-eqz v8, :cond_2

    invoke-virtual {v1, v9, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v8

    sub-float v8, p4, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v9, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v8

    :goto_1
    mul-float/2addr v8, v4

    .line 328
    .local v8, "y":F
    const-string/jumbo v10, "width"

    invoke-virtual {v1, v10, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v11

    mul-float/2addr v11, v3

    .line 329
    .local v11, "width":F
    const-string v12, "height"

    invoke-virtual {v1, v12, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v13

    mul-float/2addr v13, v4

    .line 331
    .local v13, "height":F
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v14

    if-lez v14, :cond_a

    .line 332
    const/4 v14, 0x0

    .line 333
    .local v14, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v6, "polygon"

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v6

    move-object v14, v6

    const/16 v18, -0x1

    const-string v15, ","

    move-object/from16 v20, v2

    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .local v20, "object":Lcom/badlogic/gdx/maps/MapObject;
    const-string v2, " "

    move-object/from16 v21, v9

    const-string v9, "points"

    if-eqz v6, :cond_5

    .line 334
    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "points":[Ljava/lang/String;
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    .line 336
    .local v6, "vertices":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v22, v14

    .end local v14    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v22, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    array-length v14, v2

    if-ge v9, v14, :cond_4

    .line 337
    aget-object v14, v2, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 338
    .local v14, "point":[Ljava/lang/String;
    mul-int/lit8 v23, v9, 0x2

    const/16 v19, 0x0

    aget-object v24, v14, v19

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    mul-float v24, v24, v3

    aput v24, v6, v23

    .line 339
    mul-int/lit8 v23, v9, 0x2

    const/16 v17, 0x1

    add-int/lit8 v23, v23, 0x1

    aget-object v24, v14, v17

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    mul-float v24, v24, v4

    move-object/from16 v25, v2

    .end local v2    # "points":[Ljava/lang/String;
    .local v25, "points":[Ljava/lang/String;
    iget-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v2, :cond_3

    move/from16 v2, v18

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    :goto_3
    int-to-float v2, v2

    mul-float v24, v24, v2

    aput v24, v6, v23

    .line 336
    .end local v14    # "point":[Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, v22

    move-object/from16 v2, v25

    goto :goto_2

    .end local v25    # "points":[Ljava/lang/String;
    .restart local v2    # "points":[Ljava/lang/String;
    :cond_4
    move-object/from16 v25, v2

    .line 341
    .end local v2    # "points":[Ljava/lang/String;
    .end local v9    # "i":I
    .restart local v25    # "points":[Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    .line 342
    .local v2, "polygon":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    .line 343
    new-instance v9, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;

    invoke-direct {v9, v2}, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;-><init>(Lcom/badlogic/gdx/math/Polygon;)V

    move-object v2, v9

    .line 344
    .end local v6    # "vertices":[F
    .end local v20    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v25    # "points":[Ljava/lang/String;
    .local v2, "object":Lcom/badlogic/gdx/maps/MapObject;
    goto/16 :goto_7

    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v22    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v14, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v20    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_5
    move-object/from16 v22, v14

    .end local v14    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v22    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v6, "polyline"

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v6

    move-object v14, v6

    .end local v22    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v14    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v6, :cond_8

    .line 345
    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "points":[Ljava/lang/String;
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    .line 347
    .restart local v6    # "vertices":[F
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move-object/from16 v22, v14

    .end local v14    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v22    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    array-length v14, v2

    if-ge v9, v14, :cond_7

    .line 348
    aget-object v14, v2, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "point":[Ljava/lang/String;
    mul-int/lit8 v23, v9, 0x2

    const/16 v19, 0x0

    aget-object v24, v14, v19

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    mul-float v24, v24, v3

    aput v24, v6, v23

    .line 350
    mul-int/lit8 v23, v9, 0x2

    const/16 v17, 0x1

    add-int/lit8 v23, v23, 0x1

    aget-object v24, v14, v17

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    mul-float v24, v24, v4

    move-object/from16 v25, v2

    .end local v2    # "points":[Ljava/lang/String;
    .restart local v25    # "points":[Ljava/lang/String;
    iget-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v2, :cond_6

    move/from16 v2, v18

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    :goto_5
    int-to-float v2, v2

    mul-float v24, v24, v2

    aput v24, v6, v23

    .line 347
    .end local v14    # "point":[Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, v22

    move-object/from16 v2, v25

    goto :goto_4

    .end local v25    # "points":[Ljava/lang/String;
    .restart local v2    # "points":[Ljava/lang/String;
    :cond_7
    move-object/from16 v25, v2

    .line 352
    .end local v2    # "points":[Ljava/lang/String;
    .end local v9    # "i":I
    .restart local v25    # "points":[Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/math/Polyline;

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/math/Polyline;-><init>([F)V

    .line 353
    .local v2, "polyline":Lcom/badlogic/gdx/math/Polyline;
    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/math/Polyline;->setPosition(FF)V

    .line 354
    new-instance v9, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;

    invoke-direct {v9, v2}, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;-><init>(Lcom/badlogic/gdx/math/Polyline;)V

    move-object v2, v9

    .line 355
    .end local v6    # "vertices":[F
    .end local v20    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v25    # "points":[Ljava/lang/String;
    .local v2, "object":Lcom/badlogic/gdx/maps/MapObject;
    goto :goto_7

    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v22    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v14, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v20    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_8
    move-object/from16 v22, v14

    .end local v14    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local v22    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v2, "ellipse"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    move-object v6, v2

    .end local v22    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v6, "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v2, :cond_b

    .line 356
    new-instance v2, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;

    iget-boolean v9, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v9, :cond_9

    sub-float v9, v8, v13

    goto :goto_6

    :cond_9
    move v9, v8

    :goto_6
    invoke-direct {v2, v7, v9, v11, v13}, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;-><init>(FFFF)V

    .end local v20    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .restart local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto :goto_7

    .line 331
    .end local v6    # "child":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v21, v9

    .line 359
    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .restart local v20    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :cond_b
    move-object/from16 v2, v20

    .end local v20    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .restart local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    :goto_7
    const-string v6, "rotation"

    const/4 v9, 0x0

    if-nez v2, :cond_11

    .line 360
    const/4 v14, 0x0

    .line 361
    .local v14, "gid":Ljava/lang/String;
    const-string v15, "gid"

    invoke-virtual {v1, v15, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    if-eqz v18, :cond_f

    .line 362
    move-object/from16 v18, v10

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v9, v9

    .line 363
    .local v9, "id":I
    const/high16 v10, -0x80000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    .line 364
    .local v10, "flipHorizontally":Z
    :goto_8
    const/high16 v22, 0x40000000    # 2.0f

    and-int v22, v9, v22

    if-eqz v22, :cond_d

    const/16 v22, 0x1

    goto :goto_9

    :cond_d
    const/16 v22, 0x0

    :goto_9
    move/from16 v23, v22

    .line 366
    .local v23, "flipVertically":Z
    move-object/from16 v22, v2

    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .local v22, "object":Lcom/badlogic/gdx/maps/MapObject;
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v2

    const v24, 0x1fffffff

    move-object/from16 v25, v14

    .end local v14    # "gid":Ljava/lang/String;
    .local v25, "gid":Ljava/lang/String;
    and-int v14, v9, v24

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v2

    .line 367
    .local v2, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    new-instance v14, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;

    move-object/from16 v24, v5

    move/from16 v5, v23

    .end local v23    # "flipVertically":Z
    .local v5, "flipVertically":Z
    invoke-direct {v14, v2, v10, v5}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;ZZ)V

    .line 368
    .local v14, "tiledMapTileMapObject":Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;
    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v23

    .line 369
    .local v23, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    move-object/from16 v26, v2

    .end local v2    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .local v26, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    move/from16 v27, v5

    .end local v5    # "flipVertically":Z
    .local v27, "flipVertically":Z
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v15, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->setX(F)V

    .line 371
    iget-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v2, :cond_e

    move v2, v8

    goto :goto_a

    :cond_e
    sub-float v2, v8, v13

    :goto_a
    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->setY(F)V

    .line 372
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v5, v18

    invoke-virtual {v1, v5, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v2

    .line 373
    .local v2, "objectWidth":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v15

    .line 374
    .local v15, "objectHeight":F
    move/from16 v18, v9

    .end local v9    # "id":I
    .local v18, "id":I
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v2, v9

    mul-float/2addr v9, v3

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->setScaleX(F)V

    .line 375
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v15, v9

    mul-float/2addr v9, v4

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->setScaleY(F)V

    .line 376
    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v9

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;->setRotation(F)V

    .line 377
    move-object v2, v14

    .line 378
    .end local v10    # "flipHorizontally":Z
    .end local v14    # "tiledMapTileMapObject":Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;
    .end local v15    # "objectHeight":F
    .end local v18    # "id":I
    .end local v22    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v23    # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .end local v26    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v27    # "flipVertically":Z
    .local v2, "object":Lcom/badlogic/gdx/maps/MapObject;
    goto :goto_c

    .line 379
    .end local v25    # "gid":Ljava/lang/String;
    .local v14, "gid":Ljava/lang/String;
    :cond_f
    move-object/from16 v22, v2

    move-object/from16 v24, v5

    move-object v5, v10

    move-object/from16 v25, v14

    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v14    # "gid":Ljava/lang/String;
    .restart local v22    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .restart local v25    # "gid":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;

    iget-boolean v9, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v9, :cond_10

    sub-float v9, v8, v13

    goto :goto_b

    :cond_10
    move v9, v8

    :goto_b
    invoke-direct {v2, v7, v9, v11, v13}, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;-><init>(FFFF)V

    .end local v22    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .restart local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    goto :goto_c

    .line 359
    .end local v25    # "gid":Ljava/lang/String;
    :cond_11
    move-object/from16 v22, v2

    move-object/from16 v24, v5

    move-object v5, v10

    .line 382
    :goto_c
    const-string v9, "name"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/maps/MapObject;->setName(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, v6, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "rotation":Ljava/lang/String;
    if-eqz v9, :cond_12

    .line 385
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v10, v6, v14}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_12
    const-string/jumbo v6, "type"

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 388
    .local v10, "type":Ljava/lang/String;
    if-eqz v10, :cond_13

    .line 389
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v14

    invoke-virtual {v14, v6, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    :cond_13
    const-string v6, "id"

    const/4 v14, 0x0

    invoke-virtual {v1, v6, v14}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v15

    .line 392
    .local v15, "id":I
    if-eqz v15, :cond_14

    .line 393
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v14

    move/from16 v16, v3

    .end local v3    # "scaleX":F
    .local v16, "scaleX":F
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v6, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 392
    .end local v16    # "scaleX":F
    .restart local v3    # "scaleX":F
    :cond_14
    move/from16 v16, v3

    .line 395
    .end local v3    # "scaleX":F
    .restart local v16    # "scaleX":F
    :goto_d
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v14, v24

    invoke-virtual {v3, v14, v6}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;

    if-eqz v3, :cond_15

    .line 398
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v14, v21

    invoke-virtual {v3, v14, v6}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    .line 400
    :cond_15
    move-object/from16 v14, v21

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    iget-boolean v6, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v6, :cond_16

    sub-float v6, v8, v13

    goto :goto_e

    :cond_16
    move v6, v8

    :goto_e
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v14, v6}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    :goto_f
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v12, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    const-string/jumbo v3, "visible"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_17

    goto :goto_10

    :cond_17
    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/maps/MapObject;->setVisible(Z)V

    .line 405
    const-string v3, "properties"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    .line 406
    .local v3, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v3, :cond_18

    .line 407
    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 409
    :cond_18
    move-object/from16 v5, p2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/maps/MapObjects;->add(Lcom/badlogic/gdx/maps/MapObject;)V

    goto :goto_11

    .line 319
    .end local v2    # "object":Lcom/badlogic/gdx/maps/MapObject;
    .end local v3    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "scaleY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "width":F
    .end local v13    # "height":F
    .end local v15    # "id":I
    .end local v16    # "scaleX":F
    :cond_19
    move-object/from16 v5, p2

    .line 411
    :goto_11
    return-void
.end method

.method protected loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 2
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "tile"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 315
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-interface {p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v0

    invoke-interface {p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapObjects;Lcom/badlogic/gdx/utils/XmlReader$Element;F)V

    .line 316
    return-void
.end method

.method protected loadObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "parentLayers"    # Lcom/badlogic/gdx/maps/MapLayers;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 240
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectgroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    new-instance v0, Lcom/badlogic/gdx/maps/MapLayer;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    .line 242
    .local v0, "layer":Lcom/badlogic/gdx/maps/MapLayer;
    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 243
    const-string v1, "properties"

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    .line 244
    .local v1, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 248
    :cond_0
    const-string v2, "object"

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 249
    .local v3, "objectElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    invoke-virtual {p0, p1, v0, v3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadObject(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 250
    .end local v3    # "objectElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    .line 254
    .end local v0    # "layer":Lcom/badlogic/gdx/maps/MapLayer;
    .end local v1    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_2
    return-void
.end method

.method protected loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 6
    .param p1, "properties"    # Lcom/badlogic/gdx/maps/MapProperties;
    .param p2, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 414
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    if-nez p2, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    const-string v0, "property"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 417
    .local v1, "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v2, "name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "type":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 421
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v4

    .line 423
    :cond_1
    invoke-direct {p0, v2, v4, v3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->castProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 424
    .local v5, "castValue":Ljava/lang/Object;
    invoke-virtual {p1, v2, v5}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    .end local v1    # "property":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "castValue":Ljava/lang/Object;
    goto :goto_0

    .line 427
    :cond_2
    return-void
.end method

.method protected loadTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 18
    .param p1, "map"    # Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .param p2, "parentLayers"    # Lcom/badlogic/gdx/maps/MapLayers;
    .param p3, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 204
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    const-string/jumbo v2, "width"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, "width":I
    const-string v4, "height"

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    .line 207
    .local v4, "height":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    const-string/jumbo v7, "tilewidth"

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 208
    .local v5, "tileWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    const-string/jumbo v8, "tileheight"

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 209
    .local v6, "tileHeight":I
    new-instance v7, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-direct {v7, v2, v4, v5, v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;-><init>(IIII)V

    .line 211
    .local v7, "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    invoke-virtual {v0, v7, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadBasicLayerInfo(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 213
    invoke-static {v1, v2, v4}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I

    move-result-object v8

    .line 214
    .local v8, "ids":[I
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v9

    .line 215
    .local v9, "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_0
    if-ge v10, v4, :cond_6

    .line 216
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    if-ge v11, v2, :cond_5

    .line 217
    mul-int v12, v10, v2

    add-int/2addr v12, v11

    aget v12, v8, v12

    .line 218
    .local v12, "id":I
    const/high16 v13, -0x80000000

    and-int/2addr v13, v12

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    move v13, v14

    goto :goto_2

    :cond_0
    move v13, v3

    .line 219
    .local v13, "flipHorizontally":Z
    :goto_2
    const/high16 v15, 0x40000000    # 2.0f

    and-int/2addr v15, v12

    if-eqz v15, :cond_1

    move v15, v14

    goto :goto_3

    :cond_1
    move v15, v3

    .line 220
    .local v15, "flipVertically":Z
    :goto_3
    const/high16 v16, 0x20000000

    and-int v16, v12, v16

    if-eqz v16, :cond_2

    goto :goto_4

    :cond_2
    move v14, v3

    .line 222
    .local v14, "flipDiagonally":Z
    :goto_4
    const v16, 0x1fffffff

    and-int v3, v12, v16

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v3

    .line 223
    .local v3, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v3, :cond_4

    .line 224
    move/from16 v16, v2

    .end local v2    # "width":I
    .local v16, "width":I
    invoke-virtual {v0, v13, v15, v14}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->createTileLayerCell(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v2

    .line 225
    .local v2, "cell":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    .line 226
    move-object/from16 v17, v3

    .end local v3    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .local v17, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    iget-boolean v3, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, v4, -0x1

    sub-int/2addr v3, v10

    goto :goto_5

    :cond_3
    move v3, v10

    :goto_5
    invoke-virtual {v7, v11, v3, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    goto :goto_6

    .line 223
    .end local v16    # "width":I
    .end local v17    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .local v2, "width":I
    .restart local v3    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    :cond_4
    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 216
    .end local v2    # "width":I
    .end local v3    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v12    # "id":I
    .end local v13    # "flipHorizontally":Z
    .end local v14    # "flipDiagonally":Z
    .end local v15    # "flipVertically":Z
    .restart local v16    # "width":I
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    const/4 v3, 0x0

    goto :goto_1

    .end local v16    # "width":I
    .restart local v2    # "width":I
    :cond_5
    move/from16 v16, v2

    .line 215
    .end local v2    # "width":I
    .end local v11    # "x":I
    .restart local v16    # "width":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_0

    .end local v16    # "width":I
    .restart local v2    # "width":I
    :cond_6
    move/from16 v16, v2

    .line 231
    .end local v2    # "width":I
    .end local v10    # "y":I
    .restart local v16    # "width":I
    const-string v2, "properties"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    .line 232
    .local v2, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v2, :cond_7

    .line 233
    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 235
    :cond_7
    move-object/from16 v3, p2

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_7

    .line 204
    .end local v2    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v4    # "height":I
    .end local v5    # "tileWidth":I
    .end local v6    # "tileHeight":I
    .end local v7    # "layer":Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
    .end local v8    # "ids":[I
    .end local v9    # "tilesets":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .end local v16    # "width":I
    :cond_8
    move-object/from16 v3, p2

    .line 237
    :goto_7
    return-void
.end method

.method protected loadTileSet(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 38
    .param p1, "element"    # Lcom/badlogic/gdx/utils/XmlReader$Element;
    .param p2, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;

    .line 545
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tileset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 546
    const-string v2, ""

    .line 547
    .local v2, "imageSource":Ljava/lang/String;
    const/4 v3, 0x0

    .line 548
    .local v3, "imageWidth":I
    const/4 v4, 0x0

    .line 549
    .local v4, "imageHeight":I
    const/4 v5, 0x0

    .line 551
    .local v5, "image":Lcom/badlogic/gdx/files/FileHandle;
    const-string v0, "source"

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 552
    .local v13, "source":Ljava/lang/String;
    const-string v7, "height"

    const-string/jumbo v8, "width"

    const-string v9, "image"

    const/4 v12, 0x0

    if-eqz v13, :cond_1

    .line 553
    invoke-static {v14, v13}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v10

    .line 555
    .local v10, "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_0
    iget-object v11, v15, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->xml:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v11
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v11

    .line 556
    .end local p1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v1, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :try_start_1
    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    .line 557
    .local v9, "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v9, :cond_0

    .line 558
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 559
    invoke-virtual {v9, v8, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v0

    move v3, v0

    .line 560
    invoke-virtual {v9, v7, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    .line 561
    invoke-static {v10, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    .line 565
    .end local v9    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_0
    nop

    .line 566
    .end local v10    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    move-object v0, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    goto :goto_1

    .line 563
    .restart local v10    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .restart local p1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :catch_1
    move-exception v0

    .line 564
    .end local p1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v0, "e":Lcom/badlogic/gdx/utils/SerializationException;
    .restart local v1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :goto_0
    new-instance v6, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v7, "Error parsing external tileset."

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 567
    .end local v0    # "e":Lcom/badlogic/gdx/utils/SerializationException;
    .end local v1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v10    # "tsx":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :cond_1
    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    .line 568
    .restart local v9    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v9, :cond_2

    .line 569
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {v9, v8, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    .line 571
    invoke-virtual {v9, v7, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    .line 572
    invoke-static {v14, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getRelativeFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    move-object v0, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    goto :goto_1

    .line 568
    :cond_2
    move-object v0, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    .line 576
    .end local v2    # "imageSource":Ljava/lang/String;
    .end local v3    # "imageWidth":I
    .end local v4    # "imageHeight":I
    .end local v5    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9    # "imageElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local p1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v0, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v20, "imageSource":Ljava/lang/String;
    .local v21, "imageWidth":I
    .local v22, "imageHeight":I
    .local v23, "image":Lcom/badlogic/gdx/files/FileHandle;
    :goto_1
    const-string v1, "name"

    invoke-virtual {v0, v1, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 577
    .local v11, "name":Ljava/lang/String;
    const/4 v1, 0x1

    const-string v2, "firstgid"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    .line 578
    .local v10, "firstgid":I
    const-string/jumbo v1, "tilewidth"

    invoke-virtual {v0, v1, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v24

    .line 579
    .local v24, "tilewidth":I
    const-string/jumbo v1, "tileheight"

    invoke-virtual {v0, v1, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v25

    .line 580
    .local v25, "tileheight":I
    const-string v1, "spacing"

    invoke-virtual {v0, v1, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v26

    .line 581
    .local v26, "spacing":I
    const-string v1, "margin"

    invoke-virtual {v0, v1, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v27

    .line 583
    .local v27, "margin":I
    const-string/jumbo v1, "tileoffset"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    .line 584
    .local v9, "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const/4 v1, 0x0

    .line 585
    .local v1, "offsetX":I
    const/4 v3, 0x0

    .line 586
    .local v3, "offsetY":I
    if-eqz v9, :cond_3

    .line 587
    const-string/jumbo v4, "x"

    invoke-virtual {v9, v4, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v1

    .line 588
    const-string/jumbo v4, "y"

    invoke-virtual {v9, v4, v12}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    move/from16 v28, v1

    move/from16 v29, v3

    goto :goto_2

    .line 586
    :cond_3
    move/from16 v28, v1

    move/from16 v29, v3

    .line 591
    .end local v1    # "offsetX":I
    .end local v3    # "offsetY":I
    .local v28, "offsetX":I
    .local v29, "offsetY":I
    :goto_2
    new-instance v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    move-object v8, v1

    .line 594
    .local v8, "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v7

    .line 596
    .local v7, "tileSetProperties":Lcom/badlogic/gdx/maps/MapProperties;
    const-string v1, "properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    .line 597
    .local v5, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v5, :cond_4

    .line 598
    invoke-virtual {v15, v7, v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 600
    :cond_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    const-string v1, "tile"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v30

    .local v30, "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    move-object/from16 v6, v30

    .line 605
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v8

    move-object/from16 v31, v5

    .end local v5    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v31, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object v5, v0

    move-object/from16 v32, v7

    .end local v7    # "tileSetProperties":Lcom/badlogic/gdx/maps/MapProperties;
    .local v32, "tileSetProperties":Lcom/badlogic/gdx/maps/MapProperties;
    move-object v7, v11

    move-object/from16 p1, v0

    move-object v0, v8

    .end local v8    # "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .local v0, "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .restart local p1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move v8, v10

    move-object/from16 v33, v9

    .end local v9    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v33, "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move/from16 v9, v24

    move-object/from16 v34, v0

    move v0, v10

    .end local v10    # "firstgid":I
    .local v0, "firstgid":I
    .local v34, "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    move/from16 v10, v25

    move-object/from16 v35, v11

    .end local v11    # "name":Ljava/lang/String;
    .local v35, "name":Ljava/lang/String;
    move/from16 v11, v26

    move/from16 v36, v0

    move v0, v12

    .end local v0    # "firstgid":I
    .local v36, "firstgid":I
    move/from16 v12, v27

    move-object/from16 v37, v13

    .end local v13    # "source":Ljava/lang/String;
    .local v37, "source":Ljava/lang/String;
    move/from16 v14, v28

    move/from16 v15, v29

    move-object/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    move-object/from16 v19, v23

    invoke-virtual/range {v1 .. v19}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->addStaticTiles(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIIIILjava/lang/String;IILjava/lang/String;IILcom/badlogic/gdx/files/FileHandle;)V

    .line 608
    invoke-virtual/range {v30 .. v30}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 609
    .local v2, "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    .line 610
    .local v3, "localtid":I
    add-int v10, v36, v3

    move-object/from16 v4, v34

    .end local v34    # "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .local v4, "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v5

    .line 611
    .local v5, "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    if-eqz v5, :cond_5

    .line 612
    move-object/from16 v6, p0

    invoke-virtual {v6, v5, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->addTileProperties(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 613
    invoke-virtual {v6, v5, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->addTileObjectGroup(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 614
    move/from16 v7, v36

    .end local v36    # "firstgid":I
    .local v7, "firstgid":I
    invoke-virtual {v6, v4, v5, v2, v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->addAnimatedTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;I)V

    goto :goto_4

    .line 611
    .end local v7    # "firstgid":I
    .restart local v36    # "firstgid":I
    :cond_5
    move-object/from16 v6, p0

    move/from16 v7, v36

    .line 616
    .end local v2    # "tileElement":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v3    # "localtid":I
    .end local v5    # "tile":Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .end local v36    # "firstgid":I
    .restart local v7    # "firstgid":I
    :goto_4
    move-object/from16 v34, v4

    move/from16 v36, v7

    goto :goto_3

    .line 618
    .end local v4    # "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v7    # "firstgid":I
    .restart local v34    # "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .restart local v36    # "firstgid":I
    :cond_6
    move-object/from16 v6, p0

    move-object/from16 v4, v34

    move/from16 v7, v36

    .end local v34    # "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v36    # "firstgid":I
    .restart local v4    # "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .restart local v7    # "firstgid":I
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    move-object/from16 v1, p1

    goto :goto_5

    .line 545
    .end local v4    # "tileSet":Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .end local v7    # "firstgid":I
    .end local v20    # "imageSource":Ljava/lang/String;
    .end local v21    # "imageWidth":I
    .end local v22    # "imageHeight":I
    .end local v23    # "image":Lcom/badlogic/gdx/files/FileHandle;
    .end local v24    # "tilewidth":I
    .end local v25    # "tileheight":I
    .end local v26    # "spacing":I
    .end local v27    # "margin":I
    .end local v28    # "offsetX":I
    .end local v29    # "offsetY":I
    .end local v30    # "tileElements":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    .end local v31    # "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v32    # "tileSetProperties":Lcom/badlogic/gdx/maps/MapProperties;
    .end local v33    # "offset":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .end local v35    # "name":Ljava/lang/String;
    .end local v37    # "source":Ljava/lang/String;
    :cond_7
    move-object v6, v15

    .line 620
    .end local p1    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    .local v1, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    :goto_5
    return-void
.end method

.method protected loadTiledMap(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 23
    .param p1, "tmxFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "imageResolver"    # Lcom/badlogic/gdx/maps/ImageResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;",
            "Lcom/badlogic/gdx/maps/ImageResolver;",
            ")",
            "Lcom/badlogic/gdx/maps/tiled/TiledMap;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;, "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<TP;>;"
    .local p2, "parameter":Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;, "TP;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    iput-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    .line 99
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 100
    iget-boolean v2, v7, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->convertObjectToTileSpace:Z

    iput-boolean v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    .line 101
    iget-boolean v2, v7, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->flipY:Z

    iput-boolean v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    goto :goto_0

    .line 103
    :cond_0
    iput-boolean v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->convertObjectToTileSpace:Z

    .line 104
    iput-boolean v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->flipY:Z

    .line 107
    :goto_0
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v3, "orientation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "mapOrientation":Ljava/lang/String;
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string/jumbo v5, "width"

    invoke-virtual {v2, v5, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    .line 109
    .local v9, "mapWidth":I
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v10, "height"

    invoke-virtual {v2, v10, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    .line 110
    .local v11, "mapHeight":I
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string/jumbo v12, "tilewidth"

    invoke-virtual {v2, v12, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v13

    .line 111
    .local v13, "tileWidth":I
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string/jumbo v14, "tileheight"

    invoke-virtual {v2, v14, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v15

    .line 112
    .local v15, "tileHeight":I
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v0, "hexsidelength"

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v17

    .line 113
    .local v17, "hexSideLength":I
    iget-object v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "staggeraxis"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "staggerAxis":Ljava/lang/String;
    iget-object v7, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-object/from16 v18, v2

    const-string v2, "staggerindex"

    invoke-virtual {v7, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "staggerIndex":Ljava/lang/String;
    move-object/from16 v19, v2

    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-object/from16 v20, v7

    .end local v7    # "staggerIndex":Ljava/lang/String;
    .local v20, "staggerIndex":Ljava/lang/String;
    const-string v7, "backgroundcolor"

    invoke-virtual {v2, v7, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "mapBackgroundColor":Ljava/lang/String;
    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    .line 118
    .local v2, "mapProperties":Lcom/badlogic/gdx/maps/MapProperties;
    if-eqz v8, :cond_1

    .line 119
    invoke-virtual {v2, v3, v8}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    if-eqz v1, :cond_2

    .line 127
    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    :cond_2
    if-eqz v20, :cond_3

    .line 130
    move-object/from16 v0, v19

    move-object/from16 v10, v20

    .end local v20    # "staggerIndex":Ljava/lang/String;
    .local v10, "staggerIndex":Ljava/lang/String;
    invoke-virtual {v2, v0, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    .end local v10    # "staggerIndex":Ljava/lang/String;
    .restart local v20    # "staggerIndex":Ljava/lang/String;
    :cond_3
    move-object/from16 v10, v20

    .line 132
    .end local v20    # "staggerIndex":Ljava/lang/String;
    .restart local v10    # "staggerIndex":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_4

    .line 133
    invoke-virtual {v2, v7, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    :cond_4
    iput v13, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileWidth:I

    .line 136
    iput v15, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapTileHeight:I

    .line 137
    mul-int v0, v9, v13

    iput v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapWidthInPixels:I

    .line 138
    mul-int v0, v11, v15

    iput v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    .line 140
    if-eqz v8, :cond_5

    .line 141
    const-string v0, "staggered"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    const/4 v0, 0x1

    if-le v11, v0, :cond_5

    .line 143
    iget v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapWidthInPixels:I

    div-int/lit8 v3, v13, 0x2

    add-int/2addr v0, v3

    iput v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapWidthInPixels:I

    .line 144
    iget v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v15, 0x2

    add-int/2addr v0, v3

    iput v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->mapHeightInPixels:I

    .line 149
    :cond_5
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v3, "properties"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v7

    .line 150
    .local v7, "properties":Lcom/badlogic/gdx/utils/XmlReader$Element;
    if-eqz v7, :cond_6

    .line 151
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 154
    :cond_6
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string/jumbo v3, "tileset"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v12

    .line 155
    .local v12, "tilesets":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/utils/XmlReader$Element;>;"
    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/XmlReader$Element;

    .line 156
    .local v3, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object/from16 v14, p1

    move-object/from16 v5, p3

    invoke-virtual {v6, v3, v14, v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadTileSet(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    .line 157
    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->removeChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    .line 158
    .end local v3    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    move-object/from16 v0, v16

    goto :goto_2

    .line 160
    :cond_7
    move-object/from16 v14, p1

    move-object/from16 v5, p3

    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v3

    .local v3, "j":I
    :goto_3
    if-ge v0, v3, :cond_8

    .line 161
    move-object/from16 v16, v1

    .end local v1    # "staggerAxis":Ljava/lang/String;
    .local v16, "staggerAxis":Ljava/lang/String;
    iget-object v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v18

    .line 162
    .local v18, "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    iget-object v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v19

    move/from16 v20, v0

    .end local v0    # "i":I
    .local v20, "i":I
    move-object/from16 v0, p0

    move-object/from16 v21, v2

    .end local v2    # "mapProperties":Lcom/badlogic/gdx/maps/MapProperties;
    .local v21, "mapProperties":Lcom/badlogic/gdx/maps/MapProperties;
    move-object/from16 v2, v19

    move/from16 v19, v3

    .end local v3    # "j":I
    .local v19, "j":I
    move-object/from16 v3, v18

    move-object/from16 v22, v4

    .end local v4    # "mapBackgroundColor":Ljava/lang/String;
    .local v22, "mapBackgroundColor":Ljava/lang/String;
    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadLayer(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    .line 160
    .end local v18    # "element":Lcom/badlogic/gdx/utils/XmlReader$Element;
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v1, v16

    move/from16 v3, v19

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    .end local v20    # "i":I
    .restart local v0    # "i":I
    goto :goto_3

    .end local v16    # "staggerAxis":Ljava/lang/String;
    .end local v19    # "j":I
    .end local v21    # "mapProperties":Lcom/badlogic/gdx/maps/MapProperties;
    .end local v22    # "mapBackgroundColor":Ljava/lang/String;
    .restart local v1    # "staggerAxis":Ljava/lang/String;
    .restart local v2    # "mapProperties":Lcom/badlogic/gdx/maps/MapProperties;
    .restart local v3    # "j":I
    .restart local v4    # "mapBackgroundColor":Ljava/lang/String;
    :cond_8
    move/from16 v20, v0

    .line 164
    .end local v0    # "i":I
    .end local v3    # "j":I
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method
