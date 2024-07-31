.class public abstract Lorg/catrobat/catroid/sensing/ConditionMatcher;
.super Ljava/lang/Object;
.source "ConditionMatcherRunner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/sensing/ConditionMatcher;",
        "",
        "()V",
        "spritePixmap",
        "Lcom/badlogic/gdx/graphics/Pixmap;",
        "getSpritePixmap",
        "()Lcom/badlogic/gdx/graphics/Pixmap;",
        "setSpritePixmap",
        "(Lcom/badlogic/gdx/graphics/Pixmap;)V",
        "stagePixmap",
        "getStagePixmap",
        "setStagePixmap",
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
.field private spritePixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field private stagePixmap:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpritePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/ConditionMatcher;->spritePixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public final getStagePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/ConditionMatcher;->stagePixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public abstract matches(II)Z
.end method

.method public final setSpritePixmap(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 61
    iput-object p1, p0, Lorg/catrobat/catroid/sensing/ConditionMatcher;->spritePixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-void
.end method

.method public final setStagePixmap(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 60
    iput-object p1, p0, Lorg/catrobat/catroid/sensing/ConditionMatcher;->stagePixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-void
.end method
