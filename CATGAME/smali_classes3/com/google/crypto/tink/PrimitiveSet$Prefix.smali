.class Lcom/google/crypto/tink/PrimitiveSet$Prefix;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/PrimitiveSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Prefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/crypto/tink/PrimitiveSet$Prefix;",
        ">;"
    }
.end annotation


# instance fields
.field private final prefix:[B


# direct methods
.method private constructor <init>([B)V
    .locals 1
    .param p1, "prefix"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefix"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    .line 208
    return-void
.end method

.method synthetic constructor <init>([BLcom/google/crypto/tink/PrimitiveSet$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lcom/google/crypto/tink/PrimitiveSet$1;

    .line 203
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/PrimitiveSet$Prefix;-><init>([B)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/crypto/tink/PrimitiveSet$Prefix;)I
    .locals 5
    .param p1, "o"    # Lcom/google/crypto/tink/PrimitiveSet$Prefix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    array-length v1, v0

    iget-object v2, p1, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    array-length v3, v2

    if-eq v1, v3, :cond_0

    .line 227
    array-length v0, v0

    array-length v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 230
    aget-byte v2, v1, v0

    iget-object v3, p1, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    aget-byte v4, v3, v0

    if-eq v2, v4, :cond_1

    .line 231
    aget-byte v1, v1, v0

    aget-byte v2, v3, v0

    sub-int/2addr v1, v2

    return v1

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 203
    check-cast p1, Lcom/google/crypto/tink/PrimitiveSet$Prefix;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->compareTo(Lcom/google/crypto/tink/PrimitiveSet$Prefix;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 217
    instance-of v0, p1, Lcom/google/crypto/tink/PrimitiveSet$Prefix;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;

    .line 221
    .local v0, "other":Lcom/google/crypto/tink/PrimitiveSet$Prefix;
    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    iget-object v2, v0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Prefix;->prefix:[B

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
