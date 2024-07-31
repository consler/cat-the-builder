.class public final Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment$Companion;
.super Ljava/lang/Object;
.source "AddUserDefinedBrickFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "newInstance",
        "Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;",
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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;
    .locals 1
    .param p1, "addBrickListener"    # Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;

    const-string v0, "addBrickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;-><init>()V

    .line 56
    .local v0, "fragment":Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;
    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;->access$setAddBrickListener$p(Lorg/catrobat/catroid/ui/fragment/AddUserDefinedBrickFragment;Lorg/catrobat/catroid/ui/fragment/AddBrickFragment$OnAddBrickListener;)V

    .line 57
    return-object v0
.end method
