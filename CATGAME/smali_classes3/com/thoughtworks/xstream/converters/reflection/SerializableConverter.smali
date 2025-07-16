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
    .locals 2

    .line 98
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    new-instance p2, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 84
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->readField(Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 107
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private isSerializable(Ljava/lang/Class;)Z
    .locals 5

    if-eqz p1, :cond_5

    .line 106
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    const-string v1, "java.io.Serializable"

    if-nez v0, :cond_0

    .line 107
    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    const/4 v2, 0x1

    .line 109
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

    move-result p1

    return p1

    :cond_4
    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private readField(Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 295
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/thoughtworks/xstream/core/util/Fields;->find(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 296
    invoke-static {p1, p3}, Lcom/thoughtworks/xstream/core/util/Fields;->read(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->canCreateDerivedObjectOutputStream()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 12

    .line 122
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "serialization"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "custom"

    .line 124
    invoke-interface {p2, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/Class;

    new-array v9, v0, [Z

    const/4 v10, 0x0

    aput-boolean v10, v9, v10

    .line 131
    new-instance v11, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v8

    move-object v6, p1

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;[Ljava/lang/Class;Ljava/lang/Object;[Z)V

    .line 236
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->hierarchyFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v10

    .line 237
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v8, v10

    .line 239
    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "java.io.Serializable"

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    :cond_2
    aget-object v4, v8, v10

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 244
    invoke-virtual {p0, p2, p3, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->marshalUnserializableParent(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;)V

    move v2, v10

    .line 247
    :cond_4
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v4, v8, v10

    invoke-virtual {v3, v4, v10}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsWriteObject(Ljava/lang/Class;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "class"

    if-eqz v3, :cond_6

    :try_start_1
    aput-boolean v0, v9, v10

    .line 249
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v5, v8, v10

    invoke-interface {v3, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    aget-object v3, v8, v10

    .line 250
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v6, v8, v10

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    if-eq v3, v5, :cond_5

    .line 251
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    aget-object v4, v8, v10

    .line 253
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_5
    invoke-static {p3, v11}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    move-result-object v3

    .line 257
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v5, v8, v10

    invoke-virtual {v4, v5, p1, v3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callWriteObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    .line 258
    invoke-virtual {v3}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;->popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;

    .line 259
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0

    .line 260
    :cond_6
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v5, v8, v10

    invoke-virtual {v3, v5, v10}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    aput-boolean v0, v9, v10

    .line 265
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v5, v8, v10

    invoke-interface {v3, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    aget-object v3, v8, v10

    .line 266
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v6, v8, v10

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    if-eq v3, v5, :cond_7

    .line 267
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    aget-object v4, v8, v10

    .line 269
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_7
    invoke-interface {v11}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;->defaultWriteObject()V

    .line 273
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0

    :cond_8
    aput-boolean v10, v9, v10

    .line 276
    invoke-interface {v11}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;->defaultWriteObject()V

    aget-boolean v3, v9, v10

    if-eqz v3, :cond_1

    .line 278
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    .line 284
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string p3, "Cannot write defaults"

    invoke-direct {p2, p3, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected doMarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

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

    :goto_0
    return-void
.end method

.method public doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 316
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "serialization"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "custom"

    .line 317
    invoke-interface {p2, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string p2, "Cannot deserialize object with new readObject()/writeObject() methods"

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_1
    :goto_0
    new-instance v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 428
    :goto_1
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 430
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unserializable-parents"

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    goto :goto_3

    .line 434
    :cond_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {p2, v2}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 436
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_2

    .line 438
    :cond_3
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    .line 440
    :goto_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 442
    invoke-static {p3, v7, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    move-result-object v1

    .line 443
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    aget-object v3, v0, v3

    invoke-virtual {v2, v3, p1, v1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callReadObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectInputStream;)V

    .line 444
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    goto :goto_3

    .line 447
    :cond_4
    :try_start_0
    invoke-interface {v7}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->defaultReadObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_3
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 449
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string p3, "Cannot read defaults"

    invoke-direct {p2, p3, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    return-object p1
.end method

.method protected doUnmarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1

    .line 468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected hierarchyFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 2

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
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

    return-object v0
.end method

.method protected marshalUnserializableParent(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "unserializable-parents"

    .line 289
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p3, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 291
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method
