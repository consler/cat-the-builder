.class public final Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "KeysetInfo.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/KeysetInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/KeysetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/KeysetInfo;",
        "Lcom/google/crypto/tink/proto/KeysetInfo$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/KeysetInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1044
    invoke-static {}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1300()Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 1045
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/KeysetInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/proto/KeysetInfo$1;

    .line 1037
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllKeyInfo(Ljava/lang/Iterable;)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
            ">;)",
            "Lcom/google/crypto/tink/proto/KeysetInfo$Builder;"
        }
    .end annotation

    .line 1219
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1220
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1900(Lcom/google/crypto/tink/proto/KeysetInfo;Ljava/lang/Iterable;)V

    .line 1221
    return-object p0
.end method

.method public addKeyInfo(ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1204
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1205
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    .line 1206
    invoke-virtual {p2}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 1205
    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1800(Lcom/google/crypto/tink/proto/KeysetInfo;ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V

    .line 1207
    return-object p0
.end method

.method public addKeyInfo(ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1176
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1177
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1800(Lcom/google/crypto/tink/proto/KeysetInfo;ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V

    .line 1178
    return-object p0
.end method

.method public addKeyInfo(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1191
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1700(Lcom/google/crypto/tink/proto/KeysetInfo;Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V

    .line 1192
    return-object p0
.end method

.method public addKeyInfo(Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1162
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1163
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1700(Lcom/google/crypto/tink/proto/KeysetInfo;Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V

    .line 1164
    return-object p0
.end method

.method public clearKeyInfo()Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 1

    .line 1232
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1233
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$2000(Lcom/google/crypto/tink/proto/KeysetInfo;)V

    .line 1234
    return-object p0
.end method

.method public clearPrimaryKeyId()Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1084
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1500(Lcom/google/crypto/tink/proto/KeysetInfo;)V

    .line 1085
    return-object p0
.end method

.method public getKeyInfo(I)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo;->getKeyInfo(I)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getKeyInfoCount()I
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->getKeyInfoCount()I

    move-result v0

    return v0
.end method

.method public getKeyInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
            ">;"
        }
    .end annotation

    .line 1098
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    .line 1099
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->getKeyInfoList()Ljava/util/List;

    move-result-object v0

    .line 1098
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKeyId()I
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->getPrimaryKeyId()I

    move-result v0

    return v0
.end method

.method public removeKeyInfo(I)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1245
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1246
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$2100(Lcom/google/crypto/tink/proto/KeysetInfo;I)V

    .line 1247
    return-object p0
.end method

.method public setKeyInfo(ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1148
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1149
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    .line 1150
    invoke-virtual {p2}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    .line 1149
    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1600(Lcom/google/crypto/tink/proto/KeysetInfo;ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V

    .line 1151
    return-object p0
.end method

.method public setKeyInfo(ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1134
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1135
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1600(Lcom/google/crypto/tink/proto/KeysetInfo;ILcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;)V

    .line 1136
    return-object p0
.end method

.method public setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/KeysetInfo$Builder;
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

    .line 1070
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->copyOnWrite()V

    .line 1071
    iget-object v0, p0, Lcom/google/crypto/tink/proto/KeysetInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/KeysetInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/KeysetInfo;->access$1400(Lcom/google/crypto/tink/proto/KeysetInfo;I)V

    .line 1072
    return-object p0
.end method
