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
    .locals 28
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

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
    .local v2, "wrapper":Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v3, "wrapperMap":Ljava/util/Map;
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
    iget-object v4, v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v22, v2

    .end local v2    # "wrapper":Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    .local v22, "wrapper":Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    const-string v2, "shouldSerializeMember"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 69
    .local v4, "methods":[Ljava/lang/reflect/Method;
    const/16 v23, 0x0

    move-object/from16 v24, v2

    move/from16 v2, v23

    .local v2, "i":I
    :goto_0
    move-object/from16 v23, v15

    array-length v15, v4

    if-ge v2, v15, :cond_2

    .line 70
    aget-object v15, v4, v2

    .line 71
    .local v15, "method":Ljava/lang/reflect/Method;
    move-object/from16 v25, v4

    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    .local v25, "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v26, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->class$com$thoughtworks$xstream$mapper$MapperWrapper:Ljava/lang/Class;

    if-nez v26, :cond_0

    const-string v26, "com.thoughtworks.xstream.mapper.MapperWrapper"

    invoke-static/range {v26 .. v26}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v26

    sput-object v26, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->class$com$thoughtworks$xstream$mapper$MapperWrapper:Ljava/lang/Class;

    :cond_0
    move-object/from16 v27, v14

    move-object/from16 v14, v26

    if-eq v4, v14, :cond_1

    .line 72
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 74
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v4    # "name":Ljava/lang/String;
    .end local v15    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, v23

    move-object/from16 v4, v25

    move-object/from16 v14, v27

    goto :goto_0

    .end local v25    # "methods":[Ljava/lang/reflect/Method;
    .local v4, "methods":[Ljava/lang/reflect/Method;
    :cond_2
    move-object/from16 v25, v4

    move-object/from16 v27, v14

    .line 79
    .end local v2    # "i":I
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    .restart local v25    # "methods":[Ljava/lang/reflect/Method;
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 80
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForSystemAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 81
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 82
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOfMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 83
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 84
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 85
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getFieldNameForItemTypeAndNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 86
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getImplicitCollectionDefForFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 87
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getItemTypeForItemFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 88
    move-object/from16 v2, v27

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getLocalConverterMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 89
    move-object/from16 v2, v16

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isIgnoredElementMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 90
    move-object/from16 v2, v17

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 91
    move-object/from16 v2, v18

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isReferenceableMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 92
    move-object/from16 v2, v19

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 93
    move-object/from16 v2, v20

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 94
    move-object/from16 v2, v21

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 95
    move-object/from16 v2, v23

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 96
    move-object/from16 v2, v24

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/mapper/Mapper;

    iput-object v2, v0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 97
    .end local v3    # "wrapperMap":Ljava/util/Map;
    .end local v22    # "wrapper":Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    .end local v25    # "methods":[Ljava/lang/reflect/Method;
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

    .line 118
    :goto_1
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 71
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


# virtual methods
.method public aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->aliasForSystemAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "alias"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->attributeForAliasMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->attributeForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 145
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->defaultImplementationOfMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Class;

    .line 237
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttributeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 191
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 184
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 210
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "itemType"    # Ljava/lang/Class;
    .param p3, "itemFieldName"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getFieldNameForItemTypeAndNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .locals 1
    .param p1, "itemType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getImplicitCollectionDefForFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;

    move-result-object v0

    return-object v0
.end method

.method public getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "itemFieldName"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getItemTypeForItemFieldNameMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getLocalConverterMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    return-object v0
.end method

.method public isIgnoredElement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isIgnoredElementMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->isIgnoredElement(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImmutableValueType(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 137
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueTypeMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->isImmutableValueType(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isReferenceable(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 141
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isReferenceableMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->isReferenceable(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->wrapped:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serialized"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 121
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClassMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "memberName"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->shouldSerializeMemberMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
