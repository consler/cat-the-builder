.class public final Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "PermanentDenialPermissionInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "()V",
        "context",
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
.field public static final Companion:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;


# instance fields
.field private context:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    .line 33
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->context:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setContext$p(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->context:Ljava/lang/String;

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;

    invoke-virtual {v0, p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;->newInstance(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->context:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    nop

    .line 45
    nop

    .line 41
    nop

    .line 44
    nop

    .line 41
    nop

    .line 43
    nop

    .line 41
    nop

    .line 42
    nop

    .line 41
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 42
    sget v1, Lorg/catrobat/paintroid/R$string;->permission_info_permanent_denial_text:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    sget v1, Lorg/catrobat/paintroid/R$string;->dialog_settings:I

    new-instance v2, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$onCreateDialog$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "AlertDialog.Builder(requ\u2026ll)\n            .create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method
