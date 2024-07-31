.class public final Lorg/catrobat/paintroid/dialog/ImportImageDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "ImportImageDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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

    .line 29
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_import_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "layout":Landroid/view/View;
    const-string v2, "layout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    nop

    .line 54
    nop

    .line 50
    nop

    .line 53
    nop

    .line 50
    nop

    .line 52
    nop

    .line 50
    nop

    .line 51
    nop

    .line 50
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 51
    sget v3, Lorg/catrobat/paintroid/R$string;->dialog_import_image_title:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 53
    sget v3, Lorg/catrobat/paintroid/R$string;->pocketpaint_cancel:I

    new-instance v4, Lorg/catrobat/paintroid/dialog/ImportImageDialog$onCreateDialog$1;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/ImportImageDialog;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v3, "AlertDialog.Builder(requ\u2026) }\n            .create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Dialog;

    .line 50
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_dialog_import_gallery:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 33
    .local v0, "importGallery":Landroid/widget/LinearLayout;
    nop

    .line 34
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_dialog_import_stickers:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/LinearLayout;

    .line 35
    .local v1, "importStickers":Landroid/widget/LinearLayout;
    new-instance v2, Lorg/catrobat/paintroid/dialog/ImportImageDialog$onViewCreated$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog$onViewCreated$1;-><init>(Lorg/catrobat/paintroid/dialog/ImportImageDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v2, Lorg/catrobat/paintroid/dialog/ImportImageDialog$onViewCreated$2;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/dialog/ImportImageDialog$onViewCreated$2;-><init>(Lorg/catrobat/paintroid/dialog/ImportImageDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
