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

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/StringCodec;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->codec:Lcom/thoughtworks/xstream/core/StringCodec;

    return-void
.end method

.method private unmarshalIndividualByteElements(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 4

    .line 75
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 77
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 84
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [B

    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p1, v2

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    return-object p1

    .line 78
    :cond_2
    :goto_2
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 79
    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->byteConverter:Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->codec:Lcom/thoughtworks/xstream/core/StringCodec;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/core/StringCodec;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->codec:Lcom/thoughtworks/xstream/core/StringCodec;

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/core/StringCodec;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2

    .line 65
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;->unmarshalIndividualByteElements(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
