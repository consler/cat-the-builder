.class public Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;
.source "NamedMapConverter.java"


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;


# instance fields
.field private final entryName:Ljava/lang/String;

.field private final enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private final keyAsAttribute:Z

.field private final keyName:Ljava/lang/String;

.field private final keyType:Ljava/lang/Class;

.field private final lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private final valueAsAttribute:Z

.field private final valueName:Ljava/lang/String;

.field private final valueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 138
    invoke-direct/range {v0 .. v9}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 178
    invoke-direct/range {v0 .. v10}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 156
    invoke-direct/range {v0 .. v10}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 1

    .line 202
    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 203
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 204
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    move-object v0, p4

    :goto_1
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    .line 205
    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    if-eqz p6, :cond_2

    .line 206
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    goto :goto_2

    :cond_2
    move-object v0, p6

    :goto_2
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    .line 207
    iput-object p7, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    .line 208
    iput-boolean p8, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    .line 209
    iput-boolean p9, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    .line 210
    iput-object p10, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    const/4 p10, 0x5

    .line 211
    invoke-static {p10}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result p10

    if-eqz p10, :cond_3

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    if-eqz p5, :cond_d

    if-eqz p7, :cond_d

    if-nez p3, :cond_6

    if-nez p8, :cond_5

    if-nez p9, :cond_5

    if-eqz p6, :cond_4

    goto :goto_3

    .line 222
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot write value as text of entry, if entry must be omitted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot write attributes to map entry, if map entry must be omitted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    if-eqz p4, :cond_c

    if-nez p6, :cond_9

    if-nez p9, :cond_8

    if-eqz p8, :cond_7

    goto :goto_4

    .line 234
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot write value as text of entry, if key is also child element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot write value as attribute without name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    if-eqz p8, :cond_b

    if-eqz p9, :cond_b

    .line 238
    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_5

    .line 239
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot write key and value with same attribute name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_5
    return-void

    .line 227
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot write key without name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Class types of key and value are mandatory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 367
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

.method private getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 2

    .line 351
    invoke-static {p1}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    :goto_0
    invoke-interface {v0, v1, p1, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object p1

    .line 356
    instance-of v0, p1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v0, :cond_1

    .line 357
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    goto :goto_1

    .line 359
    :cond_1
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "No SingleValueConverter for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 10

    .line 246
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 249
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    const-string v3, "key"

    invoke-direct {p0, v1, v3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 252
    :goto_0
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    const-string v2, "value"

    invoke-direct {p0, v1, v2}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v2

    :cond_2
    move-object v7, v2

    .line 255
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 259
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 260
    invoke-static {p2, v1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 263
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {v6, v3}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    if-eqz v9, :cond_5

    .line 266
    invoke-interface {v7, v9}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v6, :cond_6

    .line 271
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    move-object v0, p0

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    :cond_6
    if-nez v7, :cond_7

    .line 274
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    move-object v0, p0

    move-object v3, v9

    move-object v4, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    goto :goto_2

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 276
    invoke-interface {v7, v9}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 279
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 280
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_1

    :cond_9
    return-void
.end method

.method protected populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7

    .line 289
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    const-string v2, "key"

    invoke-direct {p0, v0, v2}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 292
    :goto_0
    iget-boolean v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_2

    .line 293
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    const-string v3, "value"

    invoke-direct {p0, v2, v3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v2

    .line 296
    :cond_3
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 300
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 301
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    if-eqz v0, :cond_4

    .line 304
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 306
    invoke-interface {v0, v3}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v1

    .line 310
    :goto_3
    iget-boolean v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 311
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-interface {p1, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 313
    invoke-interface {v2, v4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v1

    goto :goto_4

    :cond_6
    move-object v3, v1

    move-object v4, v3

    :goto_4
    if-nez v0, :cond_8

    .line 319
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    if-nez v2, :cond_7

    .line 320
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    .line 321
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 322
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 323
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 325
    :cond_7
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 327
    :goto_5
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    :cond_8
    if-nez v2, :cond_a

    .line 331
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 333
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    .line 335
    :cond_9
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 337
    :goto_6
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_7

    .line 338
    :cond_a
    iget-boolean v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v5, :cond_b

    .line 339
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 342
    :cond_b
    :goto_7
    invoke-interface {p4, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 345
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto/16 :goto_2

    :cond_c
    return-void
.end method

.method protected readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 385
    :goto_0
    sget-object p2, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez p2, :cond_1

    const-string p2, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 388
    :cond_2
    invoke-interface {p3, p4, p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1

    if-nez p3, :cond_0

    .line 367
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 368
    :cond_1
    :goto_0
    invoke-static {p5, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 369
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p1

    const-string p2, "class"

    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 376
    invoke-interface {p4, p3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 378
    :cond_3
    invoke-interface {p5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method
