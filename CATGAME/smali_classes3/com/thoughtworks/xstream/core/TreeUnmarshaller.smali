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

    return-void
.end method

.method private addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "class"

    .line 86
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->getRequiredType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "required-type"

    invoke-interface {p1, v0, p2}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "converter-type"

    invoke-interface {p1, v0, p2}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    instance-of p2, p3, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    if-eqz p2, :cond_0

    .line 90
    check-cast p3, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    invoke-interface {p3, p1}, Lcom/thoughtworks/xstream/converters/ErrorReporter;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 92
    :cond_0
    instance-of p2, p4, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    if-eqz p2, :cond_1

    .line 93
    check-cast p4, Lcom/thoughtworks/xstream/converters/ErrorReporter;

    invoke-interface {p4, p1}, Lcom/thoughtworks/xstream/converters/ErrorReporter;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V

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

    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletionCallback(Ljava/lang/Runnable;I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->add(Ljava/lang/Object;I)V

    return-void
.end method

.method protected convert(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {p3, v0, p0}, Lcom/thoughtworks/xstream/converters/Converter;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p2, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    :try_start_1
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    invoke-direct {p0, v1, p2, p3, p1}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V

    .line 79
    throw v1

    :catch_1
    move-exception v0

    .line 74
    invoke-direct {p0, v0, p2, p3, p1}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->addInformationTo(Lcom/thoughtworks/xstream/converters/ErrorWriter;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;Ljava/lang/Object;)V

    .line 75
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    iget-object p2, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->types:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    .line 82
    throw p1
.end method

.method public convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convertAnother(Ljava/lang/Object;Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/Converter;)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    if-nez p3, :cond_0

    .line 56
    iget-object p3, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {p3, p2}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

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

    move-result-object p1

    return-object p1

    .line 59
    :cond_1
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v0, "Explicit selected converter cannot handle type"

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    const-string v0, "item-type"

    .line 61
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "converter-type"

    invoke-virtual {p1, p3, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    throw p1
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

    .line 111
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 112
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/DataHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 116
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->lazilyCreateDataHolder()V

    .line 117
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;
    .locals 2

    .line 132
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    .line 133
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeUnmarshaller;->validationList:Lcom/thoughtworks/xstream/core/util/PrioritizedList;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PrioritizedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 138
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-object p1
.end method
