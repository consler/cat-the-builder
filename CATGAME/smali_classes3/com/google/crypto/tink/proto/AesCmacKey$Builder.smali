.class public final Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "AesCmacKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesCmacKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/AesCmacKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/AesCmacKey;",
        "Lcom/google/crypto/tink/proto/AesCmacKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesCmacKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 215
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$000()Lcom/google/crypto/tink/proto/AesCmacKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/AesCmacKey$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/proto/AesCmacKey$1;

    .line 208
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKeyValue()Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 271
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$400(Lcom/google/crypto/tink/proto/AesCmacKey;)V

    .line 272
    return-object p0
.end method

.method public clearParams()Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 318
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$700(Lcom/google/crypto/tink/proto/AesCmacKey;)V

    .line 319
    return-object p0
.end method

.method public clearVersion()Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 243
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$200(Lcom/google/crypto/tink/proto/AesCmacKey;)V

    .line 244
    return-object p0
.end method

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/AesCmacParams;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->getParams()Lcom/google/crypto/tink/proto/AesCmacParams;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesCmacKey;->hasParams()Z

    move-result v0

    return v0
.end method

.method public mergeParams(Lcom/google/crypto/tink/proto/AesCmacParams;)Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/AesCmacParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$600(Lcom/google/crypto/tink/proto/AesCmacKey;Lcom/google/crypto/tink/proto/AesCmacParams;)V

    .line 312
    return-object p0
.end method

.method public setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
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

    .line 261
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$300(Lcom/google/crypto/tink/proto/AesCmacKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 263
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/AesCmacParams$Builder;)Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/crypto/tink/proto/AesCmacParams$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 303
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesCmacParams;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$500(Lcom/google/crypto/tink/proto/AesCmacKey;Lcom/google/crypto/tink/proto/AesCmacParams;)V

    .line 304
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/AesCmacParams;)Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/AesCmacParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 294
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$500(Lcom/google/crypto/tink/proto/AesCmacKey;Lcom/google/crypto/tink/proto/AesCmacParams;)V

    .line 295
    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/AesCmacKey$Builder;
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

    .line 233
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->copyOnWrite()V

    .line 234
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesCmacKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesCmacKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesCmacKey;->access$100(Lcom/google/crypto/tink/proto/AesCmacKey;I)V

    .line 235
    return-object p0
.end method
