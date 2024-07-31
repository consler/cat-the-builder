.class final Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$onCreateDialog$1;
.super Ljava/lang/Object;
.source "NewSpriteDialogFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "textInput",
        "",
        "onPositiveButtonClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $currentScene:Lorg/catrobat/catroid/content/Scene;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;Lorg/catrobat/catroid/content/Scene;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$onCreateDialog$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$onCreateDialog$1;->$currentScene:Lorg/catrobat/catroid/content/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$onCreateDialog$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment$onCreateDialog$1;->$currentScene:Lorg/catrobat/catroid/content/Scene;

    const-string v2, "currentScene"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;->access$handlePositiveButton(Lorg/catrobat/catroid/ui/recyclerview/dialog/NewSpriteDialogFragment;Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;)V

    .line 109
    return-void
.end method
