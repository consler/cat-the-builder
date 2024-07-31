.class public Lcom/thoughtworks/xstream/io/xml/WstxDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.source "WstxDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 61
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;

    .line 47
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 54
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected createInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 3

    .line 65
    new-instance v0, Lcom/ctc/wstx/stax/WstxInputFactory;

    invoke-direct {v0}, Lcom/ctc/wstx/stax/WstxInputFactory;-><init>()V

    .line 66
    .local v0, "instance":Ljavax/xml/stream/XMLInputFactory;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "javax.xml.stream.isSupportingExternalEntities"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-object v0
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 1

    .line 71
    new-instance v0, Lcom/ctc/wstx/stax/WstxOutputFactory;

    invoke-direct {v0}, Lcom/ctc/wstx/stax/WstxOutputFactory;-><init>()V

    return-object v0
.end method
