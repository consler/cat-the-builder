.class public final Lorg/catrobat/paintroid/dialog/OverwriteDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "OverwriteDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;,
        Lorg/catrobat/paintroid/dialog/OverwriteDialog$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
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
.field public static final Companion:Lorg/catrobat/paintroid/dialog/OverwriteDialog$Companion;

.field private static final IS_EXPORT:Ljava/lang/String; = "isExport"

.field private static final PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private isExport:Z

.field private permission:I


# direct methods
.method public static synthetic $r8$lambda$CA56fhskdww0jJe3gm-XEZbCh48(Lorg/catrobat/paintroid/dialog/OverwriteDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->onCreateDialog$lambda-1(Lorg/catrobat/paintroid/dialog/OverwriteDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hOq37nGvdb72oyR3MLaGAHtyH8c(Lorg/catrobat/paintroid/dialog/OverwriteDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/OverwriteDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

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

.method private static final onCreateDialog$lambda-0(Lorg/catrobat/paintroid/dialog/OverwriteDialog;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 50
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "resolver"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 51
    :cond_2
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object p1

    .line 55
    :goto_1
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sput-object p1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 56
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    iget p2, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->permission:I

    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->isExport:Z

    invoke-interface {p1, p2, v0}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->switchBetweenVersions(IZ)V

    .line 57
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->dismiss()V

    return-void
.end method

.method private static final onCreateDialog$lambda-1(Lorg/catrobat/paintroid/dialog/OverwriteDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "requireArguments()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isExport"

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->isExport:Z

    const-string v0, "permission"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->permission:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 40
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 41
    sget v0, Lorg/catrobat/paintroid/R$string;->pocketpaint_overwrite_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    sget v1, Lorg/catrobat/paintroid/R$string;->pocketpaint_overwrite:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    sget v3, Lorg/catrobat/paintroid/R$string;->menu_save_copy:I

    invoke-virtual {p0, v3}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 48
    sget v0, Lorg/catrobat/paintroid/R$string;->overwrite_button_text:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/OverwriteDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    sget v0, Lorg/catrobat/paintroid/R$string;->cancel_button_text:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/OverwriteDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireContext()\u2026) }\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
