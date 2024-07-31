.class public Lar/com/hjg/pngj/PngWriterHc;
.super Lar/com/hjg/pngj/PngWriter;
.source "PngWriterHc.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 18
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p3, "allowoverwrite"    # Z

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V

    .line 14
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngWriterHc;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 22
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected createPixelsWriter(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/pixels/PixelsWriter;
    .locals 1
    .param p1, "imginfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 27
    new-instance v0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 28
    .local v0, "pw":Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;
    return-object v0
.end method

.method public getPixelWriterMultiple()Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;
    .locals 1

    .line 32
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriterHc;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    check-cast v0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;

    return-object v0
.end method
