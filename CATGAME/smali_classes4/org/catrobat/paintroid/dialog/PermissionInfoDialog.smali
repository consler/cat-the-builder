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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
.field public static final Companion:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;


# instance fields
.field private permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

.field private permissions:[Ljava/lang/String;

.field private requestCode:I


# direct methods
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

.method public static final synthetic access$getPermissions$p(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;)[Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;

    .line 36
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "permissions"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getRequestCode$p(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;

    .line 36
    iget v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requestCode:I

    return v0
.end method

.method public static final synthetic access$setPermissions$p(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;[Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
    .param p1, "<set-?>"    # [Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setRequestCode$p(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
    .param p1, "<set-?>"    # I

    .line 36
    iput p1, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requestCode:I

    return-void
.end method

.method public static final newInstance(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->Companion:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;->newInstance(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "$this$apply":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$a$-apply-PermissionInfoDialog$onCreate$1":I
    const-string v2, "requestCodeKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requestCode:I

    .line 45
    const-string v2, "permissionsKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissions:[Ljava/lang/String;

    .line 46
    const-string v2, "permissionTypeKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    iput-object v2, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    .line 47
    nop

    .line 43
    .end local v0    # "$this$apply":Landroid/os/Bundle;
    .end local v1    # "$i$a$-apply-PermissionInfoDialog$onCreate$1":I
    nop

    .line 48
    return-void

    .line 46
    .restart local v0    # "$this$apply":Landroid/os/Bundle;
    .restart local v1    # "$i$a$-apply-PermissionInfoDialog$onCreate$1":I
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.paintroid.dialog.PermissionInfoDialog.PermissionType"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    nop

    .line 62
    nop

    .line 52
    nop

    .line 61
    nop

    .line 52
    nop

    .line 55
    nop

    .line 52
    nop

    .line 54
    nop

    .line 52
    nop

    .line 53
    nop

    .line 52
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 53
    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    const-string v2, "permissionType"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->getIconResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->permissionType:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->getMessageResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const v1, 0x104000a

    new-instance v2, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$onCreateDialog$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v1, "AlertDialog.Builder(requ\u2026ll)\n            .create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method
