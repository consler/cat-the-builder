.class public final Lorg/catrobat/paintroid/dialog/ImportImageDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "ImportImageDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0017J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/ImportImageDialog;",
        "Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;",
        "()V",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
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


# direct methods
.method public static synthetic $r8$lambda$ELLUbCh8jmOnHoiAkqdKLt9pPJI(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->onViewCreated$lambda-1(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXL0V2NxDpI3ndhEmws4wZIARCk(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->onCreateDialog$lambda-2(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oq593XxdbQ02O9Vmth5FaIRQeLo(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->onViewCreated$lambda-0(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    return-void
.end method

.method private static final onCreateDialog$lambda-2(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->dismiss()V

    return-void
.end method

.method private static final onViewCreated$lambda-0(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->importFromGalleryClicked()V

    .line 37
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->dismiss()V

    return-void
.end method

.method private static final onViewCreated$lambda-1(Lorg/catrobat/paintroid/dialog/ImportImageDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->importStickersClicked()V

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 47
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_import_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 51
    sget v1, Lorg/catrobat/paintroid/R$string;->dialog_import_image_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 53
    sget v0, Lorg/catrobat/paintroid/R$string;->pocketpaint_cancel:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/ImportImageDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/dialog/ImportImageDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireContext()\u2026) }\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    sget p2, Lorg/catrobat/paintroid/R$id;->pocketpaint_dialog_import_gallery:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 34
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_dialog_import_stickers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 35
    new-instance v0, Lorg/catrobat/paintroid/dialog/ImportImageDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/ImportImageDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance p2, Lorg/catrobat/paintroid/dialog/ImportImageDialog$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/dialog/ImportImageDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
