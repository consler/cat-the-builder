.class public Lorg/catrobat/catroid/io/ZipArchiver;
.super Ljava/lang/Object;
.source "ZipArchiver.java"


# static fields
.field private static final COMPRESSION_LEVEL:I = 0x0

.field private static final DIRECTORY_LEVEL_UP:Ljava/lang/String; = "../"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDirIfNecessary(Ljava/io/File;)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could NOT create Dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method private writeZipEntriesToStream(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "zipOutputStream"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "parentDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 60
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-direct {p0, p1, v2, v3}, Lorg/catrobat/catroid/io/ZipArchiver;->writeZipEntriesToStream(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 72
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 73
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v3, 0x2000

    :try_start_1
    new-array v3, v3, [B

    .line 75
    .local v3, "b":[B
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 76
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    .end local v3    # "b":[B
    .end local v5    # "len":I
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 79
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 80
    nop

    .line 81
    .end local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 72
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local p1    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .end local p2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local p3    # "parentDir":Ljava/lang/String;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local p1    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local p2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local p3    # "parentDir":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "file":Ljava/io/File;
    .end local p1    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .end local p2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local p3    # "parentDir":Ljava/lang/String;
    :goto_2
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 79
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p1    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local p2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local p3    # "parentDir":Ljava/lang/String;
    :catchall_3
    move-exception v0

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 80
    throw v0

    .line 61
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does NOT exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method


# virtual methods
.method public unzip(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "dstDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 86
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/io/ZipArchiver;->unzip(Ljava/io/InputStream;Ljava/io/File;)V

    .line 87
    return-void
.end method

.method public unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "dstDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/io/ZipArchiver;->createDirIfNecessary(Ljava/io/File;)V

    .line 92
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "../"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/io/ZipArchiver;->createDirIfNecessary(Ljava/io/File;)V

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v1, "zipEntryFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 106
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 107
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v4, 0x2000

    :try_start_1
    new-array v4, v4, [B

    .line 109
    .local v4, "b":[B
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 112
    .end local v4    # "b":[B
    .end local v6    # "len":I
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 113
    .end local v1    # "zipEntryFile":Ljava/io/File;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 106
    .restart local v1    # "zipEntryFile":Ljava/io/File;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v1    # "zipEntryFile":Ljava/io/File;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "dstDir":Ljava/io/File;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "zipEntryFile":Ljava/io/File;
    .restart local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "dstDir":Ljava/io/File;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "dstDir":Ljava/io/File;
    :goto_2
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 114
    .end local v1    # "zipEntryFile":Ljava/io/File;
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "dstDir":Ljava/io/File;
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 115
    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    return-void

    .line 92
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v1

    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "dstDir":Ljava/io/File;
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 114
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "dstDir":Ljava/io/File;
    :catchall_4
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method

.method public zip(Ljava/io/File;[Ljava/io/File;)V
    .locals 4
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 47
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 48
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    .local v1, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 51
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/catroid/io/ZipArchiver;->writeZipEntriesToStream(Ljava/util/zip/ZipOutputStream;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 54
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 54
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 55
    throw v2
.end method
