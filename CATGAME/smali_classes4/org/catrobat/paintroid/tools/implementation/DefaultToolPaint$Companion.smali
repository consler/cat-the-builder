.class public final Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;
.super Ljava/lang/Object;
.source "DefaultToolPaint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;",
        "",
        "()V",
        "antialiasing",
        "",
        "getAntialiasing",
        "()Z",
        "setAntialiasing",
        "(Z)V",
        "arePaintEquals",
        "paint1",
        "Landroid/graphics/Paint;",
        "paint2",
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
.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final arePaintEquals(Landroid/graphics/Paint;Landroid/graphics/Paint;)Z
    .locals 2

    const-string v0, "paint1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getAntialiasing()Z
    .locals 1

    .line 110
    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->access$getAntialiasing$cp()Z

    move-result v0

    return v0
.end method

.method public final setAntialiasing(Z)V
    .locals 0

    .line 110
    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->access$setAntialiasing$cp(Z)V

    return-void
.end method
