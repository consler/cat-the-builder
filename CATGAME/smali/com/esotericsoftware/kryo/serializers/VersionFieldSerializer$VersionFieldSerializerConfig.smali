.class public Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
.source "VersionFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionFieldSerializerConfig"
.end annotation


# instance fields
.field compatible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;-><init>()V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;->compatible:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCompatible()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;->compatible:Z

    return v0
.end method

.method public setCompatible(Z)V
    .locals 2

    .line 161
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;->compatible:Z

    .line 162
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VersionFieldSerializerConfig setCompatible: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
