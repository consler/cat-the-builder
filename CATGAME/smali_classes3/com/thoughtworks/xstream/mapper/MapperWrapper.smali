.class public abstract Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.super Ljava/lang/Object;
.source "MapperWrapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/mapper/Mapper;


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$MapperWrapper:Ljava/lang/Class;


# instance fields
.field private final aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final aliasForSystemAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final defaultImplementationOfMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final getFieldNameForItemTypeAndNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final getImplicitCollectionDefForFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final getItemTypeForItemFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final getLocalConverterMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final isIgnoredElementMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final isImmutableValueTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final isReferenceableMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final realClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final realMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final serializedClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final serializedMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final wrapped:Lcom/thoughtworks/xstream/mapper/Mapper;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->wrapped:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 46
    instance-of v2, v1, Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    if-eqz v2, :cond_3

    .line 47
    move-object v2, v1

    check-cast v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v5, "aliasForAttribute"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForSystemAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v6, "aliasForSystemAttribute"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v7, "attributeForAlias"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOfMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v8, "defaultImplementationOf"

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v9, "getConverterFromAttribute"

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v10, "getConverterFromItemType"

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getFieldNameForItemTypeAndNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v11, "getFieldNameForItemTypeAndName"

    invoke-interface {v3, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getImplicitCollectionDefForFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v12, "getImplicitCollectionDefForFieldName"

    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getItemTypeForItemFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v13, "getItemTypeForItemFieldName"

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getLocalConverterMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v14, "getLocalConverter"

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isIgnoredElementMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v15, "isIgnoredElement"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v16, v15

    const-string v15, "isImmutableValueType"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isReferenceableMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v17, v15

    const-string v15, "isReferenceable"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v18, v15

    const-string v15, "realClass"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v19, v15

    const-string v15, "realMember"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v20, v15

    const-string v15, "serializedClass"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v21, v15

    const-string v15, "serializedMember"

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v2, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v4, "shouldSerializeMember"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v22, 0x0

    move-object/from16 v23, v4

    move/from16 v4, v22

    move-object/from16 v22, v15

    .line 69
    :goto_0
    array-length v15, v2

    if-ge v4, v15, :cond_2

    .line 70
    aget-object v15, v2, v4

    move-object/from16 v24, v2

    .line 71
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v25, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->class$com$thoughtworks$xstream$mapper$MapperWrapper:Ljava/lang/Class;

    if-nez v25, :cond_0

    const-string v25, "com.thoughtworks.xstream.mapper.MapperWrapper"

    invoke-static/range {v25 .. v25}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v25

    sput-object v25, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->class$com$thoughtworks$xstream$mapper$MapperWrapper:Ljava/lang/Class;

    :cond_0
    move-object/from16 v26, v14

    move-object/from16 v14, v25

    if-eq v2, v14, :cond_1

    .line 72
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 74
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v24

    move-object/from16 v14, v26

    goto :goto_0

    :cond_2
    move-object/from16 v26, v14

    .line 79
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 80
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForSystemAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 81
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 82
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOfMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 83
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 84
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 85
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getFieldNameForItemTypeAndNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 86
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getImplicitCollectionDefForFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 87
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getItemTypeForItemFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v26

    .line 88
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getLocalConverterMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v16

    .line 89
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isIgnoredElementMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v17

    .line 90
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v18

    .line 91
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isReferenceableMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v19

    .line 92
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v20

    .line 93
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v21

    .line 94
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v22

    .line 95
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v1, v23

    .line 96
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    goto :goto_1

    .line 98
    :cond_3
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 99
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForSystemAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 100
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 101
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOfMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 102
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 103
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 104
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getFieldNameForItemTypeAndNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 105
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getImplicitCollectionDefForFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 106
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getItemTypeForItemFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 107
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getLocalConverterMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 108
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isIgnoredElementMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 109
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 110
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isReferenceableMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 111
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 112
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 113
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 114
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 115
    iput-object v1, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    :goto_1
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 71
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


# virtual methods
.method public aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForSystemAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->attributeForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOfMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object p1

    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object p1

    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object p1

    return-object p1
.end method

.method public getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object p1

    return-object p1
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object p1

    return-object p1
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object p1

    return-object p1
.end method

.method public getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getFieldNameForItemTypeAndNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getImplicitCollectionDefForFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object p1

    return-object p1
.end method

.method public getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getItemTypeForItemFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getLocalConverterMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object p1

    return-object p1
.end method

.method public isIgnoredElement(Ljava/lang/String;)Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isIgnoredElementMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->isIgnoredElement(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isImmutableValueType(Ljava/lang/Class;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->isImmutableValueType(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isReferenceable(Ljava/lang/Class;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isReferenceableMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->isReferenceable(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->wrapped:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
