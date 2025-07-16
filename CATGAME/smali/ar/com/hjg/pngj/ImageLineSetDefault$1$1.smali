.class Lar/com/hjg/pngj/ImageLineSetDefault$1$1;
.super Lar/com/hjg/pngj/ImageLineSetDefault;
.source "ImageLineSetDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/ImageLineSetDefault$1;->create(Lar/com/hjg/pngj/ImageInfo;ZIII)Lar/com/hjg/pngj/IImageLineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lar/com/hjg/pngj/ImageLineSetDefault<",
        "Lar/com/hjg/pngj/ImageLineInt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lar/com/hjg/pngj/ImageLineSetDefault$1;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/ImageLineSetDefault$1;Lar/com/hjg/pngj/ImageInfo;ZIII)V
    .locals 6

    .line 117
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineSetDefault$1$1;->this$0:Lar/com/hjg/pngj/ImageLineSetDefault$1;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/ImageLineSetDefault;-><init>(Lar/com/hjg/pngj/ImageInfo;ZIII)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createImageLine()Lar/com/hjg/pngj/IImageLine;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineSetDefault$1$1;->createImageLine()Lar/com/hjg/pngj/ImageLineInt;

    move-result-object v0

    return-object v0
.end method

.method protected createImageLine()Lar/com/hjg/pngj/ImageLineInt;
    .locals 2

    .line 120
    new-instance v0, Lar/com/hjg/pngj/ImageLineInt;

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineSetDefault$1$1;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/ImageLineInt;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    return-object v0
.end method
