.class public abstract Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.super Ljava/lang/Object;
.source "AbstractReflectionConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldMarshaller;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$UnknownFieldException;,
        Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;
    }
.end annotation


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;

.field static synthetic class$java$util$Map$Entry:Ljava/lang/Class;


# instance fields
.field protected final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private transient pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field protected final reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field protected transient serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

.field protected transient serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 61
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 62
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    .line 63
    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    .line 64
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 183
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

.method private handleUnknownField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "classDefiningField"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "resultType"    # Ljava/lang/Class;
    .param p4, "originalNodeName"    # Ljava/lang/String;

    .line 513
    if-nez p1, :cond_1

    .line 514
    move-object v0, p3

    .local v0, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_1

    .line 515
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v0, p4}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    return-void

    .line 514
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 520
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$UnknownFieldException;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$UnknownFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private readDeclaringClass(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Class;
    .locals 3
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .line 564
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "defined-in"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "attributeName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "definedIn":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private writeValueToImplicitCollection(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "implicitCollections"    # Ljava/util/Map;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "fieldLocation"    # Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;

    .line 524
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 525
    .local v0, "collection":Ljava/util/Collection;
    if-nez v0, :cond_9

    .line 526
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v2, p4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    iget-object v3, p4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 527
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v4, p4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    .line 529
    invoke-interface {v3, p3, v4, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    :goto_0
    nop

    .line 530
    .local v3, "physicalFieldType":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 531
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;-><init>(Ljava/lang/Class;)V

    move-object v0, v2

    goto/16 :goto_4

    .line 533
    :cond_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 534
    .local v4, "fieldType":Ljava/lang/Class;
    sget-object v5, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v5, :cond_2

    const-string v5, "java.util.Collection"

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Collection:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Map:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "java.util.Map"

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Map:Ljava/lang/Class;

    .line 535
    :cond_3
    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 536
    :cond_4
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v5, "Field is configured for an implicit Collection or Map, but is of an incompatible type"

    invoke-direct {v2, v5}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    .line 538
    .local v2, "oaex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "field"

    invoke-virtual {v2, v6, v5}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "field-type"

    invoke-virtual {v2, v6, v5}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    throw v2

    .line 542
    .end local v2    # "oaex":Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    if-nez v5, :cond_6

    .line 543
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;-><init>()V

    iput-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 545
    :cond_6
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->pureJavaReflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v5, v4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 546
    .local v5, "instance":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_7

    .line 547
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    goto :goto_2

    .line 549
    :cond_7
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v7, p4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    iget-object v8, p4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    .line 550
    invoke-interface {v6, v7, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v6

    .line 551
    .local v6, "implicitCollectionMapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    new-instance v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;

    move-object v8, v5

    check-cast v8, Ljava/util/Map;

    .line 552
    invoke-interface {v6}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getKeyFieldName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Ljava/util/Map;Ljava/lang/String;)V

    move-object v0, v7

    .line 554
    .end local v6    # "implicitCollectionMapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    :goto_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v7, p4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 555
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_3

    :cond_8
    nop

    .line 554
    :goto_3
    invoke-interface {v6, p3, v7, v5, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 558
    .end local v4    # "fieldType":Ljava/lang/Class;
    .end local v5    # "instance":Ljava/lang/Object;
    :goto_4
    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "physicalFieldType":Ljava/lang/Class;
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method


# virtual methods
.method protected canAccess(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    const-string v1, "%"

    invoke-interface {v0, p1, v1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 26
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 96
    move-object/from16 v7, p0

    move-object/from16 v8, p3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, "fields":Ljava/util/List;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 98
    .local v9, "defaultFieldDefinition":Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 101
    .local v10, "sourceType":Ljava/lang/Class;
    iget-object v11, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    new-instance v12, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p1

    move-object v4, v10

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/util/List;)V

    move-object/from16 v13, p1

    invoke-interface {v11, v13, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    .line 144
    new-instance v11, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;

    move-object v0, v11

    move-object/from16 v2, p2

    move-object v3, v10

    move-object v4, v9

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/Class;Ljava/util/Map;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 195
    .local v11, "fieldMarshaller":Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldMarshaller;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 196
    .local v12, "hiddenMappers":Ljava/util/Map;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "fieldIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 197
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;

    .line 198
    .local v15, "info":Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;
    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 199
    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/reflect/Field;

    .line 200
    .local v16, "defaultField":Ljava/lang/reflect/Field;
    iget-object v0, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 202
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    move-object v1, v10

    goto :goto_1

    :cond_0
    iget-object v1, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    :goto_1
    iget-object v2, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    .line 201
    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v0

    .line 204
    .local v0, "mapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    if-eqz v0, :cond_2

    .line 205
    iget-object v1, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 206
    .local v1, "mappings":Ljava/util/Set;
    if-nez v1, :cond_1

    .line 207
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 208
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 211
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    const/4 v0, 0x0

    move-object/from16 v17, v0

    goto :goto_3

    .line 216
    .end local v1    # "mappings":Ljava/util/Set;
    :cond_2
    :goto_2
    move-object/from16 v17, v0

    .end local v0    # "mapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .local v17, "mapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    :goto_3
    if-eqz v17, :cond_f

    .line 217
    instance-of v0, v8, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_3

    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-eq v0, v1, :cond_3

    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-eq v0, v1, :cond_3

    .line 221
    move-object v0, v8

    check-cast v0, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    .line 222
    .local v0, "refContext":Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;
    iget-object v1, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;->registerImplicit(Ljava/lang/Object;)V

    .line 225
    .end local v0    # "refContext":Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;
    :cond_3
    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    instance-of v5, v0, Ljava/util/Collection;

    .line 226
    .local v5, "isCollection":Z
    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    instance-of v4, v0, Ljava/util/Map;

    .line 227
    .local v4, "isMap":Z
    if-eqz v4, :cond_4

    invoke-interface/range {v17 .. v17}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getKeyFieldName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move/from16 v18, v0

    .line 228
    .local v18, "isEntry":Z
    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v19

    .line 229
    .local v19, "isArray":Z
    if-eqz v19, :cond_5

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;

    iget-object v1, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/ArrayIterator;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    .line 231
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_5

    :cond_6
    if-eqz v18, :cond_7

    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 232
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_5

    :cond_7
    iget-object v0, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 233
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    move-object/from16 v20, v0

    .local v20, "iter":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 234
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 237
    .local v21, "obj":Ljava/lang/Object;
    if-nez v21, :cond_9

    .line 238
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$lang$Object:Ljava/lang/Class;

    .line 239
    .local v0, "itemType":Ljava/lang/Class;
    :cond_8
    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .local v1, "itemName":Ljava/lang/String;
    goto :goto_9

    .line 240
    .end local v0    # "itemType":Ljava/lang/Class;
    .end local v1    # "itemName":Ljava/lang/String;
    :cond_9
    if-eqz v18, :cond_c

    .line 241
    invoke-interface/range {v17 .. v17}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 242
    invoke-interface/range {v17 .. v17}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_a
    iget-object v0, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v1, :cond_b

    .line 243
    const-string v1, "java.util.Map$Entry"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Map$Entry:Ljava/lang/Class;

    goto :goto_7

    :cond_b
    nop

    :goto_7
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    nop

    .line 244
    .local v0, "entryName":Ljava/lang/String;
    move-object/from16 v1, v21

    check-cast v1, Ljava/util/Map$Entry;

    .line 245
    .local v1, "entry":Ljava/util/Map$Entry;
    nop

    .line 246
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 245
    move-object/from16 v3, p2

    invoke-static {v3, v0, v2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 247
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldMarshaller;->writeItem(Ljava/lang/Object;)V

    .line 248
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldMarshaller;->writeItem(Ljava/lang/Object;)V

    .line 249
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 250
    goto :goto_6

    .line 251
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_c
    move-object/from16 v3, p2

    invoke-interface/range {v17 .. v17}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 252
    invoke-interface/range {v17 .. v17}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemType()Ljava/lang/Class;

    move-result-object v0

    .line 253
    .local v0, "itemType":Ljava/lang/Class;
    invoke-interface/range {v17 .. v17}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemFieldName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .local v1, "itemName":Ljava/lang/String;
    goto :goto_9

    .line 255
    .end local v0    # "itemType":Ljava/lang/Class;
    .end local v1    # "itemName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 256
    .restart local v0    # "itemType":Ljava/lang/Class;
    iget-object v1, v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .line 258
    .end local v0    # "itemType":Ljava/lang/Class;
    .local v22, "itemType":Ljava/lang/Class;
    .local v23, "itemName":Ljava/lang/String;
    :goto_9
    iget-object v1, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    iget-object v2, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    move-object v0, v11

    move-object/from16 v24, v2

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    move/from16 v25, v4

    .end local v4    # "isMap":Z
    .local v25, "isMap":Z
    move-object/from16 v4, v24

    move/from16 v24, v5

    .end local v5    # "isCollection":Z
    .local v24, "isCollection":Z
    move-object/from16 v5, v21

    invoke-interface/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldMarshaller;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 260
    .end local v21    # "obj":Ljava/lang/Object;
    .end local v22    # "itemType":Ljava/lang/Class;
    .end local v23    # "itemName":Ljava/lang/String;
    move/from16 v5, v24

    move/from16 v4, v25

    goto/16 :goto_6

    .line 233
    .end local v24    # "isCollection":Z
    .end local v25    # "isMap":Z
    .restart local v4    # "isMap":Z
    .restart local v5    # "isCollection":Z
    :cond_e
    move/from16 v25, v4

    move/from16 v24, v5

    .line 261
    .end local v4    # "isMap":Z
    .end local v5    # "isCollection":Z
    .end local v18    # "isEntry":Z
    .end local v19    # "isArray":Z
    .end local v20    # "iter":Ljava/util/Iterator;
    goto :goto_a

    .line 262
    :cond_f
    iget-object v1, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->fieldName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->type:Ljava/lang/Class;

    iget-object v4, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->definedIn:Ljava/lang/Class;

    iget-object v5, v15, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    move-object v0, v11

    invoke-interface/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldMarshaller;->writeField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 266
    .end local v15    # "info":Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;
    .end local v16    # "defaultField":Ljava/lang/reflect/Field;
    .end local v17    # "mapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    :cond_10
    :goto_a
    goto/16 :goto_0

    .line 267
    .end local v14    # "fieldIter":Ljava/util/Iterator;
    :cond_11
    return-void
.end method

.method public doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 22
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 283
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 284
    .local v5, "resultType":Ljava/lang/Class;
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$3;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$3;-><init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;)V

    move-object v6, v0

    .line 294
    .local v6, "seenFields":Ljava/util/Set;
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v7

    .line 295
    .local v7, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, "attrAlias":Ljava/lang/String;
    iget-object v8, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 299
    invoke-interface {v8, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->attributeForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, "attrName":Ljava/lang/String;
    iget-object v9, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v9, v5, v8}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 301
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_5

    invoke-virtual {v1, v9}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalField(Ljava/lang/reflect/Field;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 302
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    .line 303
    .local v10, "classDefiningField":Ljava/lang/Class;
    iget-object v11, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v11, v10, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 304
    goto :goto_0

    .line 308
    :cond_0
    iget-object v11, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 309
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 308
    invoke-interface {v11, v10, v8, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v11

    .line 310
    .local v11, "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 311
    .local v12, "type":Ljava/lang/Class;
    if-eqz v11, :cond_4

    .line 312
    invoke-interface {v3, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 313
    .local v13, "value":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 314
    invoke-static {v12}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    .line 316
    :cond_1
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v16, v0

    goto :goto_1

    .line 317
    :cond_2
    new-instance v14, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v15, "Cannot convert type"

    invoke-direct {v14, v15}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 318
    .local v14, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "attrAlias":Ljava/lang/String;
    .local v16, "attrAlias":Ljava/lang/String;
    const-string v0, "source-type"

    invoke-virtual {v14, v0, v15}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v15, "target-type"

    invoke-virtual {v14, v15, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    throw v14

    .line 316
    .end local v14    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    .end local v16    # "attrAlias":Ljava/lang/String;
    .restart local v0    # "attrAlias":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v0

    .line 322
    .end local v0    # "attrAlias":Ljava/lang/String;
    .restart local v16    # "attrAlias":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v0, v10, v8}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, v2, v8, v13, v10}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2

    .line 311
    .end local v13    # "value":Ljava/lang/Object;
    .end local v16    # "attrAlias":Ljava/lang/String;
    .restart local v0    # "attrAlias":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v0

    .end local v0    # "attrAlias":Ljava/lang/String;
    .restart local v16    # "attrAlias":Ljava/lang/String;
    goto :goto_2

    .line 301
    .end local v10    # "classDefiningField":Ljava/lang/Class;
    .end local v11    # "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .end local v12    # "type":Ljava/lang/Class;
    .end local v16    # "attrAlias":Ljava/lang/String;
    .restart local v0    # "attrAlias":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v0

    .line 326
    .end local v0    # "attrAlias":Ljava/lang/String;
    .end local v8    # "attrName":Ljava/lang/String;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    :goto_2
    goto/16 :goto_0

    .line 328
    :cond_6
    const/4 v0, 0x0

    move-object v8, v0

    .line 329
    .local v8, "implicitCollectionsForCurrentObject":Ljava/util/Map;
    :goto_3
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 330
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 332
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, "originalNodeName":Ljava/lang/String;
    invoke-direct {v1, v3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->readDeclaringClass(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Class;

    move-result-object v10

    .line 334
    .local v10, "explicitDeclaringClass":Ljava/lang/Class;
    if-nez v10, :cond_7

    move-object v0, v5

    goto :goto_4

    :cond_7
    move-object v0, v10

    :goto_4
    move-object v11, v0

    .line 337
    .local v11, "fieldDeclaringClass":Ljava/lang/Class;
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, v11, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 338
    .local v12, "fieldName":Ljava/lang/String;
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 339
    invoke-interface {v0, v11, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v13

    .line 341
    .local v13, "implicitCollectionMapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    const/4 v14, 0x0

    .line 342
    .local v14, "implicitFieldName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 343
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    .line 344
    .local v15, "type":Ljava/lang/Class;
    if-nez v13, :cond_19

    .line 346
    move-object/from16 v16, v0

    .end local v0    # "field":Ljava/lang/reflect/Field;
    .local v16, "field":Ljava/lang/reflect/Field;
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 347
    if-nez v16, :cond_f

    .line 349
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, v11, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 350
    .local v17, "itemType":Ljava/lang/Class;
    if-eqz v17, :cond_9

    .line 351
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v3, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "classAttribute":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 354
    move-object/from16 v18, v5

    .end local v5    # "resultType":Ljava/lang/Class;
    .local v18, "resultType":Ljava/lang/Class;
    iget-object v5, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .end local v15    # "type":Ljava/lang/Class;
    .local v5, "type":Ljava/lang/Class;
    goto :goto_5

    .line 356
    .end local v18    # "resultType":Ljava/lang/Class;
    .local v5, "resultType":Ljava/lang/Class;
    .restart local v15    # "type":Ljava/lang/Class;
    :cond_8
    move-object/from16 v18, v5

    .end local v5    # "resultType":Ljava/lang/Class;
    .restart local v18    # "resultType":Ljava/lang/Class;
    move-object/from16 v5, v17

    .line 358
    .end local v0    # "classAttribute":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/Class;
    .local v5, "type":Ljava/lang/Class;
    :goto_5
    goto :goto_7

    .line 362
    .end local v18    # "resultType":Ljava/lang/Class;
    .local v5, "resultType":Ljava/lang/Class;
    .restart local v15    # "type":Ljava/lang/Class;
    :cond_9
    move-object/from16 v18, v5

    .end local v5    # "resultType":Ljava/lang/Class;
    .restart local v18    # "resultType":Ljava/lang/Class;
    :try_start_0
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v15, v0

    .line 363
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, v11, v15, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/thoughtworks/xstream/mapper/CannotResolveClassException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    .line 367
    move-object v5, v15

    goto :goto_6

    .line 365
    :catch_0
    move-exception v0

    move-object v5, v15

    .line 368
    .end local v15    # "type":Ljava/lang/Class;
    .local v5, "type":Ljava/lang/Class;
    :goto_6
    if-eqz v5, :cond_a

    if-eqz v5, :cond_b

    if-nez v14, :cond_b

    .line 371
    :cond_a
    invoke-direct {v1, v10, v12, v11, v9}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->handleUnknownField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 375
    const/4 v5, 0x0

    .line 378
    :cond_b
    :goto_7
    if-nez v5, :cond_c

    .line 380
    const/4 v0, 0x0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_8

    .line 382
    .end local v0    # "value":Ljava/lang/Object;
    :cond_c
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "java.util.Map$Entry"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$java$util$Map$Entry:Ljava/lang/Class;

    :cond_d
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 385
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 386
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 387
    invoke-static {v3, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v0

    .line 386
    invoke-interface {v4, v2, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    .local v0, "key":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 389
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 390
    iget-object v15, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 391
    invoke-static {v3, v15}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v15

    .line 390
    invoke-interface {v4, v2, v15}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    .line 392
    .local v15, "v":Ljava/lang/Object;
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 393
    invoke-static {v0, v15}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v19

    .line 394
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 395
    .end local v15    # "v":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    goto :goto_8

    .line 397
    .end local v0    # "value":Ljava/lang/Object;
    :cond_e
    invoke-interface {v4, v2, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    .end local v17    # "itemType":Ljava/lang/Class;
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_8
    move-object/from16 v17, v7

    goto/16 :goto_11

    .line 401
    .end local v0    # "value":Ljava/lang/Object;
    .end local v18    # "resultType":Ljava/lang/Class;
    .local v5, "resultType":Ljava/lang/Class;
    .local v15, "type":Ljava/lang/Class;
    :cond_f
    move-object/from16 v18, v5

    .end local v5    # "resultType":Ljava/lang/Class;
    .restart local v18    # "resultType":Ljava/lang/Class;
    const/4 v0, 0x0

    .line 404
    .local v0, "fieldAlreadyChecked":Z
    if-nez v10, :cond_14

    move-object/from16 v5, v16

    .line 405
    .end local v16    # "field":Ljava/lang/reflect/Field;
    .local v5, "field":Ljava/lang/reflect/Field;
    :goto_9
    if-eqz v5, :cond_13

    .line 406
    invoke-virtual {v1, v5}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalField(Ljava/lang/reflect/Field;)Z

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v16, v0

    .end local v0    # "fieldAlreadyChecked":Z
    .local v16, "fieldAlreadyChecked":Z
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 408
    move-object/from16 v17, v7

    .end local v7    # "it":Ljava/util/Iterator;
    .local v17, "it":Ljava/util/Iterator;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 407
    invoke-interface {v0, v7, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_a

    .line 406
    .end local v16    # "fieldAlreadyChecked":Z
    .end local v17    # "it":Ljava/util/Iterator;
    .restart local v0    # "fieldAlreadyChecked":Z
    .restart local v7    # "it":Ljava/util/Iterator;
    :cond_10
    move/from16 v16, v0

    move-object/from16 v17, v7

    .line 407
    .end local v0    # "fieldAlreadyChecked":Z
    .end local v7    # "it":Ljava/util/Iterator;
    .restart local v16    # "fieldAlreadyChecked":Z
    .restart local v17    # "it":Ljava/util/Iterator;
    :cond_11
    const/4 v0, 0x0

    :goto_a
    move v7, v0

    .end local v16    # "fieldAlreadyChecked":Z
    .local v7, "fieldAlreadyChecked":Z
    if-nez v0, :cond_12

    .line 409
    iget-object v0, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 410
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v16

    .line 411
    move-object/from16 v19, v5

    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v19, "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 409
    invoke-interface {v0, v5, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move v0, v7

    move-object/from16 v7, v17

    .end local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    goto :goto_9

    .line 407
    :cond_12
    move-object/from16 v19, v5

    .end local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    move/from16 v16, v7

    move-object/from16 v0, v19

    goto :goto_b

    .line 405
    .end local v17    # "it":Ljava/util/Iterator;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v0    # "fieldAlreadyChecked":Z
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .local v7, "it":Ljava/util/Iterator;
    :cond_13
    move/from16 v16, v0

    move-object/from16 v19, v5

    move-object/from16 v17, v7

    .end local v0    # "fieldAlreadyChecked":Z
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "it":Ljava/util/Iterator;
    .restart local v16    # "fieldAlreadyChecked":Z
    .restart local v17    # "it":Ljava/util/Iterator;
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, v19

    goto :goto_b

    .line 404
    .end local v17    # "it":Ljava/util/Iterator;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v0    # "fieldAlreadyChecked":Z
    .restart local v7    # "it":Ljava/util/Iterator;
    .local v16, "field":Ljava/lang/reflect/Field;
    :cond_14
    move-object/from16 v17, v7

    .end local v7    # "it":Ljava/util/Iterator;
    .restart local v17    # "it":Ljava/util/Iterator;
    move-object/from16 v21, v16

    move/from16 v16, v0

    move-object/from16 v0, v21

    .line 414
    .local v0, "field":Ljava/lang/reflect/Field;
    .local v16, "fieldAlreadyChecked":Z
    :goto_b
    if-eqz v0, :cond_18

    if-nez v16, :cond_15

    .line 415
    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalField(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 416
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v5, v7, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 417
    :cond_15
    iget-object v5, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v3, v5}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "classAttribute":Ljava/lang/String;
    if-eqz v5, :cond_16

    .line 420
    iget-object v7, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v7, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v19, v5

    .end local v15    # "type":Ljava/lang/Class;
    .local v7, "type":Ljava/lang/Class;
    goto :goto_c

    .line 422
    .end local v7    # "type":Ljava/lang/Class;
    .restart local v15    # "type":Ljava/lang/Class;
    :cond_16
    iget-object v7, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v19, v5

    .end local v5    # "classAttribute":Ljava/lang/String;
    .local v19, "classAttribute":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v7, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 425
    .end local v15    # "type":Ljava/lang/Class;
    .restart local v7    # "type":Ljava/lang/Class;
    :goto_c
    invoke-virtual {v1, v4, v2, v7, v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->unmarshallField(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 426
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 427
    .local v15, "definedType":Ljava/lang/Class;
    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-nez v20, :cond_17

    .line 428
    move-object v7, v15

    goto :goto_d

    .line 427
    :cond_17
    move-object v15, v7

    .line 430
    .end local v7    # "type":Ljava/lang/Class;
    .end local v19    # "classAttribute":Ljava/lang/String;
    .local v15, "type":Ljava/lang/Class;
    :goto_d
    goto :goto_e

    .line 431
    .end local v5    # "value":Ljava/lang/Object;
    :cond_18
    const/4 v5, 0x0

    .line 433
    .end local v16    # "fieldAlreadyChecked":Z
    .restart local v5    # "value":Ljava/lang/Object;
    :goto_e
    move-object/from16 v16, v0

    move-object v0, v5

    move-object v5, v15

    goto :goto_11

    .line 436
    .end local v17    # "it":Ljava/util/Iterator;
    .end local v18    # "resultType":Ljava/lang/Class;
    .local v5, "resultType":Ljava/lang/Class;
    .local v7, "it":Ljava/util/Iterator;
    :cond_19
    move-object/from16 v16, v0

    move-object/from16 v18, v5

    move-object/from16 v17, v7

    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "resultType":Ljava/lang/Class;
    .end local v7    # "it":Ljava/util/Iterator;
    .local v16, "field":Ljava/lang/reflect/Field;
    .restart local v17    # "it":Ljava/util/Iterator;
    .restart local v18    # "resultType":Ljava/lang/Class;
    invoke-interface {v13}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getFieldName()Ljava/lang/String;

    move-result-object v14

    .line 437
    invoke-interface {v13}, Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;->getItemType()Ljava/lang/Class;

    move-result-object v0

    .line 438
    .end local v15    # "type":Ljava/lang/Class;
    .local v0, "type":Ljava/lang/Class;
    if-nez v0, :cond_1b

    .line 439
    iget-object v5, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v3, v5}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "classAttribute":Ljava/lang/String;
    iget-object v7, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    if-eqz v5, :cond_1a

    move-object v15, v5

    goto :goto_f

    :cond_1a
    move-object v15, v9

    :goto_f
    invoke-interface {v7, v15}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v5, v0

    goto :goto_10

    .line 438
    .end local v5    # "classAttribute":Ljava/lang/String;
    :cond_1b
    move-object v5, v0

    .line 445
    .end local v0    # "type":Ljava/lang/Class;
    .local v5, "type":Ljava/lang/Class;
    :goto_10
    invoke-interface {v4, v2, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 448
    .local v0, "value":Ljava/lang/Object;
    :goto_11
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_12

    .line 449
    :cond_1c
    new-instance v7, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot convert type "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " to type "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 455
    :cond_1d
    :goto_12
    if-eqz v16, :cond_1e

    .line 456
    iget-object v3, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v3, v2, v12, v0, v7}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 457
    new-instance v3, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, v7, v12}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 458
    :cond_1e
    if-eqz v5, :cond_23

    .line 459
    if-nez v14, :cond_21

    .line 461
    iget-object v3, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    if-eqz v0, :cond_1f

    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_13

    :cond_1f
    sget-object v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v7, :cond_20

    const-string v7, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v7}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    .line 461
    :cond_20
    :goto_13
    invoke-interface {v3, v11, v7, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 466
    :cond_21
    if-nez v8, :cond_22

    .line 467
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v8, v3

    .line 469
    :cond_22
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;

    invoke-direct {v3, v14, v11}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-direct {v1, v0, v8, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->writeValueToImplicitCollection(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;)V

    .line 474
    :cond_23
    :goto_14
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 475
    .end local v0    # "value":Ljava/lang/Object;
    .end local v5    # "type":Ljava/lang/Class;
    .end local v9    # "originalNodeName":Ljava/lang/String;
    .end local v10    # "explicitDeclaringClass":Ljava/lang/Class;
    .end local v11    # "fieldDeclaringClass":Ljava/lang/Class;
    .end local v12    # "fieldName":Ljava/lang/String;
    .end local v13    # "implicitCollectionMapping":Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .end local v14    # "implicitFieldName":Ljava/lang/String;
    .end local v16    # "field":Ljava/lang/reflect/Field;
    move-object/from16 v3, p2

    move-object/from16 v7, v17

    move-object/from16 v5, v18

    goto/16 :goto_3

    .line 477
    .end local v17    # "it":Ljava/util/Iterator;
    .end local v18    # "resultType":Ljava/lang/Class;
    .local v5, "resultType":Ljava/lang/Class;
    .restart local v7    # "it":Ljava/util/Iterator;
    :cond_24
    move-object/from16 v18, v5

    move-object/from16 v17, v7

    .end local v5    # "resultType":Ljava/lang/Class;
    .end local v7    # "it":Ljava/util/Iterator;
    .restart local v17    # "it":Ljava/util/Iterator;
    .restart local v18    # "resultType":Ljava/lang/Class;
    if-eqz v8, :cond_27

    .line 478
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 479
    .local v0, "iter":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 481
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 482
    .local v5, "value":Ljava/lang/Object;
    instance-of v7, v5, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;

    if-eqz v7, :cond_26

    .line 483
    move-object v7, v5

    check-cast v7, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$ArraysList;->toPhysicalArray()Ljava/lang/Object;

    move-result-object v7

    .line 484
    .local v7, "array":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;

    .line 485
    .local v9, "fieldLocation":Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;
    iget-object v10, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v11, v9, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->definedIn:Ljava/lang/Class;

    iget-object v12, v9, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 487
    .local v10, "field":Ljava/lang/reflect/Field;
    iget-object v11, v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v12, v9, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;->fieldName:Ljava/lang/String;

    if-eqz v10, :cond_25

    .line 488
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    goto :goto_16

    :cond_25
    const/4 v13, 0x0

    .line 487
    :goto_16
    invoke-interface {v11, v2, v12, v7, v13}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 491
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v7    # "array":Ljava/lang/Object;
    .end local v9    # "fieldLocation":Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    :cond_26
    goto :goto_15

    .line 494
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_27
    return-object v2
.end method

.method public flushCache()V
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->flushCache()V

    .line 586
    return-void
.end method

.method protected instantiateNewInstance(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 571
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "resolves-to"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "attributeName":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 573
    :cond_0
    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 574
    .local v1, "readResolveValue":Ljava/lang/String;
    invoke-interface {p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->currentObject()Ljava/lang/Object;

    move-result-object v2

    .line 575
    .local v2, "currentObject":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 576
    return-object v2

    .line 577
    :cond_1
    if-eqz v1, :cond_2

    .line 578
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v4, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 580
    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 78
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "source":Ljava/lang/Object;
    if-eq v0, p1, :cond_0

    instance-of v1, p3, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, p3

    check-cast v1, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;

    invoke-interface {v1, p1, v0}, Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;->replace(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v2, "resolves-to"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "attributeName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    invoke-interface {p3, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 89
    .end local v1    # "attributeName":Ljava/lang/String;
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 92
    :goto_0
    return-void
.end method

.method protected marshallField(Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 3
    .param p1, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p2, "newObj"    # Ljava/lang/Object;
    .param p3, "field"    # Ljava/lang/reflect/Field;

    .line 270
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 271
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    .line 270
    invoke-interface {p1, p2, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    .line 272
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 589
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    .line 590
    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    .line 591
    return-object p0
.end method

.method protected shouldUnmarshalField(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 508
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->shouldUnmarshalTransientFields()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected shouldUnmarshalTransientFields()Z
    .locals 1

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->instantiateNewInstance(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->callReadResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected unmarshallField(Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;
    .param p4, "field"    # Ljava/lang/reflect/Field;

    .line 499
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 500
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    .line 499
    invoke-interface {p1, p2, p3, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
