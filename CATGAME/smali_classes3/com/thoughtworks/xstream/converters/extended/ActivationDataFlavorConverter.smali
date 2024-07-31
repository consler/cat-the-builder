.class public Lcom/thoughtworks/xstream/converters/extended/ActivationDataFlavorConverter;
.super Ljava/lang/Object;
.source "ActivationDataFlavorConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$javax$activation$ActivationDataFlavor:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 32
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

    .line 32
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/ActivationDataFlavorConverter;->class$javax$activation$ActivationDataFlavor:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.activation.ActivationDataFlavor"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/ActivationDataFlavorConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/ActivationDataFlavorConverter;->class$javax$activation$ActivationDataFlavor:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 36
    move-object v0, p1

    check-cast v0, Ljavax/activation/ActivationDataFlavor;

    .line 37
    .local v0, "dataFlavor":Ljavax/activation/ActivationDataFlavor;
    invoke-virtual {v0}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 39
    const-string v2, "mimeType"

    invoke-interface {p2, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 40
    invoke-interface {p2, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 41
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljavax/activation/ActivationDataFlavor;->getHumanPresentableName()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 45
    const-string v3, "humanRepresentableName"

    invoke-interface {p2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 46
    invoke-interface {p2, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 47
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljavax/activation/ActivationDataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object v3

    .line 50
    .local v3, "representationClass":Ljava/lang/Class;
    if-eqz v3, :cond_2

    .line 51
    const-string v4, "representationClass"

    invoke-interface {p2, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 52
    invoke-interface {p3, v3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 53
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 55
    :cond_2
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 7
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 60
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 61
    .local v2, "type":Ljava/lang/Class;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 64
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "elementName":Ljava/lang/String;
    const-string v4, "mimeType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_0
    const-string v4, "humanRepresentableName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 69
    :cond_1
    const-string v4, "representationClass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    const/4 v4, 0x0

    sget-object v5, Lcom/thoughtworks/xstream/converters/extended/ActivationDataFlavorConverter;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v5, :cond_2

    const-string v5, "java.lang.Class"

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/extended/ActivationDataFlavorConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/converters/extended/ActivationDataFlavorConverter;->class$java$lang$Class:Ljava/lang/Class;

    :cond_2
    invoke-interface {p2, v4, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/Class;

    .line 76
    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 77
    .end local v3    # "elementName":Ljava/lang/String;
    goto :goto_0

    .line 72
    .restart local v3    # "elementName":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v5, "Unknown child element"

    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "element"

    invoke-virtual {v4, v6, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    throw v4

    .line 78
    .end local v3    # "elementName":Ljava/lang/String;
    .end local v4    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    :cond_4
    const/4 v3, 0x0

    .line 80
    .local v3, "dataFlavor":Ljavax/activation/ActivationDataFlavor;
    if-nez v2, :cond_5

    .line 81
    :try_start_0
    new-instance v4, Ljavax/activation/ActivationDataFlavor;

    invoke-direct {v4, v0, v1}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_2

    .line 89
    :catch_0
    move-exception v4

    goto :goto_3

    .line 87
    :catch_1
    move-exception v4

    goto :goto_4

    .line 82
    :cond_5
    if-nez v0, :cond_6

    .line 83
    new-instance v4, Ljavax/activation/ActivationDataFlavor;

    invoke-direct {v4, v2, v1}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_2

    .line 85
    :cond_6
    new-instance v4, Ljavax/activation/ActivationDataFlavor;

    invoke-direct {v4, v2, v0, v1}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 91
    :goto_2
    nop

    .line 92
    return-object v3

    .line 90
    .local v4, "ex":Ljava/lang/NullPointerException;
    :goto_3
    new-instance v5, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v5, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 88
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    :goto_4
    new-instance v5, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v5, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
