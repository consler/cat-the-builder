.class public Lcom/thoughtworks/xstream/core/TreeUnmarshaller;
.super Ljava/lang/Object;
.source "TreeUnmarshaller.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/UnmarshallingContext;


# instance fields
.field private converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field protected reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

.field private root:Ljava/lang/Object;

.field private types:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p4, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    .line 43
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->root:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .line 45
    iput-object p3, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 46
    iput-object p4, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 47
    return-void
.end method

.method private addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V
    .locals 2
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;
    .param p4, "parent"    # Ljava/lang/Object;

    .line 86
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->getRequiredType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "required-type"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "converter-type"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    instance-of v0, p3, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p3

    check-cast v0, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorReporter;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 92
    :cond_0
    instance-of v0, p4, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    if-eqz v0, :cond_1

    .line 93
    move-object v0, p4

    check-cast v0, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorReporter;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 96
    return-void
.end method

.method private lazilyCreateDataHolder()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletionCallback(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "work"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->add(Ljava/lang/Object;I)V

    .line 100
    return-void
.end method

.method protected convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 2
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .line 70
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {p3, v0, p0}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    .line 72
    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .local v1, "conversionException":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-direct {p0, v1, p2, p3, p1}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V

    .line 79
    nop

    .end local p1    # "parent":Ljava/lang/Object;
    .end local p2    # "type":Ljava/lang/Class;
    .end local p3    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    throw v1

    .line 73
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "conversionException":Lcom/thoughtworks/xstream/converters/ConversionException;
    .restart local p1    # "parent":Ljava/lang/Object;
    .restart local p2    # "type":Ljava/lang/Class;
    .restart local p3    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "conversionException":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V

    .line 75
    nop

    .end local p1    # "parent":Ljava/lang/Object;
    .end local p2    # "type":Ljava/lang/Class;
    .end local p3    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v0    # "conversionException":Lcom/thoughtworks/xstream/converters/ConversionException;
    .restart local p1    # "parent":Ljava/lang/Object;
    .restart local p2    # "type":Ljava/lang/Class;
    .restart local p3    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    .line 82
    throw v0
.end method

.method public convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 3
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "converter"    # Lcom/thoughtworks/xstream/converters/Converter;

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 55
    if-nez p3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object p3

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p3, p2}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Explicit selected converter cannot handle type"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "e":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item-type"

    invoke-virtual {v0, v2, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "converter-type"

    invoke-virtual {v0, v2, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    throw v0
.end method

.method public currentObject()Ljava/lang/Object;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->root:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 111
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 112
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/DataHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public getRequiredType()Ljava/lang/Class;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 122
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 116
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 117
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public start(Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;
    .locals 4
    .param p1, "dataHolder"    # Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 132
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 133
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, "type":Ljava/lang/Class;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, "validations":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 138
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 139
    .end local v3    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 140
    :cond_0
    return-object v1
.end method
