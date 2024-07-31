.class public abstract Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;
.super Ljava/lang/Object;
.source "AbstractPropertiesFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/util/Properties;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected abstract createProperties()Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public load(Ljava/io/File;)Ljava/util/Properties;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->load(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 85
    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "file":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public load(Ljava/io/InputStream;)Ljava/util/Properties;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    if-nez p1, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->createProperties()Ljava/util/Properties;

    move-result-object v0

    .line 102
    .local v0, "properties":Ljava/util/Properties;, "TT;"
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 103
    return-object v0
.end method

.method public load(Ljava/io/Reader;)Ljava/util/Properties;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->createProperties()Ljava/util/Properties;

    move-result-object v0

    .line 130
    .local v0, "properties":Ljava/util/Properties;, "TT;"
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 131
    return-object v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 67
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->load(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 67
    :cond_0
    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "name":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public load(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->load(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 144
    return-object v1

    .line 143
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "name":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public load(Ljava/net/URI;)Ljava/util/Properties;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    invoke-static {p1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->load(Ljava/nio/file/Path;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/net/URL;)Ljava/util/Properties;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 170
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->load(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 170
    :cond_0
    return-object v1

    .line 169
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "url":Ljava/net/URL;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public load(Ljava/nio/file/Path;)Ljava/util/Properties;
    .locals 4
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;, "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 116
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;->load(Ljava/io/InputStream;)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    :cond_0
    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "path":Ljava/nio/file/Path;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "path":Ljava/nio/file/Path;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method
