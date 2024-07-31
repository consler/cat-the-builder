.class public final Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultStampToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0002J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;",
        "Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "callback",
        "Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;",
        "copyChip",
        "Lcom/google/android/material/chip/Chip;",
        "cutChip",
        "pasteChip",
        "enablePaste",
        "",
        "enable",
        "",
        "initializeListeners",
        "setCallback",
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
.field private callback:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;

.field private final copyChip:Lcom/google/android/material/chip/Chip;

.field private final cutChip:Lcom/google/android/material/chip/Chip;

.field private final pasteChip:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    nop

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 59
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_stamp_tool:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "inflater.inflate(R.layou\u2026int_stamp_tool, rootView)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    nop

    .line 60
    .local v1, "stampToolOptionsView":Landroid/view/View;
    sget v2, Lorg/catrobat/paintroid/R$id;->action_copy:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "stampToolOptionsView.fin\u2026iewById(R.id.action_copy)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/material/chip/Chip;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->copyChip:Lcom/google/android/material/chip/Chip;

    .line 61
    sget v2, Lorg/catrobat/paintroid/R$id;->action_paste:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "stampToolOptionsView.fin\u2026ewById(R.id.action_paste)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/material/chip/Chip;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->pasteChip:Lcom/google/android/material/chip/Chip;

    .line 62
    sget v2, Lorg/catrobat/paintroid/R$id;->action_cut:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "stampToolOptionsView.findViewById(R.id.action_cut)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/material/chip/Chip;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->cutChip:Lcom/google/android/material/chip/Chip;

    .line 63
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->enablePaste(Z)V

    .line 64
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->initializeListeners()V

    .line 65
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "stampToolOptionsView":Landroid/view/View;
    return-void
.end method

.method public static final synthetic access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;)Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;

    return-object v0
.end method

.method public static final synthetic access$setCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;

    .line 28
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;

    return-void
.end method

.method private final initializeListeners()V
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->copyChip:Lcom/google/android/material/chip/Chip;

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView$initializeListeners$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView$initializeListeners$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->cutChip:Lcom/google/android/material/chip/Chip;

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView$initializeListeners$2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView$initializeListeners$2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->pasteChip:Lcom/google/android/material/chip/Chip;

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView$initializeListeners$3;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView$initializeListeners$3;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public enablePaste(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 53
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->pasteChip:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setEnabled(Z)V

    .line 54
    return-void
.end method

.method public setCallback(Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/StampToolOptionsView$Callback;

    .line 50
    return-void
.end method
