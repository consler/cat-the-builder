.class public Lar/com/hjg/pngj/PngWriterHc;
.super Lar/com/hjg/pngj/PngWriter;
.source "PngWriterHc.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V

    .line 14
    sget-object p1, Lar/com/hjg/pngj/FilterType;->FILTER_SUPER_ADAPTIVE:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/PngWriterHc;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method protected createPixelsWriter(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/pixels/PixelsWriter;
    .locals 1

    .line 27
    new-instance v0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0
.end method

.method public getPixelWriterMultiple()Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;
    .locals 1

    .line 32
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriterHc;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    check-cast v0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;

    return-object v0
.end method
