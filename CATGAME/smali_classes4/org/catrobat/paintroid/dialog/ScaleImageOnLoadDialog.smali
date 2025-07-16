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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$Companion;


# instance fields
.field private requestCode:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$tCh6MzrSI0mCzW3cQXExxrlOJ8c(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

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

.method private static final onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->uri:Landroid/net/Uri;

    .line 50
    iget p0, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requestCode:I

    .line 48
    invoke-interface {p1, p2, p0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->loadScaledImage(Landroid/net/Uri;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "requireArguments()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Uri"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->uri:Landroid/net/Uri;

    const-string v0, "requestCode"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requestCode:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 44
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 45
    sget v0, Lorg/catrobat/paintroid/R$string;->dialog_scale_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 46
    sget v0, Lorg/catrobat/paintroid/R$string;->dialog_scale_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 47
    new-instance v0, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/ScaleImageOnLoadDialog;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireActivity(\u2026ll)\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
