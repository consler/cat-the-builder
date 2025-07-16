.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "ColorPickerDialog.kt"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;
.implements Lorg/catrobat/paintroid/colorpicker/OnColorInHistoryChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;,
        Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorPickerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickerDialog.kt\norg/catrobat/paintroid/colorpicker/ColorPickerDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,349:1\n1#2:350\n1849#3,2:351\n*S KotlinDebug\n*F\n+ 1 ColorPickerDialog.kt\norg/catrobat/paintroid/colorpicker/ColorPickerDialog\n*L\n271#1:351,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 >2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002>?B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0016J\u0010\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000eH\u0016J\u0010\u0010#\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000eH\u0016J\u0008\u0010$\u001a\u00020\u001fH\u0016J\"\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000e2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0010\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0016J\u0012\u0010-\u001a\u00020\u001f2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0012\u00100\u001a\u0002012\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0010\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020/H\u0016J\u000e\u00104\u001a\u00020\u001f2\u0006\u00105\u001a\u00020\u0010J\u0010\u00106\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000eH\u0002J \u00107\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000e2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0002J\u0018\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u000eH\u0002J\u0010\u0010=\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R*\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0017\u0010\u0004\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;",
        "Lorg/catrobat/paintroid/colorpicker/OnColorInHistoryChangedListener;",
        "()V",
        "alphaSliderView",
        "Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;",
        "checkeredShader",
        "Landroid/graphics/Shader;",
        "colorHistoryView",
        "Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;",
        "colorPickerView",
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerView;",
        "colorToApply",
        "",
        "currentBitmap",
        "Landroid/graphics/Bitmap;",
        "currentColorView",
        "Landroid/view/View;",
        "newColorView",
        "onColorPickedListener",
        "",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "getOnColorPickedListener$annotations",
        "getOnColorPickedListener",
        "()Ljava/util/List;",
        "setOnColorPickedListener",
        "(Ljava/util/List;)V",
        "pipetteBtn",
        "Lcom/google/android/material/button/MaterialButton;",
        "addOnColorPickedListener",
        "",
        "listener",
        "colorChanged",
        "color",
        "colorInHistoryChanged",
        "dismiss",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCancel",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onSaveInstanceState",
        "outState",
        "setBitmap",
        "bitmap",
        "setCurrentColor",
        "setInitialColor",
        "catroidFlag",
        "",
        "openedFromFormulaEditorInCatroidFlag",
        "setViewColor",
        "view",
        "updateColorChange",
        "Companion",
        "CustomColorDrawable",
        "colorpicker_signedRelease"
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
.field public static final Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

.field private checkeredShader:Landroid/graphics/Shader;

.field private colorHistoryView:Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;

.field private colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

.field private colorToApply:I

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentColorView:Landroid/view/View;

.field private newColorView:Landroid/view/View;

