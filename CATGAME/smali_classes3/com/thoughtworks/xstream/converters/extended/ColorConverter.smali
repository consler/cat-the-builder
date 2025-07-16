.class public Lcom/thoughtworks/xstream/converters/extended/ColorConverter;
.super Ljava/lang/Object;
.source "ColorConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1

    .line 61
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-interface {p3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.awt.Color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    .line 40
    check-cast p1, Ljava/awt/Color;

    const-string p3, "red"

    .line 41
    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v0

    invoke-direct {p0, p3, v0, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string p3, "green"

    .line 42
    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v0

    invoke-direct {p0, p3, v0, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string p3, "blue"

    .line 43
    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v0

    invoke-direct {p0, p3, v0, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string p3, "alpha"

    .line 44
    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result p1

    invoke-direct {p0, p3, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;->write(Ljava/lang/String;ILcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 4

    .line 48
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 49
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 51
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/awt/Color;

    const-string v0, "red"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "green"

    .line 55
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "blue"

    .line 56
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "alpha"

    .line 57
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, v0, v1, v2, p2}, Ljava/awt/Color;-><init>(IIII)V

    return-object p1
.end method
