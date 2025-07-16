.class public final Lar/com/hjg/pngj/PngHelperInternal;
.super Ljava/lang/Object;
.source "PngHelperInternal.java"


# static fields
.field private static DEBUG:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_LOGGER:Ljava/lang/String; = "ar.com.pngj"

.field public static final LOGGER:Ljava/util/logging/Logger;

.field public static charsetLatin1:Ljava/nio/charset/Charset;

.field public static charsetLatin1name:Ljava/lang/String;

.field public static charsetUTF8:Ljava/nio/charset/Charset;

.field public static charsetUTF8name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ar.com.pngj"

    .line 20
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->LOGGER:Ljava/util/logging/Logger;

    const-string v0, "ISO-8859-1"

    .line 25
    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1name:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    .line 30
    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8name:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8:Ljava/nio/charset/Charset;

    .line 33
    new-instance v0, Lar/com/hjg/pngj/PngHelperInternal$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/PngHelperInternal$1;-><init>()V

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->DEBUG:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 256
    invoke-static {p0, v0, v0}, Lar/com/hjg/pngj/PngHelperInternal;->debug(Ljava/lang/Object;IZ)V

    return-void
.end method

.method static debug(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x1

    .line 266
    invoke-static {p0, p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->debug(Ljava/lang/Object;IZ)V

    return-void
.end method

.method static debug(Ljava/lang/Object;IZ)V
    .locals 1

    .line 295
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, p2, p1

    .line 296
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2e

    .line 297
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 298
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 302
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static doubleToInt100000(D)I
    .locals 2

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method static final filterPaethPredictor(III)I
    .locals 3

    add-int v0, p0, p1

    sub-int/2addr v0, p2

    if-lt v0, p0, :cond_0

    sub-int v1, v0, p0

    goto :goto_0

    :cond_0
    sub-int v1, p0, v0

    :goto_0
    if-lt v0, p1, :cond_1

    sub-int v2, v0, p1

    goto :goto_1

    :cond_1
    sub-int v2, p1, v0

    :goto_1
    if-lt v0, p2, :cond_2

    sub-int/2addr v0, p2

    goto :goto_2

    :cond_2
    sub-int v0, p2, v0

    :goto_2
    if-gt v1, v2, :cond_3

    if-gt v1, v0, :cond_3

    return p0

    :cond_3
    if-gt v2, v0, :cond_4

    return p1

    :cond_4
    return p2
.end method

.method public static filterRowAverage(III)I
    .locals 0

    add-int/2addr p1, p2

    .line 223
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static filterRowNone(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static filterRowPaeth(IIII)I
    .locals 0

    .line 228
    invoke-static {p1, p2, p3}, Lar/com/hjg/pngj/PngHelperInternal;->filterPaethPredictor(III)I

    move-result p1

    sub-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static filterRowSub(II)I
    .locals 0

    sub-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static filterRowUp(II)I
    .locals 0

    sub-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getDigest(Lar/com/hjg/pngj/PngReader;)J
    .locals 2

    .line 317
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->getSimpleDigest()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPngIdSignature()[B
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_0

    return-object v0

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

.method public static getRawIdatBytes(Lar/com/hjg/pngj/PngReader;)J
    .locals 2

    .line 325
    iget-boolean v0, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->getChunkseq()Lar/com/hjg/pngj/ChunkSeqReaderPng;

    move-result-object p0

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getDeinterlacer()Lar/com/hjg/pngj/Deinterlacer;

    move-result-object p0

    invoke-virtual {p0}, Lar/com/hjg/pngj/Deinterlacer;->getTotalRawBytes()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageInfo;->getTotalRawBytes()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static initCrcForTests(Lar/com/hjg/pngj/PngReader;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->prepareSimpleDigestComputation()V

    return-void
.end method

.method public static intToDouble100000(I)D
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static isDebug()Z
    .locals 1

    .line 313
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->DEBUG:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static istreamFromFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 4

    .line 272
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static logdebug(Ljava/lang/String;)V
    .locals 3

    .line 205
    invoke-static {}, Lar/com/hjg/pngj/PngHelperInternal;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logdebug: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static ostreamFromFile(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x1

    .line 280
    invoke-static {p0, v0}, Lar/com/hjg/pngj/PngHelperInternal;->ostreamFromFile(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method static ostreamFromFile(Ljava/io/File;Z)Ljava/io/OutputStream;
    .locals 0

    .line 284
    invoke-static {p0, p1}, Lar/com/hjg/pngj/PngHelperInternal2;->ostreamFromFile(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static readByte(Ljava/io/InputStream;)I
    .locals 2

    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 58
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "error reading byte"

    invoke-direct {v0, v1, p0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readBytes(Ljava/io/InputStream;[BII)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 158
    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    .line 160
    :cond_1
    new-instance p0, Lar/com/hjg/pngj/PngjInputException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error reading bytes, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " !="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 164
    new-instance p1, Lar/com/hjg/pngj/PngjInputException;

    const-string p2, "error reading"

    invoke-direct {p1, p2, p0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-void
.end method

.method public static readInt1fromByte([BI)I
    .locals 0

    .line 97
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static readInt2(Ljava/io/InputStream;)I
    .locals 2

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception p0

    .line 75
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "error reading Int2"

    invoke-direct {v0, v1, p0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readInt2fromBytes([BI)I
    .locals 1

    .line 101
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readInt4(Ljava/io/InputStream;)I
    .locals 4

    .line 84
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 85
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 86
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 87
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v2, v3, :cond_1

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v1, p0

    or-int p0, v0, v1

    return p0

    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception p0

    .line 92
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "error reading Int4"

    invoke-direct {v0, v1, p0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final readInt4fromBytes([BI)I
    .locals 2

    .line 105
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static setDebug(Z)V
    .locals 1

    .line 309
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->DEBUG:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static skipBytes(Ljava/io/InputStream;J)V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 171
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 175
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    goto :goto_0

    .line 181
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "skip() returned a negative value ???"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 184
    new-instance p1, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {p1, p0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static writeByte(Ljava/io/OutputStream;B)V
    .locals 0

    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {p1, p0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeByte(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 121
    new-instance p1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {p1, p0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeBytes(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 192
    new-instance p1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {p1, p0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeBytes(Ljava/io/OutputStream;[BII)V
    .locals 0

    .line 198
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 200
    new-instance p1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {p1, p0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static writeInt2(Ljava/io/OutputStream;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 127
    invoke-static {p0, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public static writeInt2tobytes(I[BI)V
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 137
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 138
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeInt4(Ljava/io/OutputStream;I)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 132
    invoke-static {p1, v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 133
    invoke-static {p0, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public static writeInt4tobytes(I[BI)V
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 142
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 143
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 144
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 145
    aput-byte p0, p1, p2

    return-void
.end method
