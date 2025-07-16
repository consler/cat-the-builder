.class public Lid/zelory/compressor/Compressor;
.super Ljava/lang/Object;
.source "Compressor.java"


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private destinationDirectoryPath:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field private quality:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x264

    .line 20
    iput v0, p0, Lid/zelory/compressor/Compressor;->maxWidth:I

    const/16 v0, 0x330

    .line 21
    iput v0, p0, Lid/zelory/compressor/Compressor;->maxHeight:I

    .line 22
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lid/zelory/compressor/Compressor;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x50

    .line 23
    iput v0, p0, Lid/zelory/compressor/Compressor;->quality:I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "images"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lid/zelory/compressor/Compressor;->destinationDirectoryPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compressToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget v0, p0, Lid/zelory/compressor/Compressor;->maxWidth:I

    iget v1, p0, Lid/zelory/compressor/Compressor;->maxHeight:I

    invoke-static {p1, v0, v1}, Lid/zelory/compressor/ImageUtil;->decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public compressToBitmapAsFlowable(Ljava/io/File;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/Flowable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lid/zelory/compressor/Compressor$2;

    invoke-direct {v0, p0, p1}, Lid/zelory/compressor/Compressor$2;-><init>(Lid/zelory/compressor/Compressor;Ljava/io/File;)V

    invoke-static {v0}, Lio/reactivex/Flowable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public compressToFile(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lid/zelory/compressor/Compressor;->compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget v1, p0, Lid/zelory/compressor/Compressor;->maxWidth:I

    iget v2, p0, Lid/zelory/compressor/Compressor;->maxHeight:I

    iget-object v3, p0, Lid/zelory/compressor/Compressor;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lid/zelory/compressor/Compressor;->quality:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lid/zelory/compressor/Compressor;->destinationDirectoryPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lid/zelory/compressor/ImageUtil;->compressImage(Ljava/io/File;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public compressToFileAsFlowable(Ljava/io/File;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lid/zelory/compressor/Compressor;->compressToFileAsFlowable(Ljava/io/File;Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public compressToFileAsFlowable(Ljava/io/File;Ljava/lang/String;)Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lid/zelory/compressor/Compressor$1;

    invoke-direct {v0, p0, p1, p2}, Lid/zelory/compressor/Compressor$1;-><init>(Lid/zelory/compressor/Compressor;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Flowable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lid/zelory/compressor/Compressor;
    .locals 0

    .line 41
    iput-object p1, p0, Lid/zelory/compressor/Compressor;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setDestinationDirectoryPath(Ljava/lang/String;)Lid/zelory/compressor/Compressor;
    .locals 0

    .line 51
    iput-object p1, p0, Lid/zelory/compressor/Compressor;->destinationDirectoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxHeight(I)Lid/zelory/compressor/Compressor;
    .locals 0

    .line 36
    iput p1, p0, Lid/zelory/compressor/Compressor;->maxHeight:I

    return-object p0
.end method

.method public setMaxWidth(I)Lid/zelory/compressor/Compressor;
    .locals 0

    .line 31
    iput p1, p0, Lid/zelory/compressor/Compressor;->maxWidth:I

    return-object p0
.end method

.method public setQuality(I)Lid/zelory/compressor/Compressor;
    .locals 0

    .line 46
    iput p1, p0, Lid/zelory/compressor/Compressor;->quality:I

    return-object p0
.end method
