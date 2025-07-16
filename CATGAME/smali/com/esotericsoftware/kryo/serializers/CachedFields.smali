.class Lcom/esotericsoftware/kryo/serializers/CachedFields;
.super Ljava/lang/Object;
.source "CachedFields.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
        ">;"
    }
.end annotation


# static fields
.field static final emptyCachedFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;


# instance fields
.field private access:Ljava/lang/Object;

.field copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

.field fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

.field private final removedFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 74
    sput-object v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->emptyCachedFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 77
    iput-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 78
    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    .line 83
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    return-void
.end method

.method private addField(Ljava/lang/reflect/Field;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 115
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 116
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v5, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v5, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->config:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;

    .line 118
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->ignoreSyntheticFields:Z

    if-eqz v6, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "kryo"

    if-nez v6, :cond_4

    .line 121
    iget-boolean v6, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->setFieldsAsAccessible:Z

    if-nez v6, :cond_2

    return-void

    .line 123
    :cond_2
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set field as accessible: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 130
    :cond_4
    :goto_0
    const-class v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;

    if-eqz v6, :cond_5

    .line 131
    iget-object v9, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v9, v9, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/Kryo;->getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v9

    invoke-interface {v6}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Optional;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/esotericsoftware/kryo/util/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    return-void

    .line 133
    :cond_5
    iget-object v6, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    .line 135
    :cond_6
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 136
    iget-boolean v9, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    if-nez v9, :cond_7

    iget-boolean v9, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    if-nez v9, :cond_7

    return-void

    .line 138
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    .line 139
    new-instance v10, Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iget-object v11, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v11, v11, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-direct {v10, v9, v11, v12}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 140
    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Class;

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    goto :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    :goto_1
    const/4 v12, -0x1

    if-eqz p2, :cond_a

    .line 143
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v13

    if-nez v13, :cond_a

    .line 144
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    invoke-virtual {v11}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 147
    :try_start_1
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/esotericsoftware/reflectasm/FieldAccess;->get(Ljava/lang/Class;)Lcom/esotericsoftware/reflectasm/FieldAccess;

    move-result-object v0

    iput-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    .line 148
    :cond_9
    iget-object v0, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    check-cast v0, Lcom/esotericsoftware/reflectasm/FieldAccess;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getIndex(Ljava/lang/reflect/Field;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 150
    sget-boolean v13, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v13, :cond_a

    const-string v13, "Unable to use ReflectASM."

    invoke-static {v8, v13, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    move v0, v12

    .line 155
    :goto_2
    sget-boolean v13, Lcom/esotericsoftware/kryo/util/Util;->unsafe:Z

    if-eqz v13, :cond_b

    .line 156
    invoke-direct {v1, v2, v11, v10}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newUnsafeField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    goto :goto_3

    :cond_b
    if-eq v0, v12, :cond_c

    .line 158
    invoke-direct {v1, v2, v11, v10}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newAsmField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v10

    .line 159
    iget-object v12, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->access:Ljava/lang/Object;

    check-cast v12, Lcom/esotericsoftware/reflectasm/FieldAccess;

    iput-object v12, v10, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    .line 160
    iput v0, v10, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->accessIndex:I

    move-object v0, v10

    goto :goto_3

    .line 162
    :cond_c
    invoke-direct {v1, v2, v11, v10}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newReflectField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    .line 164
    :goto_3
    iget-boolean v10, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->varEncoding:Z

    iput-boolean v10, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->varEncoding:Z

    .line 165
    iget-boolean v10, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->extendedFieldNames:Z

    if-eqz v10, :cond_d

    .line 166
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    goto :goto_4

    .line 168
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    .line 170
    :goto_4
    instance-of v10, v0, Lcom/esotericsoftware/kryo/serializers/ReflectField;

    const-string v12, ")"

    const-string v13, " ("

    const-string v14, " field: "

    const-string v15, "Cached "

    const/16 v16, 0x0

    if-eqz v10, :cond_11

    .line 171
    iget-boolean v10, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    if-eqz v10, :cond_e

    const-class v10, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$NotNull;

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_5

    :cond_e
    move/from16 v7, v16

    :goto_5
    iput-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    .line 172
    iget-object v7, v1, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v7, v7, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v7, v11}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-boolean v7, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fixedFieldTypes:Z

    if-eqz v7, :cond_10

    :cond_f
    iput-object v11, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 174
    :cond_10
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v7, :cond_13

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v8, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 179
    :cond_11
    const-class v10, Ljava/lang/String;

    if-ne v11, v10, :cond_12

    iget-boolean v10, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->fieldsCanBeNull:Z

    if-eqz v10, :cond_12

    goto :goto_6

    :cond_12
    move/from16 v7, v16

    :goto_6
    iput-boolean v7, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->canBeNull:Z

    .line 180
    iput-object v11, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->valueClass:Ljava/lang/Class;

    .line 182
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v7, :cond_13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v8, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_13
    :goto_7
    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->applyAnnotations(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    if-eqz v6, :cond_15

    .line 189
    iget-boolean v2, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->serializeTransient:Z

    if-eqz v2, :cond_14

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_14
    iget-boolean v2, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$FieldSerializerConfig;->copyTransient:Z

    if-eqz v2, :cond_16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 192
    :cond_15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_8
    return-void
.end method

.method private applyAnnotations(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 7

    .line 317
    iget-object v0, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 320
    const-class v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "."

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-nez v1, :cond_3

    .line 325
    const-class v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    .line 327
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->valueClass()Ljava/lang/Class;

    move-result-object v4

    .line 328
    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    move-object v4, v3

    :cond_0
    if-eqz v4, :cond_1

    .line 329
    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setValueClass(Ljava/lang/Class;)V

    .line 331
    :cond_1
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->serializer()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->serializerFactory()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 332
    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 334
    :cond_2
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->canBeNull()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setCanBeNull(Z)V

    .line 335
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->variableLengthEncoding()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setVariableLengthEncoding(Z)V

    .line 336
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->optimizePositive()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setOptimizePositive(Z)V

    goto :goto_0

    .line 322
    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "@Bind applied to a field that already has a serializer: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 323
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_4
    :goto_0
    const-class v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 341
    iget-object v1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-nez v1, :cond_9

    .line 345
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 347
    const-class v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    .line 349
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementClass()Ljava/lang/Class;

    move-result-object v4

    .line 350
    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_5

    move-object v4, v3

    .line 351
    :cond_5
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementSerializer()Ljava/lang/Class;

    move-result-object v5

    .line 352
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementSerializerFactory()Ljava/lang/Class;

    move-result-object v6

    .line 351
    invoke-direct {p0, v4, v5, v6}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v5

    .line 354
    new-instance v6, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;

    invoke-direct {v6}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;-><init>()V

    .line 355
    invoke-interface {v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementsCanBeNull()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementsCanBeNull(Z)V

    if-eqz v4, :cond_6

    .line 356
    invoke-virtual {v6, v4}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementClass(Ljava/lang/Class;)V

    :cond_6
    if-eqz v5, :cond_7

    .line 357
    invoke-virtual {v6, v5}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 358
    :cond_7
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_1

    .line 345
    :cond_8
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@BindCollection can only be used with a field implementing Collection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_9
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "@BindCollection applied to a field that already has a serializer: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 343
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_a
    :goto_1
    const-class v1, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 363
    iget-object v1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    if-nez v1, :cond_12

    .line 367
    const-class v1, Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 369
    const-class v1, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    .line 371
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueClass()Ljava/lang/Class;

    move-result-object v1

    .line 372
    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_b

    move-object v1, v3

    .line 373
    :cond_b
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueSerializer()Ljava/lang/Class;

    move-result-object v2

    .line 374
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueSerializerFactory()Ljava/lang/Class;

    move-result-object v4

    .line 373
    invoke-direct {p0, v1, v2, v4}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    .line 376
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keyClass()Ljava/lang/Class;

    move-result-object v4

    .line 377
    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_c

    goto :goto_2

    :cond_c
    move-object v3, v4

    .line 378
    :goto_2
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keySerializer()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keySerializerFactory()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    .line 380
    new-instance v5, Lcom/esotericsoftware/kryo/serializers/MapSerializer;

    invoke-direct {v5}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;-><init>()V

    .line 381
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keysCanBeNull()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeysCanBeNull(Z)V

    .line 382
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valuesCanBeNull()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValuesCanBeNull(Z)V

    if-eqz v3, :cond_d

    .line 383
    invoke-virtual {v5, v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeyClass(Ljava/lang/Class;)V

    :cond_d
    if-eqz v4, :cond_e

    .line 384
    invoke-virtual {v5, v4}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeySerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    :cond_e
    if-eqz v1, :cond_f

    .line 385
    invoke-virtual {v5, v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValueClass(Ljava/lang/Class;)V

    :cond_f
    if-eqz v2, :cond_10

    .line 386
    invoke-virtual {v5, v2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValueSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 387
    :cond_10
    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_3

    .line 368
    :cond_11
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@BindMap can only be used with a field implementing Map: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_12
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "@BindMap applied to a field that already has a serializer: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    .line 365
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_3
    return-void
.end method

.method private newAsmField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 1

    .line 215
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$IntAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$IntAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 217
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 218
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$BooleanAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$BooleanAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 219
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$LongAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 220
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$DoubleAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$DoubleAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 221
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$ShortAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$ShortAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 222
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$CharAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$CharAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 223
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$ByteAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$ByteAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 225
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 226
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Kryo;->getReferences()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Kryo;->getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 227
    :cond_8
    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField$StringAsmField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/AsmField$StringAsmField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 228
    :cond_9
    new-instance p2, Lcom/esotericsoftware/kryo/serializers/AsmField;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {p2, p1, v0, p3}, Lcom/esotericsoftware/kryo/serializers/AsmField;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    return-object p2
.end method

.method private newReflectField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 1

    .line 232
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$IntReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$IntReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 234
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$FloatReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$FloatReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 235
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$BooleanReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$BooleanReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 236
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$LongReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$LongReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 237
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$DoubleReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$DoubleReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 238
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$ShortReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 239
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$CharReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$CharReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 240
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField$ByteReflectField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/ReflectField$ByteReflectField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 242
    :cond_7
    new-instance p2, Lcom/esotericsoftware/kryo/serializers/ReflectField;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {p2, p1, v0, p3}, Lcom/esotericsoftware/kryo/serializers/ReflectField;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    return-object p2
.end method

.method private newSerializer(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 2

    .line 392
    const-class v0, Lcom/esotericsoftware/kryo/Serializer;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move-object p2, v1

    .line 393
    :cond_0
    const-class v0, Lcom/esotericsoftware/kryo/SerializerFactory;

    if-ne p3, v0, :cond_1

    move-object p3, v1

    :cond_1
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 394
    const-class p3, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;

    :cond_2
    if-nez p3, :cond_3

    return-object v1

    .line 396
    :cond_3
    invoke-static {p3, p2}, Lcom/esotericsoftware/kryo/util/Util;->newFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/SerializerFactory;

    move-result-object p2

    iget-object p3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p3, p3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-interface {p2, p3, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object p1

    return-object p1
.end method

.method private newUnsafeField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 1

    .line 198
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$IntUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$IntUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 200
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$FloatUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$FloatUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 201
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$BooleanUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$BooleanUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 202
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$LongUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$LongUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 203
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$DoubleUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$DoubleUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 204
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 205
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 206
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ByteUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ByteUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 208
    :cond_7
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 209
    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Kryo;->getReferences()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Kryo;->getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 210
    :cond_8
    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField$StringUnsafeField;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/serializers/UnsafeField$StringUnsafeField;-><init>(Ljava/lang/reflect/Field;)V

    return-object p2

    .line 211
    :cond_9
    new-instance p2, Lcom/esotericsoftware/kryo/serializers/UnsafeField;

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-direct {p2, p1, v0, p3}, Lcom/esotericsoftware/kryo/serializers/UnsafeField;-><init>(Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    return-object p2
.end method


# virtual methods
.method public compare(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)I
    .locals 0

    .line 247
    iget-object p1, p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 73
    check-cast p1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    check-cast p2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->compare(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)I

    move-result p1

    return p1
.end method

.method public rebuild()V
    .locals 9

    .line 87
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->emptyCachedFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 89
    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 90
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->initializeCachedFields()V

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    sget-boolean v2, Lcom/esotericsoftware/kryo/util/Util;->unsafe:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v4, v4, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    .line 97
    :goto_1
    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    .line 98
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 99
    invoke-direct {p0, v8, v2, v0, v1}, Lcom/esotericsoftware/kryo/serializers/CachedFields;->addField(Ljava/lang/reflect/Field;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v2, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 107
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v0, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 111
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->initializeCachedFields()V

    return-void
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 285
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 287
    array-length v5, v2

    sub-int/2addr v5, v4

    new-array v6, v5, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 288
    invoke-static {v2, v0, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v5, v1

    invoke-static {v2, v7, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iput-object v6, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 291
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v2, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    move v2, v0

    .line 296
    :goto_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 297
    aget-object v5, v3, v2

    if-ne v5, p1, :cond_2

    .line 299
    array-length v1, v3

    sub-int/2addr v1, v4

    new-array v6, v1, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 300
    invoke-static {v3, v0, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v3, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iput-object v6, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 303
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v1, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    return-void

    .line 309
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" not found on class: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 254
    aget-object v2, v2, v1

    .line 255
    iget-object v3, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v5, v3

    sub-int/2addr v5, v4

    new-array v6, v5, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 257
    invoke-static {v3, v0, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v5, v1

    invoke-static {v3, v7, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iput-object v6, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->fields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 260
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    move v2, v0

    .line 265
    :goto_2
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 266
    aget-object v3, v3, v2

    .line 267
    iget-object v5, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    array-length v5, v1

    sub-int/2addr v5, v4

    new-array v6, v5, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 269
    invoke-static {v1, v0, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v5, v2

    invoke-static {v0, v1, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v6, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->copyFields:[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 272
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->removedFields:Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    return-void

    .line 278
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Field \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" not found on class: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/CachedFields;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, v1, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
