.class public Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;
.super Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;
.source "NamedCollectionConverter.java"


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/Class;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;-><init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "itemName"    # Ljava/lang/String;
    .param p4, "itemType"    # Ljava/lang/Class;

    .line 60
    invoke-direct {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 61
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->name:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->type:Ljava/lang/Class;

    .line 63
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 75
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


# virtual methods
.method protected readBareItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "current"    # Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->type:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 93
    .local v1, "itemType":Ljava/lang/Class;
    :goto_0
    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const/4 v2, 0x0

    return-object v2

    .line 96
    :cond_2
    invoke-interface {p2, p3, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected writeCompleteItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p3, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 68
    return-void
.end method

.method protected writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;
    .param p3, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 75
    if-nez p1, :cond_0

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, "itemType":Ljava/lang/Class;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->name:Ljava/lang/String;

    invoke-static {p3, v1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 77
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    const-string v2, "class"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "attributeName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/extended/NamedCollectionConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "attributeName":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 84
    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 86
    :cond_3
    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 87
    return-void
.end method
