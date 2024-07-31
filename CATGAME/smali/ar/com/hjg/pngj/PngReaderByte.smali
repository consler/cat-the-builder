.class public Lar/com/hjg/pngj/PngReaderByte;
.super Lar/com/hjg/pngj/PngReader;
.source "PngReaderByte.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 14
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/File;)V

    .line 15
    invoke-static {}, Lar/com/hjg/pngj/ImageLineSetDefault;->getFactoryByte()Lar/com/hjg/pngj/IImageLineSetFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngReaderByte;->setLineSetFactory(Lar/com/hjg/pngj/IImageLineSetFactory;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 19
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/PngReader;-><init>(Ljava/io/InputStream;)V

    .line 20
    invoke-static {}, Lar/com/hjg/pngj/ImageLineSetDefault;->getFactoryByte()Lar/com/hjg/pngj/IImageLineSetFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngReaderByte;->setLineSetFactory(Lar/com/hjg/pngj/IImageLineSetFactory;)V

    .line 21
    return-void
.end method


# virtual methods
.method public readRowByte()Lar/com/hjg/pngj/ImageLineByte;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReaderByte;->readRow()Lar/com/hjg/pngj/IImageLine;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/ImageLineByte;

    return-object v0
.end method
