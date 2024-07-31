.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$showNewGroupDialog$1;
.super Ljava/lang/Object;
.source "SpriteListFragment.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->showNewGroupDialog()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$showNewGroupDialog$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Landroid/content/DialogInterface;Ljava/lang/String;)V
    .locals 2
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "textInput"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$showNewGroupDialog$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    new-instance v1, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-direct {v1, p2}, Lorg/catrobat/catroid/content/GroupSprite;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method
