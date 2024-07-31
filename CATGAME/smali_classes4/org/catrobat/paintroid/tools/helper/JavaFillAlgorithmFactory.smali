.class public final Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithmFactory;
.super Ljava/lang/Object;
.source "JavaFillAlgorithmFactory.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithmFactory;",
        "Lorg/catrobat/paintroid/tools/helper/FillAlgorithmFactory;",
        "()V",
        "createFillAlgorithm",
        "Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFillAlgorithm()Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;
    .locals 1

    .line 22
    new-instance v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/helper/FillAlgorithm;

    return-object v0
.end method
