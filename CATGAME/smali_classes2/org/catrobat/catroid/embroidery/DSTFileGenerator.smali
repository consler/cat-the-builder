.class public Lorg/catrobat/catroid/embroidery/DSTFileGenerator;
.super Ljava/lang/Object;
.source "DSTFileGenerator.java"


# instance fields
.field private stream:Lorg/catrobat/catroid/embroidery/EmbroideryStream;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/embroidery/EmbroideryStream;)V
    .locals 0
    .param p1, "stream"    # Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;->stream:Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    .line 36
    return-void
.end method

.method private writeStitchPoints(Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "fileStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;->stream:Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    invoke-interface {v0}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->getPointList()Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    .local v0, "stitchPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/catrobat/catroid/embroidery/StitchPoint;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/embroidery/StitchPoint;

    .line 49
    .local v2, "point":Lorg/catrobat/catroid/embroidery/StitchPoint;
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/embroidery/StitchPoint;->appendToStream(Ljava/io/FileOutputStream;)V

    .line 50
    .end local v2    # "point":Lorg/catrobat/catroid/embroidery/StitchPoint;
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public writeToDSTFile(Ljava/io/File;)V
    .locals 4
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 40
    .local v0, "fileStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;->stream:Lorg/catrobat/catroid/embroidery/EmbroideryStream;

    invoke-interface {v1}, Lorg/catrobat/catroid/embroidery/EmbroideryStream;->getHeader()Lorg/catrobat/catroid/embroidery/EmbroideryHeader;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/catrobat/catroid/embroidery/EmbroideryHeader;->appendToStream(Ljava/io/FileOutputStream;)V

    .line 41
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/embroidery/DSTFileGenerator;->writeStitchPoints(Ljava/io/FileOutputStream;)V

    .line 42
    sget-object v1, Lorg/catrobat/catroid/embroidery/DSTFileConstants;->FILE_END:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 44
    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    return-void

    .line 39
    .restart local v0    # "fileStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "fileStream":Ljava/io/FileOutputStream;
    .end local p1    # "dstFile":Ljava/io/File;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .restart local v0    # "fileStream":Ljava/io/FileOutputStream;
    .restart local p1    # "dstFile":Ljava/io/File;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method
