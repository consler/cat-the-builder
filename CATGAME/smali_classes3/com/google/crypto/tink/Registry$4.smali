.class Lcom/google/crypto/tink/Registry$4;
.super Ljava/lang/Object;
.source "Registry.java"

# interfaces
.implements Lcom/google/crypto/tink/Registry$KeyDeriverContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/Registry;->createDeriverFor(Lcom/google/crypto/tink/KeyTypeManager;)Lcom/google/crypto/tink/Registry$KeyDeriverContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$keyManager:Lcom/google/crypto/tink/KeyTypeManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/KeyTypeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$keyManager"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/google/crypto/tink/Registry$4;->val$keyManager:Lcom/google/crypto/tink/KeyTypeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deriveKeyWithFactory(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Ljava/io/InputStream;Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 3
    .param p1, "serializedKeyFormat"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serializedKeyFormat",
            "stream",
            "keyFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyFormatProtoT::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Ljava/io/InputStream;",
            "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
            "TKeyFormatProtoT;TKeyProtoT;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 289
    .local p3, "keyFactory":Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;, "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<TKeyFormatProtoT;TKeyProtoT;>;"
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .local v0, "keyFormat":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TKeyFormatProtoT;"
    nop

    .line 293
    invoke-virtual {p3, v0}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 294
    invoke-virtual {p3, v0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;->deriveKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v1

    .line 290
    .end local v0    # "keyFormat":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TKeyFormatProtoT;"
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "parsing key format failed in deriveKey"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public deriveKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/KeyData;
    .locals 4
    .param p1, "serializedKeyFormat"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedKeyFormat",
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/crypto/tink/Registry$4;->val$keyManager:Lcom/google/crypto/tink/KeyTypeManager;

    invoke-virtual {v0}, Lcom/google/crypto/tink/KeyTypeManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;

    move-result-object v0

    .line 302
    .local v0, "keyFactory":Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;, "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<*TKeyProtoT;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/Registry$4;->deriveKeyWithFactory(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Ljava/io/InputStream;Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    .line 304
    .local v1, "keyValue":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/Registry$4;->val$keyManager:Lcom/google/crypto/tink/KeyTypeManager;

    .line 305
    invoke-virtual {v3}, Lcom/google/crypto/tink/KeyTypeManager;->getKeyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    .line 306
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/Registry$4;->val$keyManager:Lcom/google/crypto/tink/KeyTypeManager;

    .line 307
    invoke-virtual {v3}, Lcom/google/crypto/tink/KeyTypeManager;->keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/KeyData;

    .line 309
    .local v2, "keyData":Lcom/google/crypto/tink/proto/KeyData;
    return-object v2
.end method
