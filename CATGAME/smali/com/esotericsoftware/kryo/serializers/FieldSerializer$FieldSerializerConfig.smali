.class public Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldSerializerConfig"
.end annotation


# instance fields
.field copyTransient:Z

.field extendedFieldNames:Z

.field fieldsCanBeNull:Z

.field fixedFieldTypes:Z

.field ignoreSyntheticFields:Z

.field serializeTransient:Z

.field setFieldsAsAccessible:Z

.field varEncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    .line 388
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    .line 389
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    .line 391
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    .line 393
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    .locals 2

    .line 398
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 400
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->clone()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCopyTransient()Z
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    return v0
.end method

.method public getExtendedFieldNames()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->extendedFieldNames:Z

    return v0
.end method

.method public getFieldsCanBeNull()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    return v0
.end method

.method public getFixedFieldTypes()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fixedFieldTypes:Z

    return v0
.end method

.method public getIgnoreSyntheticFields()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    return v0
.end method

.method public getSerializeTransient()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    return v0
.end method

.method public getSetFieldsAsAccessible()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    return v0
.end method

.method public getVariableLengthEncoding()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    return v0
.end method

.method public setCopyTransient(Z)V
    .locals 2

    .line 455
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    .line 456
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig copyTransient: "

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

.method public setExtendedFieldNames(Z)V
    .locals 2

    .line 489
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->extendedFieldNames:Z

    .line 490
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig extendedFieldNames: "

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

.method public setFieldsAsAccessible(Z)V
    .locals 2

    .line 421
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    .line 422
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig setFieldsAsAccessible: "

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

.method public setFieldsCanBeNull(Z)V
    .locals 2

    .line 408
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    .line 409
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig fieldsCanBeNull: "

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

.method public setFixedFieldTypes(Z)V
    .locals 2

    .line 444
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fixedFieldTypes:Z

    .line 445
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig fixedFieldTypes: "

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

.method public setIgnoreSyntheticFields(Z)V
    .locals 2

    .line 432
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    .line 433
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig ignoreSyntheticFields: "

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

.method public setSerializeTransient(Z)V
    .locals 2

    .line 465
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    .line 466
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig serializeTransient: "

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

.method public setVariableLengthEncoding(Z)V
    .locals 2

    .line 478
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    .line 479
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldSerializerConfig variable length encoding: "

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
