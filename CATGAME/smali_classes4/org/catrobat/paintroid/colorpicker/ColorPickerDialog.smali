.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "ColorPickerDialog.kt"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;,
        Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorPickerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorPickerDialog.kt\norg/catrobat/paintroid/colorpicker/ColorPickerDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,301:1\n1#2:302\n1819#3,2:303\n*E\n*S KotlinDebug\n*F\n+ 1 ColorPickerDialog.kt\norg/catrobat/paintroid/colorpicker/ColorPickerDialog\n*L\n228#1,2:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0002:;B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0013J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0016J\"\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u000b2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010&\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020(H\u0016J\u0012\u0010)\u001a\u00020\u001c2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010,\u001a\u00020-2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020+H\u0016J\u000e\u00100\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\rJ\u0010\u00102\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002J \u00103\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000205H\u0002J\u0018\u00107\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002J\u0010\u00109\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R*\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0003\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;",
        "()V",
        "alphaSliderView",
        "Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;",
        "checkeredShader",
        "Landroid/graphics/Shader;",
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
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

.field private checkeredShader:Landroid/graphics/Shader;

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
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$Companion;

    .line 81
    const-class v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getColorToApply$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    .line 67
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    return v0
.end method

.method public static final synthetic access$getCurrentBitmap$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v1, "currentBitmap"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getPipetteBtn$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)Lcom/google/android/material/button/MaterialButton;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;

    .line 67
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->pipetteBtn:Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    const-string v1, "pipetteBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setColorToApply$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .param p1, "<set-?>"    # I

    .line 67
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    return-void
.end method

.method public static final synthetic access$setCurrentBitmap$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .param p1, "<set-?>"    # Landroid/graphics/Bitmap;

    .line 67
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setPipetteBtn$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .param p1, "<set-?>"    # Lcom/google/android/material/button/MaterialButton;

    .line 67
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->pipetteBtn:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method

