.class public final Lorg/catrobat/paintroid/dialog/LikeUsDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "LikeUsDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0017\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/LikeUsDialog;",
        "Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;",
        "()V",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    nop

    .line 41
    nop

    .line 30
    nop

    .line 37
    nop

    .line 30
    nop

    .line 33
    nop

    .line 30
    nop

    .line 32
    nop

    .line 30
    nop

    .line 31
    nop

    .line 30
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/LikeUsDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 31
    sget v1, Lorg/catrobat/paintroid/R$string;->pocketpaint_like_us:I

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/dialog/LikeUsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 32
    sget v1, Lorg/catrobat/paintroid/R$string;->pocketpaint_rate_us_title:I

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/dialog/LikeUsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 33
    sget v1, Lorg/catrobat/paintroid/R$string;->pocketpaint_yes:I

    new-instance v2, Lorg/catrobat/paintroid/dialog/LikeUsDialog$onCreateDialog$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/LikeUsDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/LikeUsDialog;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 37
    sget v1, Lorg/catrobat/paintroid/R$string;->pocketpaint_no:I

    new-instance v2, Lorg/catrobat/paintroid/dialog/LikeUsDialog$onCreateDialog$2;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/LikeUsDialog$onCreateDialog$2;-><init>(Lorg/catrobat/paintroid/dialog/LikeUsDialog;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "AlertDialog.Builder(requ\u2026  }\n            .create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Dialog;

    .line 30
    return-object v0
.end method
