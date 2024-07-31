.class public final Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;
.super Lorg/catrobat/catroid/sensing/ConditionMatcher;
.source "ConditionMatcherRunner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016R\u0016\u0010\u0002\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;",
        "Lorg/catrobat/catroid/sensing/ConditionMatcher;",
        "spriteColor",
        "",
        "stageColor",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Lcom/badlogic/gdx/graphics/Color;",
        "kotlin.jvm.PlatformType",
        "matches",
        "",
        "x",
        "",
        "y",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final spriteColor:Lcom/badlogic/gdx/graphics/Color;

.field private final stageColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "spriteColor"    # Ljava/lang/String;
    .param p2, "stageColor"    # Ljava/lang/String;

    const-string v0, "spriteColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageColor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lorg/catrobat/catroid/sensing/ConditionMatcher;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;->spriteColor:Lcom/badlogic/gdx/graphics/Color;

    .line 78
    invoke-static {p2}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;->stageColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public matches(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 80
    invoke-virtual {p0}, Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;->getStagePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v0

    .line 81
    .local v0, "stagePixel":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;->getSpritePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v2

    .line 83
    .local v2, "spritePixel":I
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    iget-object v4, p0, Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;->stageColor:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "stageColor"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->access$equalsColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    iget-object v4, p0, Lorg/catrobat/catroid/sensing/ColorTouchesColorMatcher;->spriteColor:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "spriteColor"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/catrobat/catroid/sensing/ConditionMatcherRunnerKt;->access$equalsColor(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 81
    .end local v2    # "spritePixel":I
    :cond_1
    return v1

    .line 80
    .end local v0    # "stagePixel":I
    :cond_2
    return v1
.end method
