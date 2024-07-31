.class public Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.super Ljava/lang/Object;
.source "PixmapIO.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PNG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;
    }
.end annotation


# static fields
.field private static final COLOR_ARGB:B = 0x6t

.field private static final COMPRESSION_DEFLATE:B = 0x0t

.field private static final FILTER_NONE:B = 0x0t

.field private static final IDAT:I = 0x49444154

.field private static final IEND:I = 0x49454e44

.field private static final IHDR:I = 0x49484452

.field private static final INTERLACE_NONE:B = 0x0t

.field private static final PAETH:B = 0x4t

.field private static final SIGNATURE:[B


# instance fields
.field private final buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

.field private curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field private final deflater:Ljava/util/zip/Deflater;

.field private flipY:Z

.field private lastLineLen:I

.field private lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field private prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 203
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V

    .line 204
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialBufferSize"    # I

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    .line 207
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    .line 208
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    .line 209
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 326
    return-void
.end method

.method public setCompression(I)V
    .locals 1
    .param p1, "level"    # I

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 219
    return-void
.end method

.method public setFlipY(Z)V
    .locals 0
    .param p1, "flipY"    # Z

    .line 213
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    .line 214
    return-void
.end method

.method public write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 2
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 224
    .local v0, "output":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 227
    nop

    .line 228
    return-void

    .line 226
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 24
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v1, v2, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 233
    .local v1, "deflaterOutput":Ljava/util/zip/DeflaterOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 234
    .local v2, "dataOutput":Ljava/io/DataOutputStream;
    sget-object v4, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 236
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v5, 0x49484452

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 237
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 238
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 239
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 240
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 241
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 242
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 243
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    .line 244
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 246
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v6, 0x49444154    # 803861.25f

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 247
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->reset()V

    .line 249
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    const/4 v6, 0x4

    mul-int/2addr v4, v6

    .line 251
    .local v4, "lineLen":I
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    if-nez v7, :cond_0

    .line 252
    new-instance v7, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v7, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 253
    .local v7, "lineOut":[B
    new-instance v8, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v8, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 254
    .local v8, "curLine":[B
    new-instance v9, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v9, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v9, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .local v9, "prevLine":[B
    goto :goto_1

    .line 256
    .end local v7    # "lineOut":[B
    .end local v8    # "curLine":[B
    .end local v9    # "prevLine":[B
    :cond_0
    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v7

    .line 257
    .restart local v7    # "lineOut":[B
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v8

    .line 258
    .restart local v8    # "curLine":[B
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v9

    .line 259
    .restart local v9    # "prevLine":[B
    const/4 v10, 0x0

    .local v10, "i":I
    iget v11, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    .local v11, "n":I
    :goto_0
    if-ge v10, v11, :cond_1

    .line 260
    aput-byte v5, v9, v10

    .line 259
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 262
    .end local v10    # "i":I
    .end local v11    # "n":I
    :cond_1
    :goto_1
    iput v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 265
    .local v10, "pixels":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 266
    .local v11, "oldPosition":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v12

    sget-object v13, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v14, 0x1

    if-ne v12, v13, :cond_2

    move v12, v14

    goto :goto_2

    :cond_2
    move v12, v5

    .line 267
    .local v12, "rgba8888":Z
    :goto_2
    const/4 v13, 0x0

    .local v13, "y":I
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v15

    .local v15, "h":I
    :goto_3
    if-ge v13, v15, :cond_c

    .line 268
    iget-boolean v6, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    if-eqz v6, :cond_3

    sub-int v6, v15, v13

    sub-int/2addr v6, v14

    goto :goto_4

    :cond_3
    move v6, v13

    .line 269
    .local v6, "py":I
    :goto_4
    if-eqz v12, :cond_4

    .line 270
    mul-int v14, v6, v4

    invoke-virtual {v10, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    invoke-virtual {v10, v8, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move/from16 v19, v6

    move/from16 v18, v12

    goto :goto_6

    .line 273
    :cond_4
    const/4 v14, 0x0

    .local v14, "px":I
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    if-ge v14, v5, :cond_5

    .line 274
    move-object/from16 v5, p2

    invoke-virtual {v5, v14, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v3

    .line 275
    .local v3, "pixel":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "x":I
    .local v18, "x":I
    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v8, v17

    .line 276
    add-int/lit8 v5, v18, 0x1

    .end local v18    # "x":I
    .local v5, "x":I
    move/from16 v19, v6

    .end local v6    # "py":I
    .local v19, "py":I
    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v18

    .line 277
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "x":I
    .local v6, "x":I
    move/from16 v18, v12

    .end local v12    # "rgba8888":Z
    .local v18, "rgba8888":Z
    shr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    .line 278
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "x":I
    .restart local v17    # "x":I
    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v8, v6

    .line 273
    .end local v3    # "pixel":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p1

    move/from16 v12, v18

    move/from16 v6, v19

    const/4 v5, 0x0

    goto :goto_5

    .end local v18    # "rgba8888":Z
    .end local v19    # "py":I
    .local v6, "py":I
    .restart local v12    # "rgba8888":Z
    :cond_5
    move/from16 v19, v6

    move/from16 v18, v12

    .line 282
    .end local v6    # "py":I
    .end local v12    # "rgba8888":Z
    .end local v14    # "px":I
    .end local v17    # "x":I
    .restart local v18    # "rgba8888":Z
    .restart local v19    # "py":I
    :goto_6
    const/4 v3, 0x0

    aget-byte v5, v8, v3

    aget-byte v6, v9, v3

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    .line 283
    const/4 v3, 0x1

    aget-byte v5, v8, v3

    aget-byte v6, v9, v3

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    .line 284
    const/4 v5, 0x2

    aget-byte v6, v8, v5

    aget-byte v12, v9, v5

    sub-int/2addr v6, v12

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 285
    const/4 v5, 0x3

    aget-byte v6, v8, v5

    aget-byte v12, v9, v5

    sub-int/2addr v6, v12

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 287
    const/4 v5, 0x4

    .restart local v5    # "x":I
    :goto_7
    if-ge v5, v4, :cond_b

    .line 288
    add-int/lit8 v6, v5, -0x4

    aget-byte v6, v8, v6

    and-int/lit16 v6, v6, 0xff

    .line 289
    .local v6, "a":I
    aget-byte v12, v9, v5

    and-int/lit16 v12, v12, 0xff

    .line 290
    .local v12, "b":I
    add-int/lit8 v14, v5, -0x4

    aget-byte v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    .line 291
    .local v14, "c":I
    add-int v16, v6, v12

    sub-int v16, v16, v14

    .line 292
    .local v16, "p":I
    sub-int v3, v16, v6

    .line 293
    .local v3, "pa":I
    if-gez v3, :cond_6

    neg-int v3, v3

    .line 294
    :cond_6
    move/from16 v20, v15

    .end local v15    # "h":I
    .local v20, "h":I
    sub-int v15, v16, v12

    .line 295
    .local v15, "pb":I
    if-gez v15, :cond_7

    neg-int v15, v15

    .line 296
    :cond_7
    move-object/from16 v21, v2

    .end local v2    # "dataOutput":Ljava/io/DataOutputStream;
    .local v21, "dataOutput":Ljava/io/DataOutputStream;
    sub-int v2, v16, v14

    .line 297
    .local v2, "pc":I
    if-gez v2, :cond_8

    neg-int v2, v2

    .line 298
    :cond_8
    if-gt v3, v15, :cond_9

    if-gt v3, v2, :cond_9

    .line 299
    move v14, v6

    goto :goto_8

    .line 300
    :cond_9
    if-gt v15, v2, :cond_a

    .line 301
    move v14, v12

    .line 302
    :cond_a
    :goto_8
    aget-byte v22, v8, v5

    move/from16 v23, v2

    .end local v2    # "pc":I
    .local v23, "pc":I
    sub-int v2, v22, v14

    int-to-byte v2, v2

    aput-byte v2, v7, v5

    .line 287
    .end local v3    # "pa":I
    .end local v6    # "a":I
    .end local v12    # "b":I
    .end local v14    # "c":I
    .end local v15    # "pb":I
    .end local v16    # "p":I
    .end local v23    # "pc":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v20

    move-object/from16 v2, v21

    const/4 v3, 0x1

    goto :goto_7

    .end local v20    # "h":I
    .end local v21    # "dataOutput":Ljava/io/DataOutputStream;
    .local v2, "dataOutput":Ljava/io/DataOutputStream;
    .local v15, "h":I
    :cond_b
    move-object/from16 v21, v2

    move/from16 v20, v15

    .line 305
    .end local v2    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v5    # "x":I
    .end local v15    # "h":I
    .restart local v20    # "h":I
    .restart local v21    # "dataOutput":Ljava/io/DataOutputStream;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    .line 306
    const/4 v3, 0x0

    invoke-virtual {v1, v7, v3, v4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 308
    move-object v5, v8

    .line 309
    .local v5, "temp":[B
    move-object v8, v9

    .line 310
    move-object v9, v5

    .line 267
    .end local v5    # "temp":[B
    .end local v19    # "py":I
    add-int/lit8 v13, v13, 0x1

    move v6, v2

    move v5, v3

    move/from16 v12, v18

    move-object/from16 v2, v21

    const/4 v14, 0x1

    move-object/from16 v3, p1

    goto/16 :goto_3

    .end local v18    # "rgba8888":Z
    .end local v20    # "h":I
    .end local v21    # "dataOutput":Ljava/io/DataOutputStream;
    .restart local v2    # "dataOutput":Ljava/io/DataOutputStream;
    .local v12, "rgba8888":Z
    .restart local v15    # "h":I
    :cond_c
    move-object/from16 v21, v2

    .line 312
    .end local v2    # "dataOutput":Ljava/io/DataOutputStream;
    .end local v13    # "y":I
    .end local v15    # "h":I
    .restart local v21    # "dataOutput":Ljava/io/DataOutputStream;
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 314
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    move-object/from16 v3, v21

    .end local v21    # "dataOutput":Ljava/io/DataOutputStream;
    .local v3, "dataOutput":Ljava/io/DataOutputStream;
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 316
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v5, 0x49454e44    # 808164.25f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    .line 317
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    .line 319
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 320
    return-void
.end method
