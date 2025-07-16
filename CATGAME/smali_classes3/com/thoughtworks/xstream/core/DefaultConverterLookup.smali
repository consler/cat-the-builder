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

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->serializationMap:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->clear()V

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

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->serializationMap:Ljava/util/Map;

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
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/Converter;

    .line 111
    instance-of v2, v1, Lcom/thoughtworks/xstream/core/Caching;

    if-eqz v2, :cond_0

    .line 112
    check-cast v1, Lcom/thoughtworks/xstream/core/Caching;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/Caching;->flushCache()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 5

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/Converter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 70
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/converters/Converter;

    .line 75
    :try_start_0
    invoke-interface {v2, p1}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_3

    .line 77
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception v3

    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v3

    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_4
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "No converter specified"

    goto :goto_2

    :cond_5
    const-string v2, "No converter available"

    :goto_2
    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 91
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 93
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "converter"

    invoke-virtual {v1, v3, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_6
    throw v1
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->typeToConverterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;->converters:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->add(Ljava/lang/Object;I)V

    return-void
.end method
