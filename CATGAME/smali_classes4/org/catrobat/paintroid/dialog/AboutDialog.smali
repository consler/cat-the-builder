.class public final Lorg/catrobat/paintroid/dialog/AboutDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "AboutDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0017J&\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/AboutDialog;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "()V",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "",
        "view",
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

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AboutDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_about:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "layout":Landroid/view/View;
    const-string v2, "layout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lorg/catrobat/paintroid/dialog/AboutDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    nop

    .line 84
    nop

    .line 80
    nop

    .line 83
    nop

    .line 80
    nop

    .line 82
    nop

    .line 80
    nop

    .line 81
    nop

    .line 80
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AboutDialog;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 81
    sget v3, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_title:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 83
    sget v3, Lorg/catrobat/paintroid/R$string;->done:I

    new-instance v4, Lorg/catrobat/paintroid/dialog/AboutDialog$onCreateDialog$1;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/dialog/AboutDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/AboutDialog;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v3, "AlertDialog.Builder(requ\u2026) }\n            .create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Dialog;

    .line 80
    return-object v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    sget v0, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_about:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_about_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "aboutVersionView":Landroid/widget/TextView;
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_about_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, "aboutContentView":Landroid/widget/TextView;
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_about_license_url:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, "aboutLicenseView":Landroid/widget/TextView;
    sget v3, Lorg/catrobat/paintroid/R$id;->pocketpaint_about_catrobat_url:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    .local v3, "aboutCatrobatView":Landroid/widget/TextView;
    sget v4, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_version:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "2.9.1"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {p0, v4, v6}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "getString(R.string.pocke\u2026BuildConfig.VERSION_NAME)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v4, "aboutVersion":Ljava/lang/String;
    const-string v6, "aboutVersionView"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    nop

    .line 57
    sget v6, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_content:I

    new-array v7, v5, [Ljava/lang/Object;

    .line 58
    sget v9, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_license:I

    invoke-virtual {p0, v9}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 56
    invoke-virtual {p0, v6, v7}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(\n            R\u2026_about_license)\n        )"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .local v6, "aboutContent":Ljava/lang/String;
    const-string v7, "aboutContentView"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    nop

    .line 62
    sget v7, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_url_license:I

    new-array v9, v5, [Ljava/lang/Object;

    .line 63
    sget v10, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_url_license_description:I

    invoke-virtual {p0, v10}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    .line 61
    invoke-virtual {p0, v7, v9}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getString(\n            R\u2026se_description)\n        )"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .local v7, "licenseUrl":Ljava/lang/String;
    const-string v9, "aboutLicenseView"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 67
    nop

    .line 68
    sget v9, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_url_catrobat:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 69
    sget v10, Lorg/catrobat/paintroid/R$string;->pocketpaint_about_url_catrobat_description:I

    invoke-virtual {p0, v10}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    .line 67
    invoke-virtual {p0, v9, v5}, Lorg/catrobat/paintroid/dialog/AboutDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "getString(\n            R\u2026at_description)\n        )"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .local v5, "catrobatUrl":Ljava/lang/String;
    const-string v9, "aboutCatrobatView"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 73
    return-void
.end method
