.class public Lar/com/hjg/pngj/PngReaderInt;
.super Lar/com/hjg/pngj/PngReader;
.source "PngReaderInt.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readRowInt()Lar/com/hjg/pngj/ImageLineInt;
    .locals 4

    .line 31
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReaderInt;->readRow()Lar/com/hjg/pngj/IImageLine;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    return-object v0

    .line 35
    :cond_0
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "This is not a ImageLineInt : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
