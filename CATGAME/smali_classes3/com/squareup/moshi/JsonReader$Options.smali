.class public final Lcom/squareup/moshi/JsonReader$Options;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field final doubleQuoteSuffix:Lokio/Options;

.field final strings:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lokio/Options;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "doubleQuoteSuffix"    # Lokio/Options;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/squareup/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 526
    iput-object p2, p0, Lcom/squareup/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    .line 527
    return-void
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$Options;
    .locals 5
    .param p0, "strings"    # [Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 531
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lokio/ByteString;

    .line 532
    .local v0, "result":[Lokio/ByteString;
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 533
    .local v1, "buffer":Lokio/Buffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 534
    aget-object v3, p0, v2

    invoke-static {v1, v3}, Lcom/squareup/moshi/JsonUtf8Writer;->string(Lokio/BufferedSink;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 536
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v3

    aput-object v3, v0, v2

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/squareup/moshi/JsonReader$Options;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v0}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/moshi/JsonReader$Options;-><init>([Ljava/lang/String;Lokio/Options;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 539
    .end local v0    # "result":[Lokio/ByteString;
    .end local v1    # "buffer":Lokio/Buffer;
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
