.class public Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "VersionFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;,
        Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$Since;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final config:Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

.field private fieldVersion:[I

.field private typeVersion:I


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;)V

    .line 58
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->setAcceptsNull(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->initializeCachedFields()V

    return-void
.end method


# virtual methods
.method public getVersionFieldSerializerConfig()Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

    return-object v0
.end method

.method protected initializeCachedFields()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 66
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->fieldVersion:[I

    .line 67
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 68
    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 69
    const-class v5, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$Since;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$Since;

    if-eqz v4, :cond_0

    .line 71
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->fieldVersion:[I

    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$Since;->value()I

    move-result v4

    aput v4, v5, v3

    .line 73
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->fieldVersion:[I

    aget v4, v4, v3

    iget v5, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->typeVersion:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->typeVersion:I

    goto :goto_1

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->fieldVersion:[I

    aput v2, v4, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_1
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version for type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->typeVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 115
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;

    iget-boolean v1, v1, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer$VersionFieldSerializerConfig;->compatible:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->typeVersion:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Version is not compatible: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " != "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->typeVersion:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->pushTypeVariables()I

    move-result v1

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    .line 121
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 124
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    .line 126
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->fieldVersion:[I

    aget v4, v4, v3

    if-le v4, v0, :cond_3

    .line 127
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skip field: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_3
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v5

    const-string v6, "Read"

    invoke-virtual {p0, v6, v4, v5}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 131
    :cond_4
    aget-object v4, p1, v3

    invoke-virtual {v4, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    :cond_6
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->popTypeVariables(I)V

    return-object p3
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    .line 88
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->initializeCachedFields()V

    return-void
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->initializeCachedFields()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 93
    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->pushTypeVariables()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 101
    iget v2, p0, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->typeVersion:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p2, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 103
    array-length v2, v1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 104
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v3, :cond_1

    aget-object v3, v1, p1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v4

    const-string v5, "Write"

    invoke-virtual {p0, v5, v3, v4}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 105
    :cond_1
    aget-object v3, v1, p1

    invoke-virtual {v3, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/VersionFieldSerializer;->popTypeVariables(I)V

    return-void
.end method
