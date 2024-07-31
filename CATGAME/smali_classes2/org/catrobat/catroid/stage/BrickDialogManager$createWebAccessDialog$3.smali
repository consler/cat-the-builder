.class final Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;
.super Ljava/lang/Object;
.source "BrickDialogManager.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/BrickDialogManager;->createWebAccessDialog(Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;)Landroid/app/Dialog;
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
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
.field final synthetic $url:Ljava/lang/String;

.field final synthetic $webAction:Lorg/catrobat/catroid/content/actions/WebAction;

.field final synthetic this$0:Lorg/catrobat/catroid/stage/BrickDialogManager;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/BrickDialogManager;Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;->this$0:Lorg/catrobat/catroid/stage/BrickDialogManager;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;->$webAction:Lorg/catrobat/catroid/content/actions/WebAction;

    iput-object p3, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;->$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;->this$0:Lorg/catrobat/catroid/stage/BrickDialogManager;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;->$webAction:Lorg/catrobat/catroid/content/actions/WebAction;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/BrickDialogManager$createWebAccessDialog$3;->$url:Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v3, p1

    check-cast v3, Landroid/app/Dialog;

    invoke-static {v0, v1, v2, v3}, Lorg/catrobat/catroid/stage/BrickDialogManager;->access$createTrustDomainDialog(Lorg/catrobat/catroid/stage/BrickDialogManager;Lorg/catrobat/catroid/content/actions/WebAction;Ljava/lang/String;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/stage/BrickDialogManager;->access$openDialog(Lorg/catrobat/catroid/stage/BrickDialogManager;Landroid/app/Dialog;)V

    .line 121
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.Dialog"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
