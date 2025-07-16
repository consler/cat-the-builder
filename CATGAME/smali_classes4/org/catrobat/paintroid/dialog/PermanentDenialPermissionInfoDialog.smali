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
.field public static final Companion:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;


# instance fields
.field private context:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$jjM81g9kzNaX07sPXGR1hFDM100(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

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

.method public static final newInstance(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;

    invoke-virtual {v0, p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;->newInstance(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-string p2, "package:"

    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->context:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "context"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->context:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 41
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 42
    sget v0, Lorg/catrobat/paintroid/R$string;->permission_info_permanent_denial_text:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 43
    sget v0, Lorg/catrobat/paintroid/R$string;->dialog_settings:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireContext()\u2026ll)\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
