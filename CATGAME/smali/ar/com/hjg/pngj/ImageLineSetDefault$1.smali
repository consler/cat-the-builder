.class final Lar/com/hjg/pngj/ImageLineSetDefault$1;
.super Ljava/lang/Object;
.source "ImageLineSetDefault.java"

# interfaces
.implements Lar/com/hjg/pngj/IImageLineSetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/ImageLineSetDefault;->getFactoryInt()Lar/com/hjg/pngj/IImageLineSetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/IImageLineSetFactory<",
        "Lar/com/hjg/pngj/ImageLineInt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lar/com/hjg/pngj/ImageInfo;ZIII)Lar/com/hjg/pngj/IImageLineSet;
    .locals 8
    .param p1, "iminfo"    # Lar/com/hjg/pngj/ImageInfo;
    .param p2, "singleCursor"    # Z
    .param p3, "nlines"    # I
    .param p4, "noffset"    # I
    .param p5, "step"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/ImageInfo;",
            "ZIII)",
            "Lar/com/hjg/pngj/IImageLineSet<",
            "Lar/com/hjg/pngj/ImageLineInt;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v7, Lar/com/hjg/pngj/ImageLineSetDefault$1$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ImageLineSetDefault$1$1;-><init>(Lar/com/hjg/pngj/ImageLineSetDefault$1;Lar/com/hjg/pngj/ImageInfo;ZIII)V

    return-object v7
.end method
