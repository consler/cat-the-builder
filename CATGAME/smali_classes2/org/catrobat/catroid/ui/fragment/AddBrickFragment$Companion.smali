.class public final Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;
.super Ljava/lang/Object;
.source "AddBrickFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007R\u0018\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;",
        "",
        "()V",
        "ADD_BRICK_FRAGMENT_TAG",
        "",
        "kotlin.jvm.PlatformType",
        "BUNDLE_ARGUMENTS_SELECTED_CATEGORY",
        "listIndexToFocus",
        "",
        "newInstance",
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;",
        "selectedCategory",
        "addBrickListener",
        "Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;",
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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 127
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;
    .locals 3
    .param p1, "selectedCategory"    # Ljava/lang/String;
    .param p2, "addBrickListener"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 134
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;-><init>()V

    .line 135
    .local v0, "fragment":Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v1, "arguments":Landroid/os/Bundle;
    const-string v2, "selected_category"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    invoke-static {v0, p2}, Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;->access$setAddBrickListener$p(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)V

    .line 139
    return-object v0
.end method
