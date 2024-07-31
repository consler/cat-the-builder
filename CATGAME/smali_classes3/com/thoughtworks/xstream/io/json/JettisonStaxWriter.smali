.class public Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;
.super Lcom/thoughtworks/xstream/io/xml/StaxWriter;
.source "JettisonStaxWriter.java"


# static fields
.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;


# instance fields
.field private final convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;
    .param p4, "convention"    # Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 84
    iput-object p4, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p3, "convention"    # Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 74
    iput-object p3, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p3, "writeEnclosingDocument"    # Z
    .param p4, "namespaceRepairingMode"    # Z
    .param p5, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;
    .param p6, "convention"    # Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 47
    iput-object p6, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p3, "writeEnclosingDocument"    # Z
    .param p4, "namespaceRepairingMode"    # Z
    .param p5, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;
    .param p6, "convention"    # Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p3, "writeEnclosingDocument"    # Z
    .param p4, "namespaceRepairingMode"    # Z
    .param p5, "convention"    # Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZ)V

    .line 67
    iput-object p5, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    .line 68
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 90
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
.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .line 88
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v0

    .line 89
    .local v0, "out":Ljavax/xml/stream/XMLStreamWriter;
    if-eqz p2, :cond_3

    instance-of v1, v0, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    if-eqz v1, :cond_3

    .line 90
    sget-object v1, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.util.Collection"

    invoke-static {v1}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Collection:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Map:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 91
    const-string v1, "java.util.Map"

    invoke-static {v1}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->getQNameMap()Lcom/thoughtworks/xstream/io/xml/QNameMap;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;->getQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 94
    .local v1, "qname":Ljavax/xml/namespace/QName;
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "uri":Ljava/lang/String;
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;->createKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "key":Ljava/lang/String;
    move-object v5, v0

    check-cast v5, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    invoke-virtual {v5}, Lorg/codehaus/jettison/AbstractXMLStreamWriter;->getSerializedAsArrays()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 99
    move-object v5, v0

    check-cast v5, Lorg/codehaus/jettison/AbstractXMLStreamWriter;

    invoke-virtual {v5, v4}, Lorg/codehaus/jettison/AbstractXMLStreamWriter;->seriliazeAsArray(Ljava/lang/String;)V

    .line 103
    .end local v1    # "qname":Ljavax/xml/namespace/QName;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;->startNode(Ljava/lang/String;)V

    .line 104
    return-void
.end method
