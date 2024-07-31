.class public Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;
.super Ljava/lang/Object;
.source "ToAttributedValueConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field private static final STRUCTURE_MARKER:Ljava/lang/String; = ""


# instance fields
.field private final enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field private final type:Ljava/lang/Class;

.field private final valueField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p4, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 74
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p4, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p5, "valueFieldName"    # Ljava/lang/String;

    .line 89
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .param p4, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p5, "valueFieldName"    # Ljava/lang/String;
    .param p6, "valueDefinedIn"    # Ljava/lang/Class;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->type:Ljava/lang/Class;

    .line 106
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 107
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 108
    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 110
    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 111
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    goto :goto_1

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 115
    .local v1, "field":Ljava/lang/reflect/Field;
    if-eqz p6, :cond_1

    move-object v2, p6

    goto :goto_0

    :cond_1
    move-object v2, p1

    .line 116
    :goto_0
    :try_start_0
    invoke-virtual {v2, p5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v1, v2

    .line 117
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_2
    nop

    .line 123
    iput-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    .line 125
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 126
    return-void

    .line 120
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    .line 51
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    .line 51
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Lcom/thoughtworks/xstream/core/util/FastField;)Z
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;
    .param p1, "x1"    # Lcom/thoughtworks/xstream/core/util/FastField;

    .line 51
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    .line 51
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    .line 51
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "x0"    # Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;

    .line 51
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method private fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z
    .locals 2
    .param p1, "field"    # Lcom/thoughtworks/xstream/core/util/FastField;

    .line 342
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    .line 343
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getDeclaringClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 129
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->type:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 18
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 134
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 135
    .local v11, "sourceType":Ljava/lang/Class;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v2, "defaultFieldDefinition":Ljava/util/Map;
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    .line 137
    .local v12, "tagValue":[Ljava/lang/String;
    new-array v13, v0, [Ljava/lang/Object;

    .line 138
    .local v13, "realValue":[Ljava/lang/Object;
    new-array v14, v0, [Ljava/lang/Class;

    .line 139
    .local v14, "fieldType":[Ljava/lang/Class;
    new-array v15, v0, [Ljava/lang/Class;

    .line 140
    .local v15, "definingType":[Ljava/lang/Class;
    iget-object v8, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    new-instance v7, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v15

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v16, v11

    move-object v11, v7

    .end local v11    # "sourceType":Ljava/lang/Class;
    .local v16, "sourceType":Ljava/lang/Class;
    move-object v7, v12

    move-object/from16 v17, v15

    move-object v15, v8

    .end local v15    # "definingType":[Ljava/lang/Class;
    .local v17, "definingType":[Ljava/lang/Class;
    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/String;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    move-object/from16 v0, p1

    invoke-interface {v15, v0, v11}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    .line 199
    const/4 v1, 0x0

    aget-object v3, v12, v1

    if-eqz v3, :cond_2

    .line 200
    aget-object v3, v13, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 201
    .local v3, "actualType":Ljava/lang/Class;
    iget-object v4, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v5, v14, v1

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 202
    .local v4, "defaultType":Ljava/lang/Class;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 203
    iget-object v5, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "serializedClassName":Ljava/lang/String;
    iget-object v6, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v6, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    iget-object v6, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v7, "class"

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "attributeName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 207
    invoke-interface {v10, v6, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v5    # "serializedClassName":Ljava/lang/String;
    .end local v6    # "attributeName":Ljava/lang/String;
    :cond_0
    aget-object v5, v12, v1

    const-string v6, ""

    if-ne v5, v6, :cond_1

    .line 213
    aget-object v1, v13, v1

    move-object/from16 v5, p3

    invoke-interface {v5, v1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_1
    move-object/from16 v5, p3

    aget-object v1, v12, v1

    invoke-interface {v10, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v3    # "actualType":Ljava/lang/Class;
    .end local v4    # "defaultType":Ljava/lang/Class;
    :cond_2
    move-object/from16 v5, p3

    .line 218
    :goto_0
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 21
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 222
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 223
    .local v2, "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 225
    .local v3, "resultType":Ljava/lang/Class;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 226
    .local v4, "seenFields":Ljava/util/Set;
    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v5

    .line 228
    .local v5, "it":Ljava/util/Iterator;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 229
    .local v6, "systemAttributes":Ljava/util/Set;
    iget-object v7, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v8, "class"

    invoke-interface {v7, v8}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "object type"

    const-string v9, "Cannot assign object to type"

    const-string v10, "]"

    const-string v11, " ["

    const-string v12, "field"

    const-string v13, "target type"

    if-eqz v7, :cond_b

    .line 233
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 234
    .local v7, "attrName":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 235
    goto :goto_0

    .line 238
    :cond_0
    iget-object v15, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v15, v3, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 239
    .local v15, "fieldName":Ljava/lang/String;
    iget-object v14, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v14, v3, v15}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 240
    .local v14, "field":Ljava/lang/reflect/Field;
    if-eqz v14, :cond_9

    .line 241
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 242
    goto :goto_0

    .line 245
    :cond_1
    move-object/from16 v17, v5

    .end local v5    # "it":Ljava/util/Iterator;
    .local v17, "it":Ljava/util/Iterator;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 246
    .local v5, "type":Ljava/lang/Class;
    move-object/from16 v18, v6

    .end local v6    # "systemAttributes":Ljava/util/Set;
    .local v18, "systemAttributes":Ljava/util/Set;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 247
    .local v6, "declaringClass":Ljava/lang/Class;
    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v19, v14

    .end local v14    # "field":Ljava/lang/reflect/Field;
    .local v19, "field":Ljava/lang/reflect/Field;
    iget-object v14, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 248
    move-object/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "resultType":Ljava/lang/Class;
    .local v20, "resultType":Ljava/lang/Class;
    invoke-interface {v14, v3, v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v3

    goto :goto_1

    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v20    # "resultType":Ljava/lang/Class;
    .restart local v3    # "resultType":Ljava/lang/Class;
    .restart local v14    # "field":Ljava/lang/reflect/Field;
    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v19, v14

    .end local v3    # "resultType":Ljava/lang/Class;
    .end local v14    # "field":Ljava/lang/reflect/Field;
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v20    # "resultType":Ljava/lang/Class;
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 249
    invoke-interface {v3, v6, v15}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v3

    :goto_1
    nop

    .line 250
    .local v3, "converter":Lcom/thoughtworks/xstream/converters/ConverterMatcher;
    if-nez v3, :cond_3

    .line 251
    iget-object v14, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v14, v5}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v3

    .line 254
    :cond_3
    instance-of v14, v3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v14, :cond_8

    .line 262
    if-eqz v3, :cond_a

    .line 263
    move-object v12, v3

    check-cast v12, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 264
    invoke-interface {v1, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 263
    invoke-interface {v12, v14}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 265
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 266
    invoke-static {v5}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 269
    :cond_4
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    .line 270
    :cond_5
    new-instance v10, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v10, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    .line 272
    .local v9, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v13, v8}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    throw v9

    .line 277
    .end local v9    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    :cond_6
    :goto_2
    iget-object v8, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v8, v2, v15, v12, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 278
    new-instance v8, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v8, v6, v15}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    .line 279
    :cond_7
    new-instance v8, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 255
    .end local v12    # "value":Ljava/lang/Object;
    :cond_8
    new-instance v8, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v9, "Cannot read field as a single value for object"

    invoke-direct {v8, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 257
    .local v8, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v8, v12, v15}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v8, v10, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    throw v8

    .line 240
    .end local v8    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    .end local v17    # "it":Ljava/util/Iterator;
    .end local v18    # "systemAttributes":Ljava/util/Set;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v20    # "resultType":Ljava/lang/Class;
    .local v3, "resultType":Ljava/lang/Class;
    .local v5, "it":Ljava/util/Iterator;
    .local v6, "systemAttributes":Ljava/util/Set;
    .restart local v14    # "field":Ljava/lang/reflect/Field;
    :cond_9
    move-object/from16 v20, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v14

    .line 286
    .end local v3    # "resultType":Ljava/lang/Class;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "systemAttributes":Ljava/util/Set;
    .end local v7    # "attrName":Ljava/lang/String;
    .end local v14    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "fieldName":Ljava/lang/String;
    .restart local v17    # "it":Ljava/util/Iterator;
    .restart local v18    # "systemAttributes":Ljava/util/Set;
    .restart local v20    # "resultType":Ljava/lang/Class;
    :cond_a
    :goto_3
    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 288
    .end local v17    # "it":Ljava/util/Iterator;
    .end local v18    # "systemAttributes":Ljava/util/Set;
    .end local v20    # "resultType":Ljava/lang/Class;
    .restart local v3    # "resultType":Ljava/lang/Class;
    .restart local v5    # "it":Ljava/util/Iterator;
    .restart local v6    # "systemAttributes":Ljava/util/Set;
    :cond_b
    move-object/from16 v20, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    const/4 v3, 0x0

    .end local v3    # "resultType":Ljava/lang/Class;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "systemAttributes":Ljava/util/Set;
    .restart local v17    # "it":Ljava/util/Iterator;
    .restart local v18    # "systemAttributes":Ljava/util/Set;
    .restart local v20    # "resultType":Ljava/lang/Class;
    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_13

    .line 289
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 290
    .local v5, "classDefiningField":Ljava/lang/Class;
    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "fieldName":Ljava/lang/String;
    if-nez v6, :cond_c

    move-object v14, v3

    goto :goto_4

    :cond_c
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v3, v5, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    :goto_4
    move-object v3, v14

    .line 293
    .local v3, "field":Ljava/lang/reflect/Field;
    if-eqz v6, :cond_12

    if-eqz v3, :cond_12

    .line 303
    iget-object v7, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 304
    invoke-static {v1, v7}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "classAttribute":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 306
    iget-object v12, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v12, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .local v12, "type":Ljava/lang/Class;
    goto :goto_5

    .line 308
    .end local v12    # "type":Ljava/lang/Class;
    :cond_d
    iget-object v12, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v14, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v14, v2, v6, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v14

    invoke-interface {v12, v14}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    .line 312
    .restart local v12    # "type":Ljava/lang/Class;
    :goto_5
    iget-object v14, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 314
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v15, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    .line 312
    move-object/from16 v14, p2

    invoke-interface {v14, v2, v12, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v1

    .line 316
    .local v1, "value":Ljava/lang/Object;
    iget-object v15, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v15, v2, v6, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v15

    .line 318
    .local v15, "definedType":Ljava/lang/Class;
    invoke-virtual {v15}, Ljava/lang/Class;->isPrimitive()Z

    move-result v16

    if-nez v16, :cond_e

    .line 319
    move-object v12, v15

    .line 322
    :cond_e
    if-eqz v1, :cond_10

    move-object/from16 v16, v3

    .end local v3    # "field":Ljava/lang/reflect/Field;
    .local v16, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_6

    .line 323
    :cond_f
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v3, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 325
    .local v3, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v13, v8}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    throw v3

    .line 322
    .end local v16    # "field":Ljava/lang/reflect/Field;
    .local v3, "field":Ljava/lang/reflect/Field;
    :cond_10
    move-object/from16 v16, v3

    .line 330
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "field":Ljava/lang/reflect/Field;
    :goto_6
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v3, v2, v6, v1, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 331
    new-instance v3, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v3, v5, v6}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_7

    .line 332
    :cond_11
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v1    # "value":Ljava/lang/Object;
    .end local v7    # "classAttribute":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/Class;
    .end local v15    # "definedType":Ljava/lang/Class;
    .end local v16    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    :cond_12
    move-object/from16 v14, p2

    move-object/from16 v16, v3

    .line 294
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "field":Ljava/lang/reflect/Field;
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "Cannot assign value to field of type"

    invoke-direct {v1, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "element"

    invoke-virtual {v1, v7, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v12, v6}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    throw v1

    .line 288
    .end local v1    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    .end local v5    # "classDefiningField":Ljava/lang/Class;
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v16    # "field":Ljava/lang/reflect/Field;
    :cond_13
    move-object/from16 v14, p2

    .line 338
    :goto_7
    return-object v2
.end method
