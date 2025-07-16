.class public Lcom/thoughtworks/xstream/core/TreeMarshaller;
.super Ljava/lang/Object;
.source "TreeMarshaller.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/MarshallingContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/TreeMarshaller$CircularReferenceException;
    }
.end annotation


# instance fields
.field protected converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

.field protected writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    .line 37
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 38
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 39
    iput-object p3, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void
.end method

.method private lazilyCreateDataHolder()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    :cond_0
    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->containsId(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->associateId(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {p2, p1, v0, p0}, Lcom/thoughtworks/xstream/converters/Converter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 71
    iget-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->parentObjects:Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    invoke-virtual {p2, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->removeId(Ljava/lang/Object;)V

    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/core/TreeMarshaller$CircularReferenceException;

    const-string v1, "Recursive reference to parent object"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/TreeMarshaller$CircularReferenceException;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "item-type"

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "converter-type"

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    throw v0
.end method

.method public convertAnother(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method public convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 2

    if-nez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object p2

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/converters/Converter;->canConvert(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->convert(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void

    .line 51
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Explicit selected converter cannot handle item"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "item-type"

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "converter-type"

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->lazilyCreateDataHolder()V

    .line 89
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/DataHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->lazilyCreateDataHolder()V

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->lazilyCreateDataHolder()V

    .line 94
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 2

    .line 75
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->dataHolder:Lcom/thoughtworks/xstream/converters/DataHolder;

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 80
    invoke-static {p2, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/core/TreeMarshaller;->convertAnother(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/TreeMarshaller;->writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :goto_0
    return-void
.end method
