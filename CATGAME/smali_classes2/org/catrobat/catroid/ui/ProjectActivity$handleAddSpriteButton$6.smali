.class final Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$6;
.super Ljava/lang/Object;
.source "ProjectActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/ProjectActivity;->handleAddSpriteButton()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $alertDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/ProjectActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/ProjectActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$6;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$6;->$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .line 418
    invoke-static {}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getInstance()Lorg/catrobat/catroid/ui/controller/BackpackListManager;

    move-result-object v0

    const-string v1, "BackpackListManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/controller/BackpackListManager;->getSprites()Ljava/util/List;

    move-result-object v0

    const-string v1, "BackpackListManager.getInstance().sprites"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$6;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    check-cast v2, Landroid/content/Context;

    const-class v3, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 421
    nop

    .line 422
    nop

    .line 420
    const-string v2, "fragmentPosition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$6;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/ui/ProjectActivity;->startActivity(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$6;->this$0:Lorg/catrobat/catroid/ui/ProjectActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f120055

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 427
    :goto_0
    nop

    .line 428
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ProjectActivity$handleAddSpriteButton$6;->$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 429
    return-void
.end method
