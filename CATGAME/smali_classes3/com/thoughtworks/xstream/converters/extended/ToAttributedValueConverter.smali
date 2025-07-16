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

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

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

    const/4 p3, 0x0

    if-nez p5, :cond_0

    .line 111
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    move-object p1, p6

    .line 116
    :cond_1
    :try_start_0
    invoke-virtual {p1, p5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x1

    .line 118
    invoke-virtual {p1, p4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_2
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    :goto_0
    const/4 p1, 0x5

    .line 125
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p3

    :cond_3
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void

    :catch_0
    move-exception p1

    .line 121
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Lcom/thoughtworks/xstream/core/util/FastField;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;)Ljava/lang/reflect/Field;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private fieldIsEqual(Lcom/thoughtworks/xstream/core/util/FastField;)Z
    .locals 2

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

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->type:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    new-array v12, v0, [Ljava/lang/Object;

    new-array v13, v0, [Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    .line 140
    iget-object v14, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    new-instance v15, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v5, v13

    move-object v6, v12

    move-object v7, v11

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;Ljava/util/Map;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/String;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->visitSerializableFields(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V

    const/4 v0, 0x0

    aget-object v1, v11, v0

    if-eqz v1, :cond_2

    aget-object v1, v12, v0

    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 201
    iget-object v2, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aget-object v3, v13, v0

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    iget-object v3, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 204
    iget-object v3, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, v9, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v3, "class"

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    invoke-interface {v10, v2, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    aget-object v1, v11, v0

    const-string v2, ""

    if-ne v1, v2, :cond_1

    aget-object v0, v12, v0

    move-object/from16 v1, p3

    .line 213
    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v10, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 222
    iget-object v2, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 225
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 226
    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v5

    .line 228
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 229
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
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v15, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v15, v3, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 239
    iget-object v14, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v14, v3, v15}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 241
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v16

    if-eqz v16, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v16, v5

    .line 245
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 246
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    .line 247
    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v17, v6

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 248
    invoke-interface {v6, v3, v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v17, v6

    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 249
    invoke-interface {v3, v14, v15}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    .line 251
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v3, v5}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v3

    .line 254
    :cond_3
    instance-of v6, v3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v6, :cond_8

    if-eqz v3, :cond_a

    .line 263
    check-cast v3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 264
    invoke-interface {v1, v7}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-interface {v3, v6}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 265
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 266
    invoke-static {v5}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    :cond_4
    if-eqz v3, :cond_6

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 270
    :cond_5
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v1, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    throw v1

    .line 277
    :cond_6
    :goto_2
    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v5, v2, v15, v3, v14}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 278
    new-instance v3, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v3, v14, v15}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 279
    :cond_7
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 281
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_8
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Cannot read field as a single value for object"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v12, v15}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    .line 258
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    throw v1

    :cond_9
    move-object/from16 v18, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :cond_a
    :goto_3
    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    .line 288
    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_13

    .line 289
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 290
    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->valueField:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    move-object v14, v3

    goto :goto_4

    .line 291
    :cond_c
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v3, v5, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    :goto_4
    if-eqz v6, :cond_12

    if-eqz v14, :cond_12

    .line 303
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 304
    invoke-static {v1, v3}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 306
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_5

    .line 308
    :cond_d
    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v3, v2, v6, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 312
    :goto_5
    iget-object v3, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 314
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v7, v12}, Lcom/thoughtworks/xstream/mapper/Mapper;->getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v3

    move-object/from16 v7, p2

    .line 312
    invoke-interface {v7, v2, v1, v3}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v3

    .line 316
    iget-object v7, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v7, v2, v6, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 318
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    if-nez v12, :cond_e

    move-object v1, v7

    :cond_e
    if-eqz v3, :cond_10

    .line 322
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_6

    .line 323
    :cond_f
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v2, v9}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    throw v2

    .line 330
    :cond_10
    :goto_6
    iget-object v1, v0, Lcom/thoughtworks/xstream/converters/extended/ToAttributedValueConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v1, v2, v6, v3, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 331
    new-instance v1, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-direct {v1, v5, v6}, Lcom/thoughtworks/xstream/core/util/FastField;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_7

    .line 332
    :cond_11
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 334
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$DuplicateFieldException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object/from16 v7, p2

    .line 294
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "Cannot assign value to field of type"

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v3, "element"

    .line 296
    invoke-interface/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2, v12, v6}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    throw v2

    :cond_13
    :goto_7
    return-object v2
.end method
