.class public final Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "ScaleImageOnLoadDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;",
        "Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;",
        "()V",
        "requestCode",
        "",
        "uri",
        "Landroid/net/Uri;",
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
.field public static final Companion:Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;


# instance fields
.field private requestCode:I

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->Companion:Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRequestCode$p(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;

    .line 32
    iget v0, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requestCode:I

    return v0
.end method

.method public static final synthetic access$getUri$p(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;)Landroid/net/Uri;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$setRequestCode$p(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;
    .param p1, "<set-?>"    # I

    .line 32
    iput p1, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requestCode:I

    return-void
.end method

.method public static final synthetic access$setUri$p(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;Landroid/net/Uri;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;
    .param p1, "<set-?>"    # Landroid/net/Uri;

    .line 32
    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requireArguments()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v1, "Uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->uri:Landroid/net/Uri;

    .line 40
    const-string v1, "requestCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requestCode:I

    .line 41
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    nop

    .line 54
    nop

    .line 44
    nop

    .line 53
    nop

    .line 44
    nop

    .line 47
    nop

    .line 44
    nop

    .line 46
    nop

    .line 44
    nop

    .line 45
    nop

    .line 44
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 45
    sget v1, Lorg/catrobat/paintroid/R$string;->dialog_scale_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    sget v1, Lorg/catrobat/paintroid/R$string;->dialog_scale_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$onCreateDialog$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "AlertDialog.Builder(requ\u2026ll)\n            .create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method
