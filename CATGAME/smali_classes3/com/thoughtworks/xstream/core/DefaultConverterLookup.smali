.class public Lcom/thoughtworks/xstream/core/DefaultConverterLookup;
.super Ljava/lang/Object;
.source "DefaultConverterLookup.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ConverterLookup;
.implements Lcom/thoughtworks/xstream/converters/ConverterRegistry;
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field private final converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

.field private serializationMap:Ljava/util/Map;

.field private transient typeToConverterMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 61
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->serializationMap:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 55
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->serializationMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->serializationMap:Ljava/util/Map;

    .line 126
    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/Cloneables;->cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->serializationMap:Ljava/util/Map;

    .line 119
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 120
    return-object p0
.end method


# virtual methods
.method public flushCache()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/Converter;

    .line 111
    .local v1, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    instance-of v2, v1, Lcom/thoughtworks/xstream/core/Caching;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v1

    check-cast v2, Lcom/thoughtworks/xstream/core/Caching;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/core/Caching;->flushCache()V

    .line 114
    .end local v1    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;

    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/Converter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, "cachedConverter":Lcom/thoughtworks/xstream/converters/Converter;
    :goto_0
    if-eqz v0, :cond_1

    .line 67
    return-object v0

    .line 70
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .local v1, "errors":Ljava/util/Map;
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/thoughtworks/xstream/converters/Converter;

    .line 75
    .local v3, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :try_start_0
    invoke-interface {v3, p1}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    if-eqz p1, :cond_2

    .line 77
    iget-object v4, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_2
    return-object v3

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/LinkageError;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 81
    .end local v4    # "e":Ljava/lang/LinkageError;
    :catch_1
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_3
    nop

    .line 86
    .end local v3    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :goto_2
    goto :goto_1

    .line 88
    :cond_4
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "No converter specified"

    goto :goto_3

    :cond_5
    const-string v4, "No converter available"

    :goto_3
    invoke-direct {v3, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v3, v5, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 95
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "converter"

    invoke-virtual {v3, v6, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v3, v6, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v4    # "entry":Ljava/util/Map$Entry;
    goto :goto_4

    .line 98
    :cond_6
    throw v3
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 1
    .param p1, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;
    .param p2, "priority"    # I

    .line 102
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->add(Ljava/lang/Object;I)V

    .line 104
    return-void
.end method
