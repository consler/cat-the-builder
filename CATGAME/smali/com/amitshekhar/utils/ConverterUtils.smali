.class public Lcom/amitshekhar/utils/ConverterUtils;
.super Ljava/lang/Object;
.source "ConverterUtils.java"


# static fields
.field private static final MAX_BLOB_LENGTH:I = 0x200

.field private static final UNKNOWN_BLOB_LABEL:Ljava/lang/String; = "{blob}"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static blobToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "blob"    # [B

    .line 39
    array-length v0, p0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    .line 40
    invoke-static {p0}, Lcom/amitshekhar/utils/ConverterUtils;->fastIsAscii([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 48
    :cond_0
    const-string/jumbo v0, "{blob}"

    return-object v0
.end method

.method public static fastIsAscii([B)Z
    .locals 5
    .param p0, "blob"    # [B

    .line 52
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    .line 53
    .local v3, "b":B
    and-int/lit8 v4, v3, -0x80

    if-eqz v4, :cond_0

    .line 54
    return v1

    .line 52
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
