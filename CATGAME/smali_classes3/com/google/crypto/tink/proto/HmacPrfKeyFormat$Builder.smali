.class public final Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "HmacPrfKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HmacPrfKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;",
        "Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HmacPrfKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 205
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$000()Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$1;

    .line 198
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKeySize()Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 280
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$500(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;)V

    .line 281
    return-object p0
.end method

.method public clearParams()Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 252
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$300(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;)V

    .line 253
    return-object p0
.end method

.method public clearVersion()Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 308
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$700(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;)V

    .line 309
    return-object p0
.end method

.method public getKeySize()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->getKeySize()I

    move-result v0

    return v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/HmacPrfParams;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->getParams()Lcom/google/crypto/tink/proto/HmacPrfParams;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->hasParams()Z

    move-result v0

    return v0
.end method

.method public mergeParams(Lcom/google/crypto/tink/proto/HmacPrfParams;)Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HmacPrfParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 245
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$200(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;Lcom/google/crypto/tink/proto/HmacPrfParams;)V

    .line 246
    return-object p0
.end method

.method public setKeySize(I)Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
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

    .line 270
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 271
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$400(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;I)V

    .line 272
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;)Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 237
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HmacPrfParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/HmacPrfParams;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$100(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;Lcom/google/crypto/tink/proto/HmacPrfParams;)V

    .line 238
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/HmacPrfParams;)Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HmacPrfParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 228
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$100(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;Lcom/google/crypto/tink/proto/HmacPrfParams;)V

    .line 229
    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;
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

    .line 298
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->copyOnWrite()V

    .line 299
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;->access$600(Lcom/google/crypto/tink/proto/HmacPrfKeyFormat;I)V

    .line 300
    return-object p0
.end method
