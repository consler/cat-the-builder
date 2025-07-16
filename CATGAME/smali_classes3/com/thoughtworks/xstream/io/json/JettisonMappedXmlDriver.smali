.class public Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "JettisonMappedXmlDriver.java"


# instance fields
.field protected final convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

.field protected final mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

.field protected final mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

.field protected final useSerializeAsArray:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/codehaus/jettison/mapped/Configuration;

    invoke-direct {v0}, Lorg/codehaus/jettison/mapped/Configuration;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jettison/mapped/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;-><init>(Lorg/codehaus/jettison/mapped/Configuration;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jettison/mapped/Configuration;Z)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>()V

    .line 77
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    .line 78
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    .line 79
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    .line 80
    iput-boolean p2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4

    const/4 v0, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {v3, p1, v1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v0, v2, p1, v3}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    .line 130
    :goto_0
    :try_start_3
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception p1

    .line 128
    :goto_1
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v0, :cond_0

    .line 134
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 139
    :catch_5
    :cond_0
    throw p1
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    .line 93
    :try_start_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 95
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3

    .line 85
    :try_start_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 87
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4

    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    .line 104
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {v3, p1, v0}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 108
    :try_start_2
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 106
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 112
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    :catch_3
    :cond_1
    throw p1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 4

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 162
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 4

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 150
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
