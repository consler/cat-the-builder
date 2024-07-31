.class final Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "PermanentDenialPermissionInfoDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
        "<anonymous parameter 0>",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    invoke-static {v3}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->access$getContext$p(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
