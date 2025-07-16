.class public Lcom/thoughtworks/xstream/io/xml/StaxWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.source "StaxWriter.java"


# instance fields
.field private namespaceRepairingMode:Z

.field private final out:Ljavax/xml/stream/XMLStreamWriter;

.field private final qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

.field private tagDepth:I

.field private final writeEnclosingDocument:Z


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 92
    new-instance v5, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p5}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 71
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    .line 72
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    .line 73
    iput-boolean p3, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->writeEnclosingDocument:Z

    .line 74
    iput-boolean p4, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->namespaceRepairingMode:Z

    if-eqz p3, :cond_0

    .line 76
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 114
    invoke-direct/range {p0 .. p5}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;ZZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {p2, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public close()V
    .locals 2

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endNode()V
    .locals 2

    .line 146
    :try_start_0
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    .line 147
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 148
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->writeEnclosingDocument:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getQNameMap()Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    return-object v0
.end method

.method protected getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    return-object v0
.end method

.method public isNamespaceRepairingMode()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->namespaceRepairingMode:Z

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 160
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 8

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;->getQName(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v4, :cond_2

    .line 179
    iget-object v6, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v6

    invoke-interface {v6, v0}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 180
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 184
    :cond_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v6, v7}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 185
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    :goto_2
    move v2, v3

    .line 191
    :cond_4
    iget-object v6, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, v0, p1, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    .line 193
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 196
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 199
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->isNamespaceRepairingMode()Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v4, :cond_7

    .line 201
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 203
    :cond_7
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    .line 206
    :cond_8
    :goto_4
    iget p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;->tagDepth:I
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
