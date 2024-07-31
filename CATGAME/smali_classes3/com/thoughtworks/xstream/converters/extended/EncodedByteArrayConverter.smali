.class public Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;
.super Ljava/lang/Object;
.source "EncodedByteArrayConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# static fields
.field private static final byteConverter:Lcom/thoughtworks/xstream/converters/basic/ByteConverter;


# instance fields
.field private final codec:Lcom/thoughtworks/xstream/core/StringCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->byteConverter:Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getBase64Codec()Lcom/thoughtworks/xstream/core/StringCodec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;-><init>(Lcom/thoughtworks/xstream/core/StringCodec;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/StringCodec;)V
    .locals 0
    .param p1, "stringCodec"    # Lcom/thoughtworks/xstream/core/StringCodec;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->codec:Lcom/thoughtworks/xstream/core/StringCodec;

    .line 54
    return-void
.end method

.method private unmarshalIndividualByteElements(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "bytes":Ljava/util/List;
    const/4 v1, 0x1

    .line 77
    .local v1, "firstIteration":Z
    :goto_0
    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 85
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 86
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    .line 88
    .local v5, "b":Ljava/lang/Byte;
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v2, v3

    .line 89
    nop

    .end local v5    # "b":Ljava/lang/Byte;
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_1

    .line 91
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2

    .line 78
    .end local v2    # "result":[B
    .end local v3    # "i":I
    :cond_2
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 79
    sget-object v2, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->byteConverter:Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->codec:Lcom/thoughtworks/xstream/core/StringCodec;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/core/StringCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 61
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->codec:Lcom/thoughtworks/xstream/core/StringCodec;

    move-object v1, p1

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/core/StringCodec;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 65
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "data":Ljava/lang/String;
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->unmarshalIndividualByteElements(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
