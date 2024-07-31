.class public Lcom/google/crypto/tink/PrivateKeyManagerImpl;
.super Lcom/google/crypto/tink/KeyManagerImpl;
.source "PrivateKeyManagerImpl.java"

# interfaces
.implements Lcom/google/crypto/tink/PrivateKeyManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        "PublicKeyProtoT::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        ">",
        "Lcom/google/crypto/tink/KeyManagerImpl<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/crypto/tink/PrivateKeyManager<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final privateKeyManager:Lcom/google/crypto/tink/PrivateKeyTypeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrivateKeyTypeManager<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final publicKeyManager:Lcom/google/crypto/tink/KeyTypeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyTypeManager<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/PrivateKeyTypeManager;Lcom/google/crypto/tink/KeyTypeManager;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKeyManager",
            "publicKeyManager",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrivateKeyTypeManager<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/crypto/tink/KeyTypeManager<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/google/crypto/tink/PrivateKeyManagerImpl;, "Lcom/google/crypto/tink/PrivateKeyManagerImpl<TPrimitiveT;TKeyProtoT;TPublicKeyProtoT;>;"
    .local p1, "privateKeyManager":Lcom/google/crypto/tink/PrivateKeyTypeManager;, "Lcom/google/crypto/tink/PrivateKeyTypeManager<TKeyProtoT;TPublicKeyProtoT;>;"
    .local p2, "publicKeyManager":Lcom/google/crypto/tink/KeyTypeManager;, "Lcom/google/crypto/tink/KeyTypeManager<TPublicKeyProtoT;>;"
    .local p3, "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<TPrimitiveT;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/crypto/tink/KeyManagerImpl;-><init>(Lcom/google/crypto/tink/KeyTypeManager;Ljava/lang/Class;)V

    .line 46
    iput-object p1, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->privateKeyManager:Lcom/google/crypto/tink/PrivateKeyTypeManager;

    .line 47
    iput-object p2, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->publicKeyManager:Lcom/google/crypto/tink/KeyTypeManager;

    .line 48
    return-void
.end method


# virtual methods
.method public getPublicKeyData(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;
    .locals 4
    .param p1, "serializedKey"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/google/crypto/tink/PrivateKeyManagerImpl;, "Lcom/google/crypto/tink/PrivateKeyManagerImpl<TPrimitiveT;TKeyProtoT;TPublicKeyProtoT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->privateKeyManager:Lcom/google/crypto/tink/PrivateKeyTypeManager;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/PrivateKeyTypeManager;->parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    .line 54
    .local v0, "privKeyProto":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TKeyProtoT;"
    iget-object v1, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->privateKeyManager:Lcom/google/crypto/tink/PrivateKeyTypeManager;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/PrivateKeyTypeManager;->validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 55
    iget-object v1, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->privateKeyManager:Lcom/google/crypto/tink/PrivateKeyTypeManager;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/PrivateKeyTypeManager;->getPublicKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    .line 56
    .local v1, "publicKeyProto":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TPublicKeyProtoT;"
    iget-object v2, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->publicKeyManager:Lcom/google/crypto/tink/KeyTypeManager;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/KeyTypeManager;->validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->publicKeyManager:Lcom/google/crypto/tink/KeyTypeManager;

    .line 58
    invoke-virtual {v3}, Lcom/google/crypto/tink/KeyTypeManager;->getKeyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    .line 59
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/PrivateKeyManagerImpl;->publicKeyManager:Lcom/google/crypto/tink/KeyTypeManager;

    .line 60
    invoke-virtual {v3}, Lcom/google/crypto/tink/KeyTypeManager;->keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/KeyData;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v2

    .line 62
    .end local v0    # "privKeyProto":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TKeyProtoT;"
    .end local v1    # "publicKeyProto":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TPublicKeyProtoT;"
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "expected serialized proto of type "

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
