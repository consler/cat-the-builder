.class public final Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$Companion;
.super Ljava/lang/Object;
.source "BrickSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0007R\u0018\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$Companion;",
        "",
        "()V",
        "BRICK_SEARCH_FRAGMENT_TAG",
        "",
        "kotlin.jvm.PlatformType",
        "listIndexToFocus",
        "",
        "newInstance",
        "Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;",
        "addBrickListener",
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;",
        "selectedCategory",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 237
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;Ljava/lang/String;)Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;
    .locals 1
    .param p1, "addBrickListener"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;
    .param p2, "selectedCategory"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 244
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;-><init>()V

    .line 245
    .local v0, "fragment":Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;
    invoke-static {v0, p2}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$setCategory$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;Ljava/lang/String;)V

    .line 246
    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$setAddBrickListener$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)V

    .line 247
    return-object v0
.end method
