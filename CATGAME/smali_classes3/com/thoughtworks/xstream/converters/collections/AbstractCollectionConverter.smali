.class public abstract Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;
.super Ljava/lang/Object;
.source "AbstractCollectionConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;


# instance fields
.field private final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 107
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


# virtual methods
.method public abstract canConvert(Ljava/lang/Class;)Z
.end method

.method protected createCollection(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    const-string v0, "Cannot instantiate default collection"

    .line 154
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 156
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 160
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v3, v0, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 158
    new-instance v3, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v3, v0, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "collection-type"

    .line 162
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "default-type"

    .line 163
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    throw v3
.end method

.method protected mapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public abstract marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
.end method

.method protected readBareItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object p1

    .line 132
    invoke-interface {p2, p3, p1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected readCompleteItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 147
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->readItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 148
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-object p2
.end method

.method protected readItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->readBareItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
.end method

.method protected writeBareItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 0

    .line 94
    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    return-void
.end method

.method protected writeCompleteItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    return-void
.end method

.method protected writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 2

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->writeNullItem(Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->writeBareItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 67
    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :goto_0
    return-void
.end method

.method protected writeNullItem(Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 107
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_0
    invoke-static {p2, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 108
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method
