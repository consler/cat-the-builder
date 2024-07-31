.class Lcom/google/crypto/tink/mac/HmacKeyManager$1;
.super Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;
.source "HmacKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/mac/HmacKeyManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory<",
        "Lcom/google/crypto/tink/Mac;",
        "Lcom/google/crypto/tink/proto/HmacKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .line 48
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/crypto/tink/Mac;>;"
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeyTypeManager$PrimitiveFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getPrimitive(Lcom/google/crypto/tink/proto/HmacKey;)Lcom/google/crypto/tink/Mac;
    .locals 7
    .param p1, "key"    # Lcom/google/crypto/tink/proto/HmacKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HmacKey;->getParams()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacParams;->getHash()Lcom/google/crypto/tink/proto/HashType;

    move-result-object v0

    .line 52
    .local v0, "hash":Lcom/google/crypto/tink/proto/HashType;
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HmacKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 53
    .local v1, "keyValue":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 54
    .local v2, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HmacKey;->getParams()Lcom/google/crypto/tink/proto/HmacParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/HmacParams;->getTagSize()I

    move-result v3

    .line 55
    .local v3, "tagSize":I
    sget-object v4, Lcom/google/crypto/tink/mac/HmacKeyManager$3;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 61
    new-instance v4, Lcom/google/crypto/tink/subtle/PrfMac;

    new-instance v5, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    const-string v6, "HMACSHA512"

    invoke-direct {v5, v6, v2}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v4, v5, v3}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/prf/Prf;I)V

    return-object v4

    .line 63
    :cond_0
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "unknown hash"

    invoke-direct {v4, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_1
    new-instance v4, Lcom/google/crypto/tink/subtle/PrfMac;

    new-instance v5, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    const-string v6, "HMACSHA256"

    invoke-direct {v5, v6, v2}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v4, v5, v3}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/prf/Prf;I)V

    return-object v4

    .line 57
    :cond_2
    new-instance v4, Lcom/google/crypto/tink/subtle/PrfMac;

    new-instance v5, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    const-string v6, "HMACSHA1"

    invoke-direct {v5, v6, v2}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v4, v5, v3}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/prf/Prf;I)V

    return-object v4
.end method

.method public bridge synthetic getPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    check-cast p1, Lcom/google/crypto/tink/proto/HmacKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/mac/HmacKeyManager$1;->getPrimitive(Lcom/google/crypto/tink/proto/HmacKey;)Lcom/google/crypto/tink/Mac;

    move-result-object p1

    return-object p1
.end method
