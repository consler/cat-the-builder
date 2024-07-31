.class public final Lorg/catrobat/paintroid/dialog/OverwriteDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "OverwriteDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/OverwriteDialog;",
        "Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;",
        "()V",
        "isExport",
        "",
        "permission",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "Companion",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;

.field private static final IS_EXPORT:Ljava/lang/String; = "isExport"

.field private static final PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private isExport:Z

.field private permission:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->Companion:Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPermission$p(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    .line 28
    iget v0, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->permission:I

    return v0
.end method

.method public static final synthetic access$isExport$p(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    .line 28
    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->isExport:Z

    return v0
.end method

.method public static final synthetic access$setExport$p(Lorg/catrobat/paintroid/dialog/OverwriteDialog;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/OverwriteDialog;
    .param p1, "<set-?>"    # Z

    .line 28
    iput-boolean p1, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->isExport:Z

    return-void
.end method

.method public static final synthetic access$setPermission$p(Lorg/catrobat/paintroid/dialog/OverwriteDialog;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/OverwriteDialog;
    .param p1, "<set-?>"    # I

    .line 28
    iput p1, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->permission:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requireArguments()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "isExport"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->isExport:Z

    .line 36
    const-string v1, "permission"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->permission:I

    .line 37
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    nop

    .line 60
    nop

    .line 40
    nop

    .line 59
    nop

    .line 40
    nop

    .line 48
    nop

    .line 40
    nop

    .line 42
    nop

    .line 40
    nop

    .line 41
    nop

    .line 40
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 41
    sget v1, Lorg/catrobat/paintroid/R$string;->pocketpaint_overwrite_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    sget v2, Lorg/catrobat/paintroid/R$string;->pocketpaint_overwrite:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    sget v4, Lorg/catrobat/paintroid/R$string;->menu_save_copy:I

    invoke-virtual {p0, v4}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    sget v1, Lorg/catrobat/paintroid/R$string;->overwrite_button_text:I

    new-instance v2, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    sget v1, Lorg/catrobat/paintroid/R$string;->cancel_button_text:I

    new-instance v2, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$2;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$2;-><init>(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "AlertDialog.Builder(requ\u2026) }\n            .create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method
