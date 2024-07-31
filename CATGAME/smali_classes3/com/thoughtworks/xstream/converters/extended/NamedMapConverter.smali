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
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .param p4, "keyType"    # Ljava/lang/Class;
    .param p5, "valueName"    # Ljava/lang/String;
    .param p6, "valueType"    # Ljava/lang/Class;

    .line 138
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

    invoke-direct/range {v0 .. v9}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 11
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "keyName"    # Ljava/lang/String;
    .param p4, "keyType"    # Ljava/lang/Class;
    .param p5, "valueName"    # Ljava/lang/String;
    .param p6, "valueType"    # Ljava/lang/Class;
    .param p7, "keyAsAttribute"    # Z
    .param p8, "valueAsAttribute"    # Z
    .param p9, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 178
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

    invoke-direct/range {v0 .. v10}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "entryName"    # Ljava/lang/String;
    .param p4, "keyName"    # Ljava/lang/String;
    .param p5, "keyType"    # Ljava/lang/Class;
    .param p6, "valueName"    # Ljava/lang/String;
    .param p7, "valueType"    # Ljava/lang/Class;

    .line 156
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

    invoke-direct/range {v0 .. v10}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZLcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "entryName"    # Ljava/lang/String;
    .param p4, "keyName"    # Ljava/lang/String;
    .param p5, "keyType"    # Ljava/lang/Class;
    .param p6, "valueName"    # Ljava/lang/String;
    .param p7, "valueType"    # Ljava/lang/Class;
    .param p8, "keyAsAttribute"    # Z
    .param p9, "valueAsAttribute"    # Z
    .param p10, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 202
    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 203
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    iput-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    .line 204
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p4

    :goto_1
    iput-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    .line 205
    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    .line 206
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object v1, p6

    :goto_2
    iput-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    .line 207
    iput-object p7, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    .line 208
    iput-boolean p8, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    .line 209
    iput-boolean p9, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    .line 210
    iput-object p10, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 211
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->createEnumMapper(Lcom/thoughtworks/xstream/mapper/Mapper;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 213
    if-eqz p5, :cond_d

    if-eqz p7, :cond_d

    .line 216
    if-nez p3, :cond_6

    .line 217
    if-nez p8, :cond_5

    if-nez p9, :cond_5

    .line 221
    if-eqz p6, :cond_4

    goto :goto_3

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as text of entry, if entry must be omitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write attributes to map entry, if map entry must be omitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_6
    :goto_3
    if-eqz p4, :cond_c

    .line 229
    if-nez p6, :cond_9

    .line 230
    if-nez p9, :cond_8

    .line 233
    if-eqz p8, :cond_7

    goto :goto_4

    .line 234
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as text of entry, if key is also child element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write value as attribute without name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_9
    :goto_4
    if-eqz p8, :cond_b

    if-eqz p9, :cond_b

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 239
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write key and value with same attribute name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_b
    :goto_5
    return-void

    .line 227
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write key without name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class types of key and value are mandatory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 367
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

.method private getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "part"    # Ljava/lang/String;

    .line 351
    invoke-static {p1}, Lcom/thoughtworks/xstream/converters/extended/UseAttributeForEnumMapper;->isEnum(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->enumMapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 352
    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    :goto_0
    invoke-interface {v0, v1, p1, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 354
    .local v0, "conv":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    if-nez v0, :cond_2

    .line 355
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->lookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v1, p1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    .line 356
    .local v1, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    instance-of v2, v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v2, :cond_1

    .line 357
    move-object v0, v1

    check-cast v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    goto :goto_1

    .line 359
    :cond_1
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No SingleValueConverter for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    .end local v1    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 15
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 246
    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    check-cast v8, Ljava/util/Map;

    .line 247
    .local v8, "map":Ljava/util/Map;
    const/4 v0, 0x0

    .line 248
    .local v0, "keyConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    const/4 v1, 0x0

    .line 249
    .local v1, "valueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    iget-boolean v2, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    const-string v3, "key"

    invoke-direct {p0, v2, v3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 249
    :cond_0
    move-object v9, v0

    .line 252
    .end local v0    # "keyConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .local v9, "keyConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :goto_0
    iget-boolean v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v0, :cond_2

    iget-object v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v1

    goto :goto_2

    .line 253
    :cond_2
    :goto_1
    iget-object v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    const-string v2, "value"

    invoke-direct {p0, v0, v2}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    move-object v10, v1

    .line 255
    .end local v1    # "valueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .local v10, "valueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :goto_2
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Map$Entry;

    .line 257
    .local v12, "entry":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    .line 258
    .local v13, "key":Ljava/lang/Object;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 259
    .local v14, "value":Ljava/lang/Object;
    iget-object v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 260
    nop

    .line 261
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 260
    invoke-static {v7, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 262
    if-eqz v9, :cond_3

    if-eqz v13, :cond_3

    .line 263
    iget-object v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {v9, v13}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_3
    iget-object v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz v10, :cond_4

    if-eqz v14, :cond_4

    .line 266
    invoke-interface {v10, v14}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_4
    if-nez v9, :cond_5

    .line 271
    iget-object v1, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iget-object v2, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    move-object v0, p0

    move-object v3, v13

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 273
    :cond_5
    if-nez v10, :cond_6

    .line 274
    iget-object v1, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    iget-object v2, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    move-object v0, p0

    move-object v3, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    goto :goto_4

    .line 275
    :cond_6
    iget-object v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 276
    invoke-interface {v10, v14}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 279
    :cond_7
    :goto_4
    iget-object v0, v6, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 280
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 282
    .end local v12    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_8
    goto :goto_3

    .line 283
    .end local v11    # "iterator":Ljava/util/Iterator;
    :cond_9
    return-void
.end method

.method protected populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "target"    # Ljava/util/Map;

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "keyConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    const/4 v1, 0x0

    .line 289
    .local v1, "valueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    iget-boolean v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyAsAttribute:Z

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    const-string v3, "key"

    invoke-direct {p0, v2, v3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 292
    :cond_0
    iget-boolean v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    const-string v3, "value"

    invoke-direct {p0, v2, v3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->getSingleValueConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    .line 296
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, "key":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 300
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 301
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 303
    if-eqz v0, :cond_3

    .line 304
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    invoke-interface {p1, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "attribute":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 306
    invoke-interface {v0, v4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 310
    .end local v4    # "attribute":Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 311
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-interface {p1, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .restart local v4    # "attribute":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 313
    invoke-interface {v1, v4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 318
    .end local v4    # "attribute":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_6

    .line 319
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 320
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyName:Ljava/lang/String;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 322
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 323
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 325
    :cond_5
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 327
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 330
    :cond_6
    if-nez v1, :cond_8

    .line 331
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 332
    if-nez v0, :cond_7

    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    .line 333
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->keyType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 335
    :cond_7
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueType:Ljava/lang/Class;

    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 337
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_3

    .line 338
    :cond_8
    iget-boolean v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->valueAsAttribute:Z

    if-nez v4, :cond_9

    .line 339
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 342
    :cond_9
    :goto_3
    invoke-interface {p4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->entryName:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 345
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 347
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_a
    goto/16 :goto_0

    .line 348
    :cond_b
    return-void
.end method

.method protected readItem(Ljava/lang/Class;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p4, "current"    # Ljava/lang/Object;

    .line 383
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 385
    .local v1, "itemType":Ljava/lang/Class;
    :goto_0
    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    const/4 v2, 0x0

    return-object v2

    .line 388
    :cond_2
    invoke-interface {p3, p4, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected writeItem(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "item"    # Ljava/lang/Object;
    .param p4, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p5, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 367
    if-nez p3, :cond_0

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
    .local v0, "itemType":Ljava/lang/Class;
    :cond_1
    :goto_0
    invoke-static {p5, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 369
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "attributeName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v1    # "attributeName":Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    .line 376
    invoke-interface {p4, p3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 378
    :cond_3
    invoke-interface {p5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 379
    return-void
.end method
