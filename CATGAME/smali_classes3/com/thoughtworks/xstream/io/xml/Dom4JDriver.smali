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

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 50
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 51
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/dom4j/io/OutputFormat;->setTrimText(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;)V
    .locals 1
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "outputFormat"    # Lorg/dom4j/io/OutputFormat;

    .line 55
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "outputFormat"    # Lorg/dom4j/io/OutputFormat;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 62
    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 63
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 64
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;
    .param p2, "outputFormat"    # Lorg/dom4j/io/OutputFormat;
    .param p3, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/io/OutputFormat;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 73
    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "in"    # Ljava/io/File;

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    .line 128
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 129
    .end local v0    # "document":Lorg/dom4j/Document;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/dom4j/DocumentException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v0

    .line 104
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 105
    .end local v0    # "document":Lorg/dom4j/Document;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/dom4j/DocumentException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "text"    # Ljava/io/Reader;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 95
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 96
    .end local v0    # "document":Lorg/dom4j/Document;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/dom4j/DocumentException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "in"    # Ljava/net/URL;

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createReader()Lorg/dom4j/io/SAXReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object v0

    .line 116
    .local v0, "document":Lorg/dom4j/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 117
    .end local v0    # "document":Lorg/dom4j/Document;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/dom4j/DocumentException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createReader()Lorg/dom4j/io/SAXReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .line 160
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 162
    .local v0, "reader":Lorg/dom4j/io/SAXReader;
    :try_start_0
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/io/SAXReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    nop

    .line 166
    return-object v0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/dom4j/DocumentException;

    const-string v3, "Cannot disable DOCTYPE processing"

    invoke-direct {v2, v3, v1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;

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

    .line 147
    .local v0, "encoding":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 148
    .local v1, "charset":Ljava/nio/charset/Charset;
    :cond_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_2

    invoke-direct {v2, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    goto :goto_1

    :cond_2
    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v2, "writer":Ljava/io/Writer;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v3

    return-object v3
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 5
    .param p1, "out"    # Ljava/io/Writer;

    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 136
    .local v0, "writer":[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver$1;-><init>(Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;Ljava/io/Writer;[Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 141
    .local v1, "filter":Ljava/io/FilterWriter;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;

    new-instance v3, Lorg/dom4j/io/XMLWriter;

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    invoke-direct {v3, v1, v4}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;-><init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 142
    aget-object v2, v0, v3

    return-object v2
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
    .param p1, "documentFactory"    # Lorg/dom4j/DocumentFactory;

    .line 81
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->documentFactory:Lorg/dom4j/DocumentFactory;

    .line 82
    return-void
.end method

.method public setOutputFormat(Lorg/dom4j/io/OutputFormat;)V
    .locals 0
    .param p1, "outputFormat"    # Lorg/dom4j/io/OutputFormat;

    .line 89
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JDriver;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 90
    return-void
.end method
