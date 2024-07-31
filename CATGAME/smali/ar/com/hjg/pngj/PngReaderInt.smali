.class public Lar/com/hjg/pngj/PngReaderInt;
.super Lar/com/hjg/pngj/PngReader;
.source "PngReaderInt.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 17
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/File;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 21
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method


# virtual methods
.method public readRowInt()Lar/com/hjg/pngj/ImageLineInt;
    .locals 4

    .line 31
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReaderInt;->readRow()Lar/com/hjg/pngj/IImageLine;

    move-result-object v0

    .line 32
    .local v0, "line":Lar/com/hjg/pngj/IImageLine;
    instance-of v1, v0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v1, :cond_0

    .line 33
    move-object v1, v0

    check-cast v1, Lar/com/hjg/pngj/ImageLineInt;

    return-object v1

    .line 35
    :cond_0
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is not a ImageLineInt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
