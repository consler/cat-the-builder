.class public final Lorg/catrobat/catroid/sync/ProjectsCategoriesSync$DefaultImpls;
.super Ljava/lang/Object;
.source "ProjectsCategoriesSync.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static synthetic sync$default(Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 37
    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;->sync(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sync"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
