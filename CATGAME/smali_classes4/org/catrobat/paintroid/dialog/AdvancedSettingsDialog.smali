.class public final Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "AdvancedSettingsDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;",
        "Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;",
        "()V",
        "initValueAntialiasing",
        "",
        "initValueSmoothing",
        "onCancel",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
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


# instance fields
.field private initValueAntialiasing:Z

.field private initValueSmoothing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;-><init>()V

    .line 15
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;->getAntialiasing()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueAntialiasing:Z

    .line 16
    sget-boolean v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    iput-boolean v0, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueSmoothing:Z

    return-void
.end method

.method public static final synthetic access$getInitValueAntialiasing$p(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;

    .line 14
    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueAntialiasing:Z

    return v0
.end method

.method public static final synthetic access$getInitValueSmoothing$p(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;

    .line 14
    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueSmoothing:Z

    return v0
.end method

.method public static final synthetic access$setInitValueAntialiasing$p(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;
    .param p1, "<set-?>"    # Z

    .line 14
    iput-boolean p1, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueAntialiasing:Z

    return-void
.end method

.method public static final synthetic access$setInitValueSmoothing$p(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;
    .param p1, "<set-?>"    # Z

    .line 14
    iput-boolean p1, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueSmoothing:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueAntialiasing:Z

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;->setAntialiasing(Z)V

    .line 59
    iget-boolean v0, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueSmoothing:Z

    sput-boolean v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    .line 60
    invoke-super {p0, p1}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_advanced_settings:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "layout":Landroid/view/View;
    const-string v2, "layout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    nop

    .line 54
    nop

    .line 42
    nop

    .line 49
    nop

    .line 42
    nop

    .line 45
    nop

    .line 42
    nop

    .line 44
    nop

    .line 42
    nop

    .line 43
    nop

    .line 42
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    sget v3, Lorg/catrobat/paintroid/R$string;->menu_advanced:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 45
    sget v3, Lorg/catrobat/paintroid/R$string;->pocketpaint_ok:I

    new-instance v4, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onCreateDialog$1;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 49
    sget v3, Lorg/catrobat/paintroid/R$string;->cancel_button_text:I

    new-instance v4, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onCreateDialog$2;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onCreateDialog$2;-><init>(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v3, "AlertDialog.Builder(requ\u2026  }\n            .create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Dialog;

    .line 42
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 21
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_antialiasing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 22
    .local v0, "antialiasingSwitch":Landroidx/appcompat/widget/SwitchCompat;
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_smoothing:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 24
    .local v1, "smoothSwitch":Landroidx/appcompat/widget/SwitchCompat;
    const-string v2, "antialiasingSwitch"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;->getAntialiasing()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 25
    const-string v2, "smoothSwitch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v2, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 27
    sget-object v2, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$1;->INSTANCE:Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$1;

    check-cast v2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 31
    sget-object v2, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;->INSTANCE:Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$onViewCreated$2;

    check-cast v2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    return-void
.end method
