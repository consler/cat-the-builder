.class public final Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "KmsEnvelopeAeadKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 207
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$000()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$1;

    .line 200
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParams()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->copyOnWrite()V

    .line 306
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$500(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;)V

    .line 307
    return-object p0
.end method

.method public clearVersion()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->copyOnWrite()V

    .line 235
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$200(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;)V

    .line 236
    return-object p0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->getParams()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->hasParams()Z

    move-result v0

    return v0
.end method

.method public mergeParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$400(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V

    .line 296
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->copyOnWrite()V

    .line 283
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$300(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V

    .line 284
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->copyOnWrite()V

    .line 270
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$300(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)V

    .line 271
    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;
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

    .line 225
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->copyOnWrite()V

    .line 226
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->access$100(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;I)V

    .line 227
    return-object p0
.end method
