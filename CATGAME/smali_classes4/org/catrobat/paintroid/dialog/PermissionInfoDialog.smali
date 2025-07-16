.class public final Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "PermissionInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;,
        Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "()V",
        "permissionType",
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;",
        "permissions",
        "",
        "",
        "[Ljava/lang/String;",
        "requestCode",
        "",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "Companion",
        "PermissionType",
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
.field public static final Companion:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;


# instance fields
.field private permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

.field private permissions:[Ljava/lang/String;

.field private requestCode:I


# direct methods
.method public static synthetic $r8$lambda$xoHjB8eHuB6LT3BMXS1ZQOCtx8M(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->onCreateDialog$lambda-1(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static final newInstance(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;->newInstance(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreateDialog$lambda-1(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 58
    iget-object p2, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissions:[Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "permissions"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget p0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requestCode:I

    .line 56
    invoke-static {p1, p2, p0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "requestCodeKey"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requestCode:I

    const-string v0, "permissionsKey"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissions:[Ljava/lang/String;

    const-string v0, "permissionTypeKey"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type org.catrobat.paintroid.dialog.PermissionInfoDialog.PermissionType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 52
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    const-string v1, "permissionType"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->getIconResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->getMessageResource()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    new-instance v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 61
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireContext()\u2026ll)\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