.field private onColorPickedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pipetteBtn:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public static synthetic $r8$lambda$5em0p7hGRxXI0NlKDX4SV_N3RKw(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onCreateDialog$lambda-3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QnWmQP_uNLJ4L8bsQCD27A6nb_U(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onCreateDialog$lambda-4(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XZND_FHwc6nJecU9uNEUU5ZlklM(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onCreateDialog$lambda-5(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2oC3kWv5J0rzomUBiAdFNUJOaw(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onCreateDialog$lambda-0(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

    const-string v0, "ColorPickerDialog"

    .line 84
    sput-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getColorToApply$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    return p0
.end method

.method public static final synthetic access$getCurrentBitmap$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Landroid/graphics/Bitmap;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic access$getPipetteBtn$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->pipetteBtn:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic getOnColorPickedListener$annotations()V
    .locals 0

    return-void
.end method

.method private static final onCreateDialog$lambda-0(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/view/View;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->pipetteBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "pipetteBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 159
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final onCreateDialog$lambda-3(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "dialogInterface"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final onCreateDialog$lambda-4(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$noName_0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->updateColorChange(I)V

    .line 215
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method private static final onCreateDialog$lambda-5(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "$materialDialog"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x20008

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 222
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_1
    return-void
.end method

.method private final setCurrentColor(I)V
    .locals 3

    .line 288
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "newColorView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 289
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_1

    const-string v0, "colorPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;ILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method private final setInitialColor(IZZ)V
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentColorView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "currentColorView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 282
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_1

    const-string v0, "alphaSliderView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const/16 p2, 0x8

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setVisibility(I)V

    .line 284
    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez p2, :cond_3

    const-string p2, "colorPickerView"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p2

    :goto_1
    invoke-virtual {v1, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setInitialColor(I)V

    return-void
.end method

.method private final setViewColor(Landroid/view/View;I)V
    .locals 2

    .line 332
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->checkeredShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    const-string v1, "checkeredShader"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;->createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final updateColorChange(I)V
    .locals 2

    .line 271
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 351
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    .line 272
    invoke-interface {v1, p1}, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;->colorChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public colorChanged(I)V
    .locals 6

    .line 240
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    const-string v1, "alphaSliderView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getVisibility()I

    move-result v0

    const-string v3, "newColorView"

    const-string v4, "colorPickerView"

    const/16 v5, 0x8

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getSeekBarAlpha()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 241
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->invalidate()V

    .line 242
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getAlphaValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 244
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-nez v0, :cond_6

    move-object p1, v2

    goto :goto_2

    .line 245
    :cond_6
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_e

    .line 247
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v2, v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 248
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    goto :goto_6

    .line 251
    :cond_8
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getSeekBarAlpha()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_c

    .line 252
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setAlphaValue(I)V

    .line 254
    :cond_c
    :goto_4
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    if-nez v0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move-object v2, v0

    :goto_5
    invoke-direct {p0, v2, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 255
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    :cond_e
    :goto_6
    return-void
.end method

.method public colorInHistoryChanged(I)V
    .locals 3

    .line 345
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "colorPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;ILandroid/view/View;ILjava/lang/Object;)V

    .line 346
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorChanged(I)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void
.end method

.method public final getOnColorPickedListener()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 336
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "colorExtra"

    const/4 p2, 0x0

    .line 338
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 339
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setCurrentColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->updateColorChange(I)V

    .line 229
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 233
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 236
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->checkeredShader:Landroid/graphics/Shader;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 152
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 153
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_dialog_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_current_color_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById(\u2026icker_current_color_view)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentColorView:Landroid/view/View;

    .line 155
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_pipette_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById(\u2026color_picker_pipette_btn)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->pipetteBtn:Lcom/google/android/material/button/MaterialButton;

    if-nez v1, :cond_0

    const-string v1, "pipetteBtn"

    .line 157
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    new-instance v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_new_color_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById(\u2026or_picker_new_color_view)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    .line 177
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById(R.id.color_picker_view)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    const-string v3, "colorPickerView"

    if-nez v1, :cond_1

    .line 178
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    move-object v4, p0

    check-cast v4, Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

    invoke-virtual {v1, v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;)V

    .line 179
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_alpha_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.color_alpha_slider)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 180
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_history_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.color_history_view)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorHistoryView:Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;

    const-string v4, "colorHistoryView"

    if-nez v1, :cond_2

    .line 181
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    move-object v5, p0

    check-cast v5, Lorg/catrobat/paintroid/colorpicker/OnColorInHistoryChangedListener;

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;->setOnColorInHistoryChangedListener(Lorg/catrobat/paintroid/colorpicker/OnColorInHistoryChangedListener;)V

    .line 182
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorHistoryView:Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    sget v5, Lorg/catrobat/paintroid/colorpicker/R$id;->color_history_text_layout:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "dialogView.findViewById(\u2026olor_history_text_layout)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;->setTextLayout(Landroid/widget/LinearLayout;)V

    if-nez p1, :cond_4

    .line 184
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "requireArguments()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const-string v1, "InitialCatroidFlag"

    .line 186
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "OpenedFromFormulaEditorCatroidFlag"

    .line 188
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 189
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v6, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_5
    invoke-virtual {v6, v5}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setOpenedFromFormulaEditorInCatroid(Z)V

    const-string v6, "colorHistory"

    .line 191
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_0

    .line 193
    :cond_6
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorHistoryView:Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;

    if-nez v7, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_7
    invoke-virtual {v7, v6}, Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;->updateColorHistory(Ljava/util/ArrayList;)V

    :goto_0
    const-string v4, "CurrentColor"

    const/high16 v6, -0x1000000

    .line 195
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setCurrentColor(I)V

    const-string v4, "InitialColor"

    .line 197
    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 196
    invoke-direct {p0, p1, v1, v5}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setInitialColor(IZZ)V

    .line 201
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_8
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v4, :cond_9

    const-string v4, "alphaSliderView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    invoke-virtual {p1, v4, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setAlphaSlider(Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;Z)V

    .line 202
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_a
    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setAlphaRow(ZZ)V

    .line 207
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez p1, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getInitialColor()I

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    .line 208
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/colorpicker/R$style;->AlertDialogTheme:I

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 209
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_cancel:I

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 213
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_apply:I

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 217
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "MaterialAlertDialogBuild\u2026ew)\n            .create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$$ExternalSyntheticLambda3;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 224
    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 261
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    const-string v1, "colorPickerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v0

    const-string v3, "CurrentColor"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getInitialColor()I

    move-result v0

    const-string v1, "InitialColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorHistoryView:Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;

    if-nez v0, :cond_2

    const-string v0, "colorHistoryView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lorg/catrobat/paintroid/colorpicker/ColorHistoryView;->getColorHistory()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "colorHistory"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setOnColorPickedListener(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    return-void
.end method
