.class Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "AesCtrHmacAeadKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "clazz"
        }
    .end annotation

    .line 94
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;>;"
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;
    .locals 4
    .param p1, "format"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesCtrKeyManager;-><init>()V

    .line 114
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getAesCtrKeyFormat()Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 115
    .local v0, "aesCtrKey":Lcom/google/crypto/tink/proto/AesCtrKey;
    new-instance v1, Lcom/google/crypto/tink/mac/HmacKeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/mac/HmacKeyManager;-><init>()V

    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getHmacKeyFormat()Lcom/google/crypto/tink/proto/HmacKeyFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/HmacKey;

    .line 116
    .local v1, "hmacKey":Lcom/google/crypto/tink/proto/HmacKey;
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setAesCtrKey(Lcom/google/crypto/tink/proto/AesCtrKey;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setHmacKey(Lcom/google/crypto/tink/proto/HmacKey;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;

    .line 119
    invoke-virtual {v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    .line 116
    return-object v2
.end method

.method public bridge synthetic createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;
    .locals 1
    .param p1, "byteString"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 106
    nop

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 106
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$2;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;)V
    .locals 2
    .param p1, "format"    # Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesCtrKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getAesCtrKeyFormat()Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 99
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getHmacKeyFormat()Lcom/google/crypto/tink/proto/HmacKeyFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;->getAesCtrKeyFormat()Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 101
    return-void
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/AesCtrHmacAeadKeyFormat;)V

    return-void
.end method
