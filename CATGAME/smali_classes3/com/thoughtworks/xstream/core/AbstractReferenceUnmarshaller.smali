.class public abstract Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;
.super Lcom/thoughtworks/xstream/core/TreeUnmarshaller;
.source "AbstractReferenceUnmarshaller.java"


# static fields
.field private static final NULL:Ljava/lang/Object;


# instance fields
.field private parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private values:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 40
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 9
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .line 43
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "parentReferenceKey":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v0    # "parentReferenceKey":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    const-string v1, "reference"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "attributeName":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v3, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "reference":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->isReferenceable(Ljava/lang/Class;)Z

    move-result v4

    .line 55
    .local v4, "isReferenceable":Z
    if-eqz v3, :cond_5

    .line 56
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 57
    .local v5, "cache":Ljava/lang/Object;
    :goto_1
    if-eqz v5, :cond_4

    .line 64
    sget-object v1, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    if-ne v5, v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    move-object v1, v2

    .line 65
    .end local v5    # "cache":Ljava/lang/Object;
    .local v1, "result":Ljava/lang/Object;
    goto :goto_4

    .line 58
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v5    # "cache":Ljava/lang/Object;
    :cond_4
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v6, "Invalid reference"

    invoke-direct {v2, v6}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "ex":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v2, v1, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "referenced-type"

    invoke-virtual {v2, v6, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v6, "referenceable"

    invoke-virtual {v2, v6, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    throw v2

    .line 65
    .end local v2    # "ex":Lcom/thoughtworks/xstream/converters/ConversionException;
    .end local v5    # "cache":Ljava/lang/Object;
    :cond_5
    if-nez v4, :cond_6

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    goto :goto_4

    .line 68
    .end local v1    # "result":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->getCurrentReferenceKey()Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "currentReferenceKey":Ljava/lang/Object;
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, "localResult":Ljava/lang/Object;
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 74
    nop

    .line 75
    .local v5, "result":Ljava/lang/Object;
    if-eqz v1, :cond_8

    .line 76
    iget-object v6, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    if-nez v5, :cond_7

    sget-object v7, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    move-object v7, v5

    :goto_3
    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_8
    iget-object v6, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v6}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    .line 79
    move-object v1, v5

    .line 81
    .end local v2    # "localResult":Ljava/lang/Object;
    .end local v5    # "result":Ljava/lang/Object;
    .local v1, "result":Ljava/lang/Object;
    :goto_4
    return-object v1

    .line 74
    .local v1, "currentReferenceKey":Ljava/lang/Object;
    .restart local v2    # "localResult":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    move-object v6, v2

    .line 75
    .local v6, "result":Ljava/lang/Object;
    if-eqz v1, :cond_a

    .line 76
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->values:Ljava/util/Map;

    if-nez v6, :cond_9

    sget-object v8, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->NULL:Ljava/lang/Object;

    goto :goto_5

    :cond_9
    move-object v8, v6

    :goto_5
    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_a
    iget-object v7, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceUnmarshaller;->parentStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    .line 79
    throw v5
.end method

.method protected abstract getCurrentReferenceKey()Ljava/lang/Object;
.end method

.method protected abstract getReferenceKey(Ljava/lang/String;)Ljava/lang/Object;
.end method
