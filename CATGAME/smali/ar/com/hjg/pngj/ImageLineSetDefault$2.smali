.class final Lar/com/hjg/pngj/ImageLineSetDefault$2;
.super Ljava/lang/Object;
.source "ImageLineSetDefault.java"

# interfaces
.implements Lar/com/hjg/pngj/IImageLineSetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/ImageLineSetDefault;->getFactoryByte()Lar/com/hjg/pngj/IImageLineSetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/IImageLineSetFactory<",
        "Lar/com/hjg/pngj/ImageLineByte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lar/com/hjg/pngj/ImageInfo;ZIII)Lar/com/hjg/pngj/IImageLineSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/ImageInfo;",
            "ZIII)",
            "Lar/com/hjg/pngj/IImageLineSet<",
            "Lar/com/hjg/pngj/ImageLineByte;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v7, Lar/com/hjg/pngj/ImageLineSetDefault$2$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ImageLineSetDefault$2$1;-><init>(Lar/com/hjg/pngj/ImageLineSetDefault$2;Lar/com/hjg/pngj/ImageInfo;ZIII)V

    return-object v7
.end method