.method public static final synthetic access$updateColorChange(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
    .param p1, "color"    # I

    .line 67
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->updateColorChange(I)V

    return-void
.end method

.method public static synthetic getOnColorPickedListener$annotations()V
    .locals 0

    return-void
.end method

.method private final setCurrentColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 245
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "newColorView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 246
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_1

    const-string v1, "colorPickerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;ILandroid/view/View;ILjava/lang/Object;)V

    .line 247
    return-void
.end method

.method private final setInitialColor(IZZ)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "catroidFlag"    # Z
    .param p3, "openedFromFormulaEditorInCatroidFlag"    # Z

    .line 238
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentColorView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "currentColorView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 239
    nop

    .line 240
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_1

    const-string v1, "alphaSliderView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_3

    const-string v1, "colorPickerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setInitialColor(I)V

    .line 242
    return-void
.end method

.method private final setViewColor(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 289
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->checkeredShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    const-string v2, "checkeredShader"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;->createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method private final updateColorChange(I)V
    .locals 6
    .param p1, "color"    # I

    .line 228
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 303
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    .local v4, "it":Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;
    const/4 v5, 0x0

    .line 229
    .local v5, "$i$a$-forEach-ColorPickerDialog$updateColorChange$1":I
    invoke-interface {v4, p1}, Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;->colorChanged(I)V

    .line 230
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;
    .end local v5    # "$i$a$-forEach-ColorPickerDialog$updateColorChange$1":I
    goto :goto_0

    .line 304
    :cond_0
    nop

    .line 231
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public final addOnColorPickedListener(Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public colorChanged(I)V
    .locals 5
    .param p1, "color"    # I

    .line 198
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    const-string v1, "alphaSliderView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getVisibility()I

    move-result v0

    const-string v2, "newColorView"

    const-string v3, "colorPickerView"

    const/16 v4, 0x8

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getSeekBarAlpha()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 199
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->invalidate()V

    .line 200
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->getAlphaValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 201
    .local v0, "alpha":Ljava/lang/Integer;
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 202
    .local v3, "hsv":[F
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 203
    if-eqz v0, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 302
    .local v1, "it":I
    const/4 v4, 0x0

    .line 203
    .local v4, "$i$a$-let-ColorPickerDialog$colorChanged$newColor$1":I
    invoke-static {v1, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    .end local v1    # "it":I
    .end local v4    # "$i$a$-let-ColorPickerDialog$colorChanged$newColor$1":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 204
    .local v1, "newColor":Ljava/lang/Integer;
    :cond_6
    if-eqz v1, :cond_d

    .line 205
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    if-nez v4, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v4, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    .end local v0    # "alpha":Ljava/lang/Integer;
    .end local v1    # "newColor":Ljava/lang/Integer;
    .end local v3    # "hsv":[F
    goto :goto_1

    .line 209
    :cond_8
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getSeekBarAlpha()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_b

    .line 210
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setAlphaValue(I)V

    .line 212
    :cond_b
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    if-nez v0, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0, v0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setViewColor(Landroid/view/View;I)V

    .line 213
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    .line 214
    :cond_d
    :goto_1
    nop

    .line 215
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 254
    :goto_0
    nop

    .line 255
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

    .line 69
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 295
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    const-string v1, "colorExtra"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$a$-let-ColorPickerDialog$onActivityResult$1":I
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setCurrentColor(I)V

    .line 297
    nop

    .line 299
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ColorPickerDialog$onActivityResult$1":I
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->updateColorChange(I)V

    .line 187
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 191
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    nop

    .line 193
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$drawable;->pocketpaint_checkeredbg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    nop

    .line 194
    .local v0, "checkeredBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v1, Landroid/graphics/Shader;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->checkeredShader:Landroid/graphics/Shader;

    .line 195
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 117
    nop

    .line 118
    nop

    .line 117
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_dialog_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    nop

    .line 119
    .local v0, "dialogView":Landroid/view/View;
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_current_color_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(\u2026icker_current_color_view)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentColorView:Landroid/view/View;

    .line 120
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_pipette_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(\u2026color_picker_pipette_btn)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->pipetteBtn:Lcom/google/android/material/button/MaterialButton;

    .line 122
    if-nez v1, :cond_0

    const-string v2, "pipetteBtn"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_new_color_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(\u2026or_picker_new_color_view)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->newColorView:Landroid/view/View;

    .line 142
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "dialogView.findViewById(R.id.color_picker_view)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    .line 143
    const-string v2, "colorPickerView"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v3, p0

    check-cast v3, Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;)V

    .line 144
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_alpha_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById(R.id.color_alpha_slider)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 146
    if-eqz p1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "requireArguments()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .local v1, "arguments":Landroid/os/Bundle;
    :goto_0
    move-object v3, v1

    .local v3, "$this$apply":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 148
    .local v4, "$i$a$-apply-ColorPickerDialog$onCreateDialog$2":I
    const-string v5, "InitialCatroidFlag"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 149
    .local v5, "catroidFlag":Z
    nop

    .line 150
    const-string v6, "OpenedFromFormulaEditorCatroidFlag"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 149
    nop

    .line 151
    .local v6, "openedFromFormulaEditorInCatroidFlag":Z
    nop

    .line 152
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v7, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7, v6}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setOpenedFromFormulaEditorInCatroid(Z)V

    .line 153
    const-string v7, "CurrentColor"

    const/high16 v8, -0x1000000

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setCurrentColor(I)V

    .line 154
    nop

    .line 155
    const-string v7, "InitialColor"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 156
    nop

    .line 157
    nop

    .line 154
    invoke-direct {p0, v7, v5, v6}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->setInitialColor(IZZ)V

    .line 159
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v7, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    if-nez v8, :cond_5

    const-string v9, "alphaSliderView"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v7, v8, v5}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setAlphaSlider(Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;Z)V

    .line 160
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v7, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v7}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object v7

    .line 161
    nop

    .line 162
    nop

    .line 160
    invoke-virtual {v7, v5, v6}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setAlphaRow(ZZ)V

    .line 164
    .end local v5    # "catroidFlag":Z
    .end local v6    # "openedFromFormulaEditorInCatroidFlag":Z
    nop

    .line 147
    .end local v3    # "$this$apply":Landroid/os/Bundle;
    .end local v4    # "$i$a$-apply-ColorPickerDialog$onCreateDialog$2":I
    nop

    .line 165
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v3, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getInitialColor()I

    move-result v2

    iput v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorToApply:I

    .line 166
    nop

    .line 176
    nop

    .line 166
    nop

    .line 175
    nop

    .line 166
    nop

    .line 171
    nop

    .line 166
    nop

    .line 167
    nop

    .line 166
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/catrobat/paintroid/colorpicker/R$style;->AlertDialogTheme:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 167
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_cancel:I

    sget-object v4, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$1;->INSTANCE:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$1;

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 171
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$string;->color_picker_apply:I

    new-instance v4, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$2;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$materialDialog$2;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    const-string v3, "MaterialAlertDialogBuild\u2026ew)\n            .create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    nop

    .line 178
    .local v2, "materialDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v3, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$3;

    invoke-direct {v3, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$onCreateDialog$3;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    check-cast v3, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 182
    move-object v3, v2

    check-cast v3, Landroid/app/Dialog;

    return-object v3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    const-string v1, "colorPickerView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v0

    const-string v2, "CurrentColor"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->colorPickerView:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getInitialColor()I

    move-result v0

    const-string v1, "InitialColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->currentBitmap:Landroid/graphics/Bitmap;

    .line 114
    return-void
.end method

.method public final setOnColorPickedListener(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
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

    .line 69
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;->onColorPickedListener:Ljava/util/List;

    return-void
.end method
