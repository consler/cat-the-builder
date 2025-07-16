.class public Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
.source "TaggedFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaggedFieldSerializerConfig"
.end annotation


# instance fields
.field chunkSize:I

.field chunked:Z

.field readUnknownTagData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;-><init>()V

    const/16 v0, 0x400

    .line 256
    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunkSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;
    .locals 1

    .line 259
    invoke-super {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getChunkSize()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunkSize:I

    return v0
.end method

.method public getChunkedEncoding()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunked:Z

    return v0
.end method

.method public getReadUnknownTagData()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->readUnknownTagData:Z

    return v0
.end method

.method public setChunkSize(I)V
    .locals 2

    .line 296
    iput p1, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunkSize:I

    .line 297
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaggedFieldSerializerConfig setChunkSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setChunkedEncoding(Z)V
    .locals 2

    .line 286
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->chunked:Z

    .line 287
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaggedFieldSerializerConfig setChunked: "

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

.method public setReadUnknownTagData(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$TaggedFieldSerializerConfig;->readUnknownTagData:Z

    return-void
.end method
