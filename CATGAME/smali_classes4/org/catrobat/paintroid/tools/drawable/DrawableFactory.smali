.class public final Lorg/catrobat/paintroid/tools/drawable/DrawableFactory;
.super Ljava/lang/Object;
.source "DrawableFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
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
    .locals 1

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/drawable/DrawableShape;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 27
    new-instance p1, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;

    invoke-direct {p1}, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;-><init>()V

    check-cast p1, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;

    invoke-direct {p1}, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;-><init>()V

    check-cast p1, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    goto :goto_0

    .line 25
    :cond_2
    new-instance p1, Lorg/catrobat/paintroid/tools/drawable/OvalDrawable;

    invoke-direct {p1}, Lorg/catrobat/paintroid/tools/drawable/OvalDrawable;-><init>()V

    check-cast p1, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    goto :goto_0

    .line 24
    :cond_3
    new-instance p1, Lorg/catrobat/paintroid/tools/drawable/RectangleDrawable;

    invoke-direct {p1}, Lorg/catrobat/paintroid/tools/drawable/RectangleDrawable;-><init>()V

    check-cast p1, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    :goto_0
    return-object p1
.end method
