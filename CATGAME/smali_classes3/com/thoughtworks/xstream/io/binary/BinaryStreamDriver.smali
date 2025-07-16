.class public Lcom/thoughtworks/xstream/io/binary/BinaryStreamDriver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "BinaryStreamDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>()V

    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1

    .line 43
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The BinaryDriver cannot use character-oriented input streams."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 1

    .line 55
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 1

    .line 50
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The BinaryDriver cannot use character-oriented output streams."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
