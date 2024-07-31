.class public final Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "EciesAeadHkdfKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 173
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->access$000()Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$1;

    .line 166
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParams()Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->copyOnWrite()V

    .line 244
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->access$300(Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;)V

    .line 245
    return-object p0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->getParams()Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;

    move-result-object v0

    return-object v0
.end method

.method public hasParams()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->hasParams()Z

    move-result v0

    return v0
.end method

.method public mergeParams(Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->copyOnWrite()V

    .line 233
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->access$200(Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)V

    .line 234
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;)Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->copyOnWrite()V

    .line 221
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->access$100(Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)V

    .line 222
    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->copyOnWrite()V

    .line 208
    iget-object v0, p0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->access$100(Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)V

    .line 209
    return-object p0
.end method
