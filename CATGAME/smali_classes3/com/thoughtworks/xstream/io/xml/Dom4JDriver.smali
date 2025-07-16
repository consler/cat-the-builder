.class public Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "Dom4JDriver.java"


# instance fields
.field private documentFactory:Lorg/dom4j/DocumentFactory;

.field private outputFormat:Lorg/dom4j/io/OutputFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2

    .line 50
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 51
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 62
    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 63
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 64
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object p1

    .line 128
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 130
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object p1

    .line 104
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 106
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object p1

    .line 95
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 97
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object p1

    .line 116
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected createReader()Lorg/dom4j/io/SAXReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 160
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    :try_start_0
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v2, 0x1

    .line 162
    invoke-virtual {v0, v1, v2}, Lorg/dom4j/io/SAXReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lorg/dom4j/DocumentException;

    const-string v2, "Cannot disable DOCTYPE processing"

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getOutputFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 147
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 148
    :cond_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_2

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    goto :goto_1

    :cond_2
    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 149
    :goto_1
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p1

    return-object p1
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 136
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;-><init>(Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;Ljava/io/Writer;[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 141
    new-instance p1, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;

    new-instance v2, Lorg/dom4j/io/XMLWriter;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    invoke-direct {v2, v1, v3}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;-><init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object p1
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public setOutputFormat(Lorg/dom4j/io/OutputFormat;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-void
.end method
