.class public final Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "EciesAeadHkdfPrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 261
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$000()Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$1;

    .line 254
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKeyValue()Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 412
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$700(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;)V

    .line 413
    return-object p0
.end method

.method public clearPublicKey()Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 372
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$500(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;)V

    .line 373
    return-object p0
.end method

.method public clearVersion()Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 1

    .line 300
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 301
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$200(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;)V

    .line 302
    return-object p0
.end method

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->hasPublicKey()Z

    move-result v0

    return v0
.end method

.method public mergePublicKey(Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 361
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$400(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;)V

    .line 362
    return-object p0
.end method

.method public setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$600(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 400
    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey$Builder;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 349
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$300(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;)V

    .line 350
    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 336
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$300(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;)V

    .line 337
    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->copyOnWrite()V

    .line 288
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->access$100(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;I)V

    .line 289
    return-object p0
.end method
