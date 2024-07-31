.class public final Lorg/catrobat/catroid/sensing/ConditionMatcherRunner;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/catroid/sensing/ConditionMatcherRunner;",
        "",
        "matcher",
        "Lorg/catrobat/catroid/sensing/ConditionMatcher;",
        "(Lorg/catrobat/catroid/sensing/ConditionMatcher;)V",
        "getMatcher",
        "()Lorg/catrobat/catroid/sensing/ConditionMatcher;",
        "match",
        "",
        "width",
        "",
        "height",
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
.field private final matcher:Lorg/catrobat/catroid/sensing/ConditionMatcher;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/sensing/ConditionMatcher;)V
    .locals 1
    .param p1, "matcher"    # Lorg/catrobat/catroid/sensing/ConditionMatcher;

    const-string v0, "matcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/sensing/ConditionMatcherRunner;->matcher:Lorg/catrobat/catroid/sensing/ConditionMatcher;

    return-void
.end method


# virtual methods
.method public final getMatcher()Lorg/catrobat/catroid/sensing/ConditionMatcher;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/sensing/ConditionMatcherRunner;->matcher:Lorg/catrobat/catroid/sensing/ConditionMatcher;

    return-object v0
.end method

.method public final match(II)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 90
    .local v1, "x":I
    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 91
    .local v2, "y":I
    iget-object v3, p0, Lorg/catrobat/catroid/sensing/ConditionMatcherRunner;->matcher:Lorg/catrobat/catroid/sensing/ConditionMatcher;

    invoke-virtual {v3, v1, v2}, Lorg/catrobat/catroid/sensing/ConditionMatcher;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    nop

    .end local v2    # "y":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_1
    nop

    .end local v1    # "x":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    return v0
.end method
