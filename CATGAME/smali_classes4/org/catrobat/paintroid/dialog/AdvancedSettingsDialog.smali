.class public final Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;
.super Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;
.source "AdvancedSettingsDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
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


# instance fields
.field private initValueAntialiasing:Z

.field private initValueSmoothing:Z


# direct methods
.method public static synthetic $r8$lambda$3fxjh6ME_fLYXyNqHBdm1WW1rB8(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->onViewCreated$lambda-1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7TFzegc8TR-BJUEQHWxiKTVmQxA(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->onViewCreated$lambda-0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cMzQrauZgq3_nsOnlChQjELA9HA(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->onCreateDialog$lambda-3(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cYNG4bHBhmq6tkRIOkcNBTZzRnQ(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->onCreateDialog$lambda-2(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

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

.method private static final onCreateDialog$lambda-2(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->setAntialiasingOnOkClicked()V

    .line 47
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->dismiss()V

    return-void
.end method

.method private static final onCreateDialog$lambda-3(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object p1, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    iget-boolean p2, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueAntialiasing:Z

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;->setAntialiasing(Z)V

    .line 51
    iget-boolean p1, p0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->initValueSmoothing:Z

    sput-boolean p1, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    .line 52
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->dismiss()V

    return-void
.end method

.method private static final onViewCreated$lambda-0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 28
    sget-object p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;->setAntialiasing(Z)V

    return-void
.end method

.method private static final onViewCreated$lambda-1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 32
    sput-boolean p1, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

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

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "requireActivity().layoutInflater"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_advanced_settings:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "layout"

    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$style;->PocketPaintAlertDialog:I

    invoke-direct {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    sget v1, Lorg/catrobat/paintroid/R$string;->menu_advanced:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 45
    sget v0, Lorg/catrobat/paintroid/R$string;->pocketpaint_ok:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 49
    sget v0, Lorg/catrobat/paintroid/R$string;->cancel_button_text:I

    new-instance v1, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Builder(requireContext()\u2026  }\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-super {p0, p1, p2}, Lorg/catrobat/paintroid/dialog/MainActivityDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 21
    sget p2, Lorg/catrobat/paintroid/R$id;->pocketpaint_antialiasing:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    .line 22
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_smoothing:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 24
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint;->Companion:Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/implementation/DefaultToolPaint$Companion;->getAntialiasing()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 25
    sget-boolean v0, Lorg/catrobat/paintroid/tools/helper/AdvancedSettingsAlgorithms;->smoothing:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 27
    new-instance v0, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/catrobat/paintroid/dialog/AdvancedSettingsDialog$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method
