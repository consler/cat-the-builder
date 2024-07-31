.class public abstract Lar/com/hjg/pngj/ImageLineSetDefault;
.super Ljava/lang/Object;
.source "ImageLineSetDefault.java"

# interfaces
.implements Lar/com/hjg/pngj/IImageLineSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lar/com/hjg/pngj/IImageLine;",
        ">",
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/IImageLineSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected currentRow:I

.field protected imageLine:Lar/com/hjg/pngj/IImageLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected imageLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field private final nlines:I

.field private final offset:I

.field private final singleCursor:Z

.field private final step:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;ZIII)V
    .locals 3
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p2, "singleCursor"    # Z
    .param p3, "nlines"    # I
    .param p4, "noffset"    # I
    .param p5, "step"    # I

    .line 21
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->currentRow:I

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 23
    iput-boolean p2, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->singleCursor:Z

    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 25
    iput v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->nlines:I

    .line 26
    iput v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->offset:I

    .line 27
    iput v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->step:I

    goto :goto_0

    .line 29
    :cond_0
    iget v2, p1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    iput v2, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->nlines:I

    .line 30
    iput v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->offset:I

    .line 31
    iput v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->step:I

    .line 33
    :goto_0
    invoke-direct {p0}, Lar/com/hjg/pngj/ImageLineSetDefault;->createImageLines()V

    .line 34
    return-void
.end method

.method private createImageLines()V
    .locals 3

    .line 37
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->singleCursor:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineSetDefault;->createImageLine()Lar/com/hjg/pngj/IImageLine;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->imageLine:Lar/com/hjg/pngj/IImageLine;

    goto :goto_1

    .line 40
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->imageLines:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->nlines:I

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->imageLines:Ljava/util/List;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineSetDefault;->createImageLine()Lar/com/hjg/pngj/IImageLine;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public static getFactoryByte()Lar/com/hjg/pngj/IImageLineSetFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/IImageLineSetFactory<",
            "Lar/com/hjg/pngj/ImageLineByte;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Lar/com/hjg/pngj/ImageLineSetDefault$2;

    invoke-direct {v0}, Lar/com/hjg/pngj/ImageLineSetDefault$2;-><init>()V

    return-object v0
.end method

.method public static getFactoryInt()Lar/com/hjg/pngj/IImageLineSetFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lar/com/hjg/pngj/IImageLineSetFactory<",
            "Lar/com/hjg/pngj/ImageLineInt;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lar/com/hjg/pngj/ImageLineSetDefault$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/ImageLineSetDefault$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected abstract createImageLine()Lar/com/hjg/pngj/IImageLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getImageLine(I)Lar/com/hjg/pngj/IImageLine;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    iput p1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->currentRow:I

    .line 57
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->singleCursor:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->imageLine:Lar/com/hjg/pngj/IImageLine;

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->imageLines:Ljava/util/List;

    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/ImageLineSetDefault;->imageRowToMatrixRowStrict(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/IImageLine;

    return-object v0
.end method

.method public hasImageLine(I)Z
    .locals 3
    .param p1, "n"    # I

    .line 71
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    iget-boolean v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->singleCursor:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->currentRow:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/ImageLineSetDefault;->imageRowToMatrixRowStrict(I)I

    move-result v0

    if-ltz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public imageRowToMatrixRow(I)I
    .locals 2
    .param p1, "imrow"    # I

    .line 108
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    iget v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->offset:I

    sub-int v0, p1, v0

    iget v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->step:I

    div-int/2addr v0, v1

    .line 109
    .local v0, "r":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->nlines:I

    if-ge v0, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :goto_0
    return v1
.end method

.method public imageRowToMatrixRowStrict(I)I
    .locals 3
    .param p1, "imrow"    # I

    .line 85
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    iget v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->offset:I

    sub-int/2addr p1, v0

    .line 86
    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->step:I

    rem-int v2, p1, v1

    if-nez v2, :cond_0

    div-int v1, p1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 87
    .local v1, "mrow":I
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->nlines:I

    if-ge v1, v2, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public matrixRowToImageRow(I)I
    .locals 2
    .param p1, "mrow"    # I

    .line 97
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    iget v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->step:I

    mul-int/2addr v0, p1

    iget v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public size()I
    .locals 1

    .line 78
    .local p0, "this":Lar/com/hjg/pngj/ImageLineSetDefault;, "Lar/com/hjg/pngj/ImageLineSetDefault<TT;>;"
    iget v0, p0, Lar/com/hjg/pngj/ImageLineSetDefault;->nlines:I

    return v0
.end method
