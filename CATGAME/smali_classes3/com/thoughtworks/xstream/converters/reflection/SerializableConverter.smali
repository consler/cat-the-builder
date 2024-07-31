.class public Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.source "SerializableConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_SERIALIZATION:Ljava/lang/String; = "serialization"

.field private static final ATTRIBUTE_VALUE_CUSTOM:Ljava/lang/String; = "custom"

.field private static final ELEMENT_DEFAULT:Ljava/lang/String; = "default"

.field private static final ELEMENT_FIELD:Ljava/lang/String; = "field"

.field private static final ELEMENT_FIELDS:Ljava/lang/String; = "fields"

.field private static final ELEMENT_NULL:Ljava/lang/String; = "null"

.field private static final ELEMENT_UNSERIALIZABLE_PARENTS:Ljava/lang/String; = "unserializable-parents"

.field static synthetic class$java$io$Serializable:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private final classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 3
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 98
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    new-instance v1, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p3, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 83
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 84
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .line 91
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;
    .param p1, "x1"    # Ljava/io/ObjectStreamField;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/Object;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->readField(Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 107
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private isSerializable(Ljava/lang/Class;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;

    .line 106
    if-eqz p1, :cond_5

    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    const-string v1, "java.io.Serializable"

    if-nez v0, :cond_0

    .line 107
    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1, v2}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsWriteObject(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->hierarchyFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    if-nez v3, :cond_3

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->canAccess(Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 116
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_4
    return v2

    .line 118
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private readField(Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Ljava/io/ObjectStreamField;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "instance"    # Ljava/lang/Object;

    .line 295
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/thoughtworks/xstream/core/util/Fields;->find(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 296
    .local v0, "javaField":Ljava/lang/reflect/Field;
    invoke-static {v0, p3}, Lcom/thoughtworks/xstream/core/util/Fields;->read(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 102
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 17
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 122
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v0, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "serialization"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "attributeName":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 124
    const-string v0, "custom"

    invoke-interface {v10, v12, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    const/4 v0, 0x1

    new-array v13, v0, [Ljava/lang/Class;

    .line 129
    .local v13, "currentType":[Ljava/lang/Class;
    new-array v1, v0, [Z

    const/4 v14, 0x0

    aput-boolean v14, v1, v14

    move-object v15, v1

    .line 131
    .local v15, "writtenClassWrapper":[Z
    new-instance v16, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v13

    move-object/from16 v6, p1

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;[Ljava/lang/Class;Ljava/lang/Object;[Z)V

    .line 235
    .local v1, "callback":Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;
    const/4 v2, 0x0

    .line 236
    .local v2, "mustHandleUnserializableParent":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->hierarchyFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 237
    .local v3, "classHieararchy":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v13, v14

    .line 239
    sget-object v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "java.io.Serializable"

    invoke-static {v4}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    :goto_1
    aget-object v5, v13, v14

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 240
    const/4 v2, 0x1

    .line 241
    goto :goto_0

    .line 243
    :cond_3
    if-eqz v2, :cond_4

    .line 244
    invoke-virtual {v8, v10, v11, v9}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->marshalUnserializableParent(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;)V

    .line 245
    const/4 v2, 0x0

    .line 247
    :cond_4
    iget-object v4, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v5, v13, v14

    invoke-virtual {v4, v5, v14}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsWriteObject(Ljava/lang/Class;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "class"

    if-eqz v4, :cond_6

    .line 248
    :try_start_1
    aput-boolean v0, v15, v14

    .line 249
    iget-object v4, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v6, v13, v14

    invoke-interface {v4, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 250
    aget-object v4, v13, v14

    iget-object v6, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v7, v13, v14

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_5

    .line 251
    iget-object v4, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "classAttributeName":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 253
    aget-object v5, v13, v14

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v4    # "classAttributeName":Ljava/lang/String;
    :cond_5
    invoke-static {v11, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    move-result-object v4

    .line 257
    .local v4, "objectOutputStream":Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;
    iget-object v5, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v6, v13, v14

    invoke-virtual {v5, v6, v9, v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callWriteObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    .line 258
    invoke-virtual {v4}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;->popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;

    .line 259
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 260
    .end local v4    # "objectOutputStream":Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;
    goto :goto_0

    :cond_6
    iget-object v4, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v6, v13, v14

    invoke-virtual {v4, v6, v14}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 264
    aput-boolean v0, v15, v14

    .line 265
    iget-object v4, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v6, v13, v14

    invoke-interface {v4, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 266
    aget-object v4, v13, v14

    iget-object v6, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v7, v13, v14

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-eq v4, v6, :cond_7

    .line 267
    iget-object v4, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "classAttributeName":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 269
    aget-object v5, v13, v14

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v4    # "classAttributeName":Ljava/lang/String;
    :cond_7
    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;->defaultWriteObject()V

    .line 273
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0

    .line 275
    :cond_8
    aput-boolean v14, v15, v14

    .line 276
    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;->defaultWriteObject()V

    .line 277
    aget-boolean v4, v15, v14

    if-eqz v4, :cond_1

    .line 278
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 285
    .end local v2    # "mustHandleUnserializableParent":Z
    .end local v3    # "classHieararchy":Ljava/util/Iterator;
    :cond_9
    nop

    .line 286
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Cannot write defaults"

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected doMarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 460
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 465
    :goto_0
    return-void
.end method

.method public doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 314
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 316
    .local v0, "currentType":[Ljava/lang/Class;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "serialization"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "attributeName":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-interface {p2, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot deserialize object with new readObject()/writeObject() methods"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_1
    :goto_0
    new-instance v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 428
    .local v1, "callback":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    :goto_1
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 429
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 430
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "nodeName":Ljava/lang/String;
    const-string v3, "unserializable-parents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    goto :goto_3

    .line 434
    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {p2, v3}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "classAttribute":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 436
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v6, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v4

    goto :goto_2

    .line 438
    :cond_3
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v4

    .line 440
    :goto_2
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6, v4}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 441
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 442
    invoke-static {p3, v1, v5}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    move-result-object v5

    .line 443
    .local v5, "objectInputStream":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v4, v0, v4

    invoke-virtual {v6, v4, p1, v5}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callReadObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectInputStream;)V

    .line 444
    invoke-virtual {v5}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    .line 445
    .end local v5    # "objectInputStream":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    goto :goto_3

    .line 447
    :cond_4
    :try_start_0
    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->defaultReadObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    nop

    .line 453
    .end local v3    # "classAttribute":Ljava/lang/String;
    :goto_3
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 454
    .end local v2    # "nodeName":Ljava/lang/String;
    goto :goto_1

    .line 448
    .restart local v2    # "nodeName":Ljava/lang/String;
    .restart local v3    # "classAttribute":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 449
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v6, "Cannot read defaults"

    invoke-direct {v5, v6, v4}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 456
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v3    # "classAttribute":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    return-object p1
.end method

.method protected doUnmarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected hierarchyFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, "result":Ljava/util/List;
    :goto_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$lang$Object:Ljava/lang/Class;

    :cond_0
    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    .line 302
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 309
    return-object v0
.end method

.method protected marshalUnserializableParent(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p3, "replacedSource"    # Ljava/lang/Object;

    .line 289
    const-string v0, "unserializable-parents"

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p3, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 291
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 292
    return-void
.end method
