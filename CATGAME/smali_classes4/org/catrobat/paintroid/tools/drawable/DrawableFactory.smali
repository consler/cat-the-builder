.class public final Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;
.super Ljava/lang/Object;
.source "DrawableFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;",
        "",
        "()V",
        "createDrawable",
        "Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;",
        "shape",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableShape;",
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
.method public final createDrawable(Lorg/catrobat/paintroid/tools/drawable/DrawableShape;)Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;
    .locals 2
    .param p1, "shape"    # Lorg/catrobat/paintroid/tools/drawable/DrawableShape;

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/OvalDrawable;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/drawable/OvalDrawable;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    goto :goto_0

    .line 24
    :cond_3
    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/RectangleDrawable;

    invoke-direct {v0}, Lorg/catrobat/paintroid/tools/drawable/RectangleDrawable;-><init>()V

    check-cast v0, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    .line 23
    :goto_0
    return-object v0
.end method
