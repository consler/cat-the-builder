.class final Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupProjectAspectRatio$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ProjectOptionsFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->setupProjectAspectRatio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged",
        "org/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupProjectAspectRatio$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupProjectAspectRatio$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "$noName_0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupProjectAspectRatio$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->access$handleAspectRatioChecked(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;Z)V

    .line 157
    return-void
.end method
