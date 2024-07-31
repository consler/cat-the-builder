.class public Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;
.super Ljava/lang/Object;
.source "NamedArrayConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;


# instance fields
.field private final arrayType:Ljava/lang/Class;

.field private final itemName:Ljava/lang/String;

.field private final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/String;)V
    .locals 3
    .param p1, "arrayType"    # Ljava/lang/Class;
    .param p2, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p3, "itemName"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->arrayType:Ljava/lang/Class;

    .line 54
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 55
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->itemName:Ljava/lang/String;

    .line 56
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " is not an array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 67
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
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 59
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->arrayType:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 63
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 65
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 66
    .local v2, "item":Ljava/lang/Object;
    if-nez v2, :cond_1

    sget-object v3, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 67
    const-string v3, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->arrayType:Ljava/lang/Class;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/thoughtworks/xstream/core/util/Primitives;->unbox(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_1
    nop

    .line 71
    .local v3, "itemType":Ljava/lang/Class;
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->itemName:Ljava/lang/String;

    invoke-static {p2, v4, v3}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->arrayType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 73
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v5, "class"

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "attributeName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 75
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v4    # "attributeName":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 79
    invoke-interface {p3, v2}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 81
    :cond_4
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 64
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "itemType":Ljava/lang/Class;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "list":Ljava/util/List;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 90
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {p1, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "className":Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->arrayType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 92
    .local v2, "itemType":Ljava/lang/Class;
    :goto_1
    sget-object v3, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    const/4 v3, 0x0

    .local v3, "item":Ljava/lang/Object;
    goto :goto_2

    .line 95
    .end local v3    # "item":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 97
    .restart local v3    # "item":Ljava/lang/Object;
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 99
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "itemType":Ljava/lang/Class;
    .end local v3    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/extended/NamedArrayConverter;->arrayType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 104
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method
