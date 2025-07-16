.class final Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;
.super Ljava/lang/Object;
.source "ImageLineARGBbi.java"

# interfaces
.implements Lar/com/hjg/pngj/IImageLineFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->getFactory(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/IImageLineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/IImageLineFactory<",
        "Lar/com/hjg/pngj/ImageLineByte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createImageLine(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/IImageLine;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;->createImageLine(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/ImageLineByte;

    move-result-object p1

    return-object p1
.end method

.method public createImageLine(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/ImageLineByte;
    .locals 1

    .line 41
    new-instance v0, Lar/com/hjg/pngj/ImageLineByte;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/ImageLineByte;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0
.end method
