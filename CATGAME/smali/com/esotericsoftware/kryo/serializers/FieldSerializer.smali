.class public Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "FieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$NotNull;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;,
        Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/Serializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

.field final config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

.field private final genericsHierarchy:Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;

.field final kryo:Lcom/esotericsoftware/kryo/Kryo;

.field final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;

    .line 68
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;)V
    .locals 3
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "config"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    .line 71
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 72
    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    if-eqz p3, :cond_0

    .line 75
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 76
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    .line 77
    iput-object p3, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    .line 79
    new-instance v0, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->genericsHierarchy:Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;

    .line 81
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/serializers/CachedFields;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    .line 82
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->rebuild()V

    .line 83
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type cannot be a primitive class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    .local p2, "original":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "copy":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v2, v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 217
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->copy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return-object v0
.end method

.method protected create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    .local p2, "original":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCopyFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 1

    .line 195
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 173
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 174
    .local v3, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget-object v4, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 173
    .end local v3    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found on class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldSerializerConfig()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;
    .locals 1

    .line 92
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    return-object v0
.end method

.method public getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 1

    .line 190
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    return-object v0
.end method

.method public getKryo()Lcom/esotericsoftware/kryo/Kryo;
    .locals 1

    .line 203
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 199
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    return-object v0
.end method

.method protected initializeCachedFields()V
    .locals 0

    .line 88
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    return-void
.end method

.method protected log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "cachedField"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .param p3, "position"    # I

    .line 156
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    instance-of v0, p2, Lcom/esotericsoftware/kryo/serializers/ReflectField;

    if-eqz v0, :cond_1

    .line 157
    move-object v0, p2

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/ReflectField;

    .line 158
    .local v0, "reflectField":Lcom/esotericsoftware/kryo/serializers/ReflectField;
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/ReflectField;->resolveFieldClass()Ljava/lang/Class;

    move-result-object v1

    .line 159
    .local v1, "fieldClass":Ljava/lang/Class;
    if-nez v1, :cond_0

    iget-object v2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 160
    :cond_0
    iget-object v2, v0, Lcom/esotericsoftware/kryo/serializers/ReflectField;->genericType:Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    invoke-static {v1, v2}, Lcom/esotericsoftware/kryo/util/Util;->simpleName(Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .end local v1    # "fieldClass":Ljava/lang/Class;
    .local v0, "fieldClassName":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v0    # "fieldClassName":Ljava/lang/String;
    :cond_1
    iget-object v0, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fieldClassName":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v0    # "fieldClassName":Ljava/lang/String;
    :cond_2
    iget-object v0, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "fieldClassName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 168
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v2, "kryo"

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected popTypeVariables(I)V
    .locals 1
    .param p1, "pop"    # I

    .line 141
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v0

    .line 142
    .local v0, "generics":Lcom/esotericsoftware/kryo/util/Generics;
    if-lez p1, :cond_0

    .line 143
    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/util/Generics;->popTypeVariables(I)V

    .line 145
    :cond_0
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    .line 146
    return-void
.end method

.method protected pushTypeVariables()I
    .locals 4

    .line 132
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/util/Generics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v0

    .line 133
    .local v0, "genericTypes":[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->genericsHierarchy:Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;

    invoke-interface {v1, v2, v0}, Lcom/esotericsoftware/kryo/util/Generics;->pushTypeVariables(Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;[Lcom/esotericsoftware/kryo/util/Generics$GenericType;)I

    move-result v1

    .line 136
    .local v1, "pop":I
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kryo"

    invoke-static {v3, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    return v1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result v0

    .line 116
    .local v0, "pop":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 120
    .local v2, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 121
    sget-boolean v5, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v5, :cond_0

    aget-object v5, v2, v3

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v6

    const-string v7, "Read"

    invoke-virtual {p0, v7, v5, v6}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 122
    :cond_0
    aget-object v5, v2, v3

    invoke-virtual {v5, p2, v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    .line 126
    return-object v1
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 1
    .param p1, "field"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 185
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    .line 186
    return-void
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 180
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removeField(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public updateFields()V
    .locals 2

    .line 97
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update fields: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->rebuild()V

    .line 99
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 7
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/FieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->pushTypeVariables()I

    move-result v0

    .line 104
    .local v0, "pop":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->cachedFields:Lcom/esotericsoftware/kryo/serializers/CachedFields;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 105
    .local v1, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 106
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v5

    const-string v6, "Write"

    invoke-virtual {p0, v6, v4, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->log(Ljava/lang/String;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;I)V

    .line 107
    :cond_0
    aget-object v4, v1, v2

    invoke-virtual {v4, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->popTypeVariables(I)V

    .line 111
    return-void
.end method
