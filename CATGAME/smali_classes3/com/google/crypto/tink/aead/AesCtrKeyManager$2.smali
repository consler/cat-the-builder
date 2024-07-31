.class Lcom/google/crypto/tink/aead/AesCtrKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "AesCtrKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/AesCtrKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/AesCtrKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCtrKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/aead/AesCtrKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/aead/AesCtrKeyManager;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/crypto/tink/aead/AesCtrKeyManager;
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

    .line 89
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/crypto/tink/proto/AesCtrKeyFormat;>;"
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesCtrKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/AesCtrKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrKey;
    .locals 2
    .param p1, "format"    # Lcom/google/crypto/tink/proto/AesCtrKeyFormat;
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

    .line 104
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrKey;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesCtrParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->setParams(Lcom/google/crypto/tink/proto/AesCtrParams;)Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesCtrKeyManager;

    .line 107
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesCtrKeyManager;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesCtrKey$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCtrKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/AesCtrKey;

    .line 104
    return-object v0
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

    .line 89
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesCtrKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/AesCtrKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrKeyFormat;
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

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

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

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesCtrKeyManager$2;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/AesCtrKeyFormat;)V
    .locals 2
    .param p1, "format"    # Lcom/google/crypto/tink/proto/AesCtrKeyFormat;
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

    .line 92
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->getKeySize()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrKeyManager$2;->this$0:Lcom/google/crypto/tink/aead/AesCtrKeyManager;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesCtrParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrKeyManager;->access$000(Lcom/google/crypto/tink/aead/AesCtrKeyManager;Lcom/google/crypto/tink/proto/AesCtrParams;)V

    .line 94
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

    .line 89
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/AesCtrKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/AesCtrKeyFormat;)V

    return-void
.end method
