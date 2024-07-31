.class public Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
.super Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.source "GZIPInputFilter.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field mNeedsHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    .line 40
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    .line 41
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    .line 38
    return-void
.end method

.method static peekShort([BILjava/nio/ByteOrder;)S
    .locals 2
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 19
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 20
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 22
    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static unsignedToBytes(B)I
    .locals 1
    .param p0, "b"    # B

    .line 44
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 50
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/koushikdutta/async/PushParser;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    .line 52
    .local v0, "parser":Lcom/koushikdutta/async/PushParser;
    const/16 v1, 0xa

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    .line 139
    .end local v0    # "parser":Lcom/koushikdutta/async/PushParser;
    goto :goto_0

    .line 141
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 143
    :goto_0
    return-void
.end method
