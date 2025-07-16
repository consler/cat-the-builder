.class public abstract Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
.super Ljava/lang/Object;
.source "AbstractFilePersistenceStrategy.java"

# interfaces
.implements Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;,
        Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;
    }
.end annotation


# instance fields
.field private final baseDirectory:Ljava/io/File;

.field private final encoding:Ljava/lang/String;

.field private final filter:Ljava/io/FilenameFilter;

.field private final transient xstream:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    .line 50
    iput-object p2, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 51
    iput-object p3, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;

    invoke-direct {p1, p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$ValidFilenameFilter;-><init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)Ljava/io/FilenameFilter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)Ljava/io/File;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 2

    .line 163
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 164
    iget-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    .line 171
    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 176
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private writeFile(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2

    .line 143
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    iget-object p1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-direct {p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Writer;->close()V

    .line 151
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {p2, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method

.method protected abstract extractKey(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v0

    return-object v0
.end method

.method protected getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/XStream;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected isValid(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".xml"

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 188
    new-instance v0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy$XmlMapEntriesIterator;-><init>(Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 181
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 183
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->writeFile(Ljava/io/File;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 207
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->readFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->baseDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
